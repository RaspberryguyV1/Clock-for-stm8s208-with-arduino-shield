/**
 ******************************************************************************
 * @file  Project/main.c 
 * @author MCD Application Team
 * @version V2.3.0
 * @date  16-June-2017
 * @brief  Main program body
  ******************************************************************************
 * @attention
 *
 * <h2><center>&copy; COPYRIGHT 2014 STMicroelectronics</center></h2>
 *
 * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
 * You may not use this file except in compliance with the License.
 * You may obtain a copy of the License at:
 *
 *    http://www.st.com/software_license_agreement_liberty_v2
 *
 * Unless required by applicable law or agreed to in writing, software 
 * distributed under the License is distributed on an "AS IS" BASIS, 
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 ******************************************************************************
 */ 

	
	
	//67676767676767676776
//69696969669696
//69696969669696


/* Includes ------------------------------------------------------------------*/
#include "stm8s.h"
#include <stdbool.h>

//Magda: UART
#define TX_SIZE 96
#define RX_SIZE 24//na GG:MM:SS DD.MM.RRRR
/* Private defines -----------------------------------------------------------*/
//Magda: zmienne do sterowania UART
//Koszyczki na dane uwu tablice 
int8_t rx_buff[RX_SIZE];//miejsce/bufor na znaki z terminala
uint8_t tx_buff[TX_SIZE];//bufor dla tekstu wyslanego przez mikro. do komp
uint8_t rx_comand[RX_SIZE];//tablica pomocnicza, przechowuje komede na czas jej roszyfrowania
uint8_t tx_wr;//Wska nik zapisu do bufora nadawczego (gdzie dopisa now liter do wys ania)
uint8_t tx_rd;//Wska nik odczytu z bufora nadawczego (kt r liter uk ad UART ju wys a )
uint8_t rx_wr;// Wska nik zapisu bufora odbiorczego (do ktorego bufora w o y kolejny odebrany znak)
volatile uint8_t CarRet = 0; // Informacja o odebraniu znaku '\r' (Enter)
uint8_t ind;//Zmienna pomocnicza (indeks) u ywana w p tlach do czyszczenia lub kopiowania tablic
// Magda: Flaga zegara - na starcie false (zegar stoi, dop ki UART nie wy le czasu)
volatile bool zegar_zyje = false;

volatile unsigned int tick_ms = 0;
unsigned int month[12] = {31,28,31,30,31,30,31,31,30,31,30,31}; //month[0] to Stycze , month[1] to Luty itp.
unsigned int day = 0;
int days[4] = {0,0,0,0};
unsigned int hour = 0;
int hours[4] = {0,0,0,0};
unsigned int minute = 0;
int minutes[4] = {0,0,0,0};
unsigned int second = 1;
int seconds[4] = {0,0,0,0};
unsigned int current_month = 0;
int months[4] = {0,0,0,0};
unsigned int year = 0;
unsigned int cyfra0 = 0;//cyfry wyswietlane na wyswietlaczu
unsigned int cyfra1 = 0;
unsigned int cyfra2 = 0;
unsigned int cyfra3 = 0;
unsigned int clock_state = 0;
int intigers[4] = {0,0,0,0}; //Wpisujecie ta liste jako drugi element funkcji convertNumber.
// Tymek:
uint16_t period = 999; //do bazera (okres)
uint16_t time = 499; //do bazera
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/
char segm_dec[10] = 
{
 0b00000011, 0b10011111, 
 0b00100101, 0b00001101,
 0b10011001, 0b01001001,
 0b01000001, 0b00011111,
 0b00000001, 0b00001001,
};
char segm_val[4];
char segm_pos;

void segm_init(void)
{
	GPIO_Init(GPIOD,GPIO_PIN_3,GPIO_MODE_OUT_PP_LOW_FAST);	//SDI
	GPIO_Init(GPIOC,GPIO_PIN_3,GPIO_MODE_OUT_PP_LOW_FAST);	//SFTCLK
	GPIO_Init(GPIOG,GPIO_PIN_0,GPIO_MODE_OUT_PP_LOW_FAST);	//LCHCLK
}

void segm_shift(char shift)
{
 char i;

 for (i = 0; i < 8; ++i)
 {			
   if (shift & 1)
    GPIO_WriteHigh(GPIOD,GPIO_PIN_3); //SDI=1
   else
    GPIO_WriteLow(GPIOD,GPIO_PIN_3); //SDI=0
	  GPIO_WriteHigh(GPIOC,GPIO_PIN_3);
	  GPIO_WriteLow(GPIOC,GPIO_PIN_3);

			
  shift >>= 1;
 }
}

void segm_latch(char pos, char val)
{	
 segm_shift(val);
 segm_shift(0x80 >> pos);
	GPIO_WriteHigh(GPIOG,GPIO_PIN_0);
	GPIO_WriteLow(GPIOG,GPIO_PIN_0);

}
//Hubert
//funkcje pomocnicze
//Funkcja do konwersji liczb np. 113 na elementy w tablicy np. intigers = {0 , 1, 1 ,3}
void convertNumber(int number, int numbersArray[]){
	if(number >9999){
		number = 9999;
	}	
	numbersArray[0] = (number / 1000)%10;
	numbersArray[1] = (number / 100)%10;
	numbersArray[2] = (number / 10)%10;
	numbersArray[3] = number%10;

}
//Funkcja do odswiezania ekranu za pomoca pobranych wartoci z tablicy intigers!!!
void refreshSegm(void){//odswierza ekran 
	segm_latch(0, segm_dec[intigers[0]]);
	segm_latch(1, segm_dec[intigers[1]]);
	segm_latch(2, segm_dec[intigers[2]]);
	segm_latch(3, segm_dec[intigers[3]]);
}
//Magda: 
//Funkcje podwalone od Profesora Jerzaka ;3
//Funkcja od dodawania znakow do nadania
void tx_put(uint8_t c)//Funkcja dodaje pojedynczy znak do bufora nadawczego
{
 tx_buff[tx_wr] = c;// Zapisz znak do bufora na pozycj wskazywan przez tx_wr
 if (++tx_wr >= TX_SIZE) tx_wr = 0;// Zwi ksz indeks zapisu; je li osi gnie koniec bufora, wr  na 0
 UART1_ITConfig(UART1_IT_TXE, ENABLE); // W czenie przerwa nadajnika
}
//Funkcja od przeslania przez kabel
uint8_t tx_get(void)// Funkcja pobiera kolejny znak z bufora nadawczego w celu jego wys ania przez kabel
{
 uint8_t c = tx_buff[tx_rd];// Odczytaj znak z bufora z pozycji wskazywanej przez tx_rd
 if (++tx_rd >= TX_SIZE) tx_rd = 0;
 return c;// Zwr  pobrany znak
}
//Funkcja od sprawdzania czy cos czeka na wyslanie
uint8_t tx_cnt(void)
{
 if (tx_wr != tx_rd)// Zwr  1, je li indeks zapisu r ni si od odczytu (s znaki w buforze)
  return 1;
 else
  return 0;// Zwr  0, je li indeksy s r wne (bufor jest pusty)
}
//Funkcja od zebrania informacji od uzytkownika i do wlozenia jej w odpowiedznie miejsce do przechowania
void rx_put(char c)// Zapisz odebrany znak do bufora na pozycj rx_wr
{
 rx_buff[rx_wr] = c;// Zapisz odebrany znak do bufora na pozycj co poda rx_wr
 if (++rx_wr >= RX_SIZE) rx_wr = 0;// Zwi ksz indeks zapisu; w przypadku przepe nienia wr  na pocz tek
 if (c == 13) // Kod ASCII 13 to ENTER (\r)
 {
  CarRet = 1;
  UART1_ITConfig(UART1_IT_RXNE_OR, DISABLE); // Blokada odbioru na czas dekodowania
 }
}
//funkcja do wysylania tekstu: mikro potrafi gadac do kompa
void send_string(const char* s)//to co wpiszemy rozbija na pojedyncza literke i wsadza do tx_put
{
 while (*s) tx_put(*s++);
}
//.....................................
//Magda: fukcja co bierze z terminala co wpisalismy i sorktu i dekoduje z ascii/ zajeba am to od germina bo chuj wie jak to zrobic T^T
void dekoduj_czas(void)
{
  // Wyci gamy cyfry prosto z bufora, poprawiaj c ko c wk  o przesuni cie
  hour          = (rx_buff[0]  - '0') * 10 + (rx_buff[1]  - '0');
  minute        = (rx_buff[3]  - '0') * 10 + (rx_buff[4]  - '0');
  second        = (rx_buff[6]  - '0') * 10 + (rx_buff[7]  - '0');
  day           = (rx_buff[9]  - '0') * 10 + (rx_buff[10] - '0');
  // Przesuni te o 2 pozycje w prawo,  eby omin    mieci z terminala:
  current_month = (rx_buff[12] - '0') * 10 + (rx_buff[13] - '0');
  // Rok sk adamy z pozycji 17, 18, 19, 20
		year = (rx_buff[15] - '0') * 1000 + 
           (rx_buff[16] - '0') * 100 + 
           (rx_buff[17] - '0') * 10 + 
           (rx_buff[18] - '0');

  zegar_zyje = true;
  send_string("Zegarek POWSTAL\r\n");
}
// Tymek
// funkcja do inicjalizacji bazera
void TIM2_Config(void)
{
 /* Time base configuration */
 TIM2_TimeBaseInit(TIM2_PRESCALER_2, period); //Konfiruacja podstawy czasu, zmienna period okresla okres sygna u PWM

 /* PWM1 Mode configuration: Channel1 */ 
 TIM2_OC1Init(TIM2_OCMODE_PWM1, TIM2_OUTPUTSTATE_ENABLE,time, TIM2_OCPOLARITY_HIGH); //Konfiguracja PWM, zmienna time okresla szerokosc impulsu
 TIM2_OC1PreloadConfig(ENABLE);

 TIM2_ARRPreloadConfig(ENABLE);

 /* TIM2 enable counter */
 TIM2_Cmd(ENABLE);
}

void main(void)
{
 segm_init();
	//Konfig Uart z komunikatem:
	GPIO_Init(GPIOD, GPIO_PIN_5, GPIO_MODE_OUT_PP_HIGH_FAST); // PD5 TX (Nadajnik)
  GPIO_Init(GPIOD, GPIO_PIN_6, GPIO_MODE_IN_PU_NO_IT);   // PD6 RX (Odbiornik)
	UART1_Init((uint32_t)9600, UART1_WORDLENGTH_8D, UART1_STOPBITS_1, UART1_PARITY_NO, UART1_SYNCMODE_CLOCK_DISABLE, UART1_MODE_TXRX_ENABLE);
  UART1_ITConfig(UART1_IT_RXNE_OR, ENABLE);
 // Config bazera:
 TIM2_Config();
  GPIO_Init(GPIOC,GPIO_PIN_1,GPIO_MODE_OUT_PP_LOW_FAST);//Konfiguracja GPIO buzzera
	GPIO_WriteHigh(GPIOC, GPIO_PIN_1); //Wylaczenie buzzera
	send_string("Zegarek nie zyje. Ustaw aktualny czas i date (GG:MM:SS DD.MM.RRRR) i kliknij Enter:\r\n");
	//...........................................
	TIM4_TimeBaseInit(TIM4_PRESCALER_16,124); //Odliczanie 1ms
	TIM4_ClearFlag(TIM4_FLAG_UPDATE);
	TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
	TIM4_Cmd(ENABLE);
	enableInterrupts();
 while (1)//Hubert: liczenie dni
 {

  if (CarRet == 1)//Po enterze ON ZYJE MUHAHAHAHAHA
   {
     dekoduj_czas(); // Wywo ujemy nasze dekodowanie
     CarRet = 0;   // Zerujemy flag Entera
     UART1_ITConfig(UART1_IT_RXNE_OR, ENABLE); // Odblokowujem		y UART do dalszego s uchania
   }
  // sprawdzamy czy jest polnoc
  if ((hour == 0 || hour == 24) && (minute == 0 || minute == 60) && (second ==00 || second == 60)) {
	  if(GPIO_ReadInputPin(GPIOD,GPIO_PIN_4) == RESET) { //Jesli niski stan PWM
	    GPIO_WriteHigh(GPIOC, GPIO_PIN_1); //wylacz buzzer
   }
	  else {
	   GPIO_WriteLow(GPIOC, GPIO_PIN_1); //wlacz buzzer
	  }
	}
	
	switch(clock_state){
		case 1:
			intigers[2] = seconds[2];
			intigers[3] = seconds[3];
			intigers[0] = 0;
			intigers[1] = 0;
			break;
		case 2:
			intigers[2] = days[2];
			intigers[3] = days[3];
			intigers[0] = months[2];
			intigers[1] = months[3];
			break;
		case 0:
			intigers[2] = minutes[2];
			intigers[3] = minutes[3];
			intigers[0] = hours[2];
			intigers[1] = hours[3];
			break;
		
	}
	refreshSegm();
		if(tick_ms >= 1000){
			tick_ms = 0;
			second++;
			convertNumber(second,seconds);
			convertNumber(minute,minutes);
			convertNumber(hour, hours);
			convertNumber(day, days);
			convertNumber(current_month, months);
			if(second%3 == 0){
				clock_state = (clock_state+1)%3;
			}
			if(second >=60){
				second = 0;
				minute++;
				
				if(minute >= 60){
					minute = 0;
					hour++;
					
					if(hour >= 24){
						day++;
						hour = 0;
						if(day > month[current_month-1]){
							current_month++;
							day = 1;
							if(current_month >=13){
							current_month = 1;
							}
						}
					}
				}
			}
		}
 }
}



#ifdef USE_FULL_ASSERT

/**
 * @brief Reports the name of the source file and the source line number
 *  where the assert_param error has occurred.
 * @param file: pointer to the source file name
 * @param line: assert_param error line source number
 * @retval : None
 */
void assert_failed(u8* file, u32 line)
{ 
 /* User can add his own implementation to report the file name and line number,
   ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

 /* Infinite loop */
 while (1)
 {
 }
}
#endif


/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
