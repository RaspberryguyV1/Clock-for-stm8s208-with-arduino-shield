/**
 ******************************************************************************
 * @file    Project/main.c 
 * @author  MCD Application Team
 * @version V2.3.0
 * @date    16-June-2017
 * @brief   Main program body
 ******************************************************************************
 * @attention
 *
 * <h2><center>&copy; COPYRIGHT 2014 STMicroelectronics</center></h2>
 *
 * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
 * You may not use this file except in compliance with the License.
 * You may obtain a copy of the License at:
 *
 * http://www.st.com/software_license_agreement_liberty_v2
 *
 * Unless required by applicable law or agreed to in writing, software 
 * distributed under the License is distributed on an "AS IS" BASIS, 
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 ******************************************************************************
 */ 

/* Includes ------------------------------------------------------------------*/
#include "stm8s.h"
#include <stdbool.h>//biblioteka dodajaca bool

//Magda: UART
#define TX_SIZE 96
#define RX_SIZE 24//na GG:MM:SS DD.MM.RRRR
/* Private defines -----------------------------------------------------------*/
//Magda: zmienne do sterowania UART
int8_t rx_buff[RX_SIZE];//miejsce/bufor na znaki z terminala
uint8_t tx_buff[TX_SIZE];//bufor dla tekstu wyslanego przez mikro. do komp/ dla wipisywania b³êdów
uint8_t rx_comand[RX_SIZE];//tablica pomocnicza, przechowuje komede na czas jej roszyfrowania
uint8_t tx_wr;//Wskaznik zapisu do bufora nadawczego (gdzie dopisa nowa liter do wyslania)
uint8_t tx_rd;//Wskaznik odczytu z bufora nadawczego (ktora liter uklad UART juz wyslania )
uint8_t rx_wr;// Wskaznik zapisu bufora odbiorczego (w ktor¹ pozycje tabeli wlozyc kolejny znak)
volatile uint8_t CarRet = 0; // Flaga Entera
uint8_t ind;//Zmienna pomocnicza (indeks) uzywana w petlach do czyszczenia bufora odbiorczego
// Magda: Flaga zegara -na starcie false (zegar stoi, dopoki UART nie dostanie poprawnego czasu)
volatile bool zegar_zyje = false;
volatile unsigned int manual_clock_state = 0;
volatile unsigned int tick_ms = 0;
volatile unsigned int play = 0;
volatile int note_len = 0;
volatile unsigned int period = 0;
unsigned int month[12] = {31,28,31,30,31,30,31,31,30,31,30,31}; //month[0] to Stycze , month[1] to Luty itp.
unsigned int day = 0;
int days[4] = {0,0,0,0};
unsigned int hour = 0;
int hours[4] = {0,0,0,0};
unsigned int minute = 0;
int minutes[4] = {0,0,0,0};
volatile unsigned int second = 1;
int seconds[4] = {0,0,0,0};
unsigned int current_month = 0;
int months[4] = {0,0,0,0};
unsigned int year = 0;
unsigned int cyfra0 = 0;//cyfry wyswietlane na wyswietlaczu
unsigned int cyfra1 = 0;
unsigned int cyfra2 = 0;
unsigned int cyfra3 = 0;
unsigned int clock_state = 0;
unsigned int krok_diod = 0;//Magda: Licznik krokow sekwencji diod, steruje zmianom diud.
unsigned int current_display_state;
int intigers[4] = {0,0,0,0}; //Wpisujecie ta liste jako drugi element funkcji convertNumber.

// BPM Barki Krawczyka: 74
#define bpm 74

#define CALA(bpm)        (240000 / (bpm))
#define POLNUTA(bpm)     (120000 / (bpm))
#define CWIERCNUTA(bpm)  (60000 / (bpm))
#define OSEMKA(bpm)      (30000 / (bpm))
#define SZESNASTKA(bpm)  (15000 / (bpm))

#define C CALA(bpm)
#define P POLNUTA(bpm)
#define CW CWIERCNUTA(bpm)
#define O OSEMKA(bpm)
#define SZ SZESNASTKA(bpm)

/* ================= OCTAVE 3 ================= */

#define C3   7645
#define CS3  7215
#define D3   6810
#define DS3  6428
#define E3   6067
#define F3   5727
#define FS3  5405
#define G3   5102
#define GS3  4816
#define A3   4545
#define AS3  4290
#define B3   4050

/* ================= OCTAVE 4 ================= */

#define C4   3822
#define CS4  3608
#define D4   3405
#define DS4  3214
#define E4   3034
#define F4   2863
#define FS4  2703
#define G4   2551
#define GS4  2408
#define A4   2273
#define AS4  2145
#define B4   2025

/* ================= OCTAVE 5 ================= */

#define C5   1911
#define CS5  1804
#define D5   1703
#define DS5  1607
#define E5   1517
#define F5   1432
#define FS5  1351
#define G5   1276
#define GS5  1204
#define A5   1136
#define AS5  1073
#define B5   1012

int note_index = 0;
int note_array[68] = {C4, D4, E4, F4, E4, D4, C4, C4, D4, E4, F4, F4, F4, F4, F4, E4, D4, D4, G3, C4, D4, E4, E4, E4, F4, D4, C4, C4, C4, A4, A4, A4, A4, B4, C5, A4, G4, G4, F4, E4, F4, F4, F4, G4, A4, G4, F4, E4, E4, C4, C4, A4, A4, A4, B4, C5, A4, G4, F4, E4, F4, F4, D4, E4, F4, E4, D4, C4};
int note_len_array[68] = {P, O, O, O, O, O, CW + O, P, CW, O, CW + O, P + O, O, O, O, O, CW + O, P + CW, O, CW, O, CW + O, CW + O, O, CW, O, CW + O, P, CW + O, CW + O, CW + O, P, O, O, O, O, CW + O, P + O, CW, O, CW + O, CW + O, O, O, O, O, O, CW + O, P, CW, O, CW + O, P, O, O, O, O, P, CW, O, CW + O, P, O, O, O, O, O, C};
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
void convertNumber(int number, int numbersArray[]){
	if(number >9999){
		number = 9999;
	}	
	numbersArray[0] = (number / 1000)%10;
	numbersArray[1] = (number / 100)%10;
	numbersArray[2] = (number / 10)%10;
	numbersArray[3] = number%10;

}
void refreshSegm(void){//odswierza ekran 
	segm_latch(0, segm_dec[intigers[0]]);
	segm_latch(1, segm_dec[intigers[1]]);
	segm_latch(2, segm_dec[intigers[2]]);
	segm_latch(3, segm_dec[intigers[3]]);
}
//Magda: Funkcja wklada jeden znak do bufora nadawczego i odpala przerwanie UART
void tx_put(uint8_t c)
{
 tx_buff[tx_wr] = c;// Zapisz znak do bufora na pozycji wskaznika tx_wr
 if (++tx_wr >= TX_SIZE) tx_wr = 0;// Przesun wskaznik zapisu. Jesli koniec tablicy, wroc na poczatek
 UART1_ITConfig(UART1_IT_TXE, ENABLE);//Wlacz przerwanie od pustego rejestru nadawczego (rozpocznij wysylanie)  
}
uint8_t tx_get(void)//unkcja pobiera jeden znak z bufora nadawczego (uzywana w przerwaniu)
{
 uint8_t c = tx_buff[tx_rd];// Pobierz znak z bufora z pozycji wskaznika tx_rd
 if (++tx_rd >= TX_SIZE) tx_rd = 0;// Przesun wskaznik odczytu. Jesli koniec tablicy, wroc na poczatek
 return c;// Zwroc pobrany znak
}
//Magda: Funkcja sprawdza, czy w buforze nadawczym sa jeszcze jakies znaki do wyslania
uint8_t tx_cnt(void)
{
 if (tx_wr != tx_rd)// Jesli wskaznik zapisu jest rozny od wskaznika odczytu, to znaczy ze sa dane
  return 1;
 else// Jesli wskazniki sa równe, bufor jest pusty
  return 0;
}
//Funkcja odbiera pojedynczy znak z terminala i wklada go do bufora odbiorczego
void rx_put(char c)
{
    if (c == 13) // Enter
    {
        CarRet = 1;// Wykryto Enter, ustaw flage na 1 (pêtla glowna to zauwazy)
    }
    else if (c >= ' ' && rx_wr < RX_SIZE)// Jesli znak to zwykla litera/cyfra i jest miejsce w buforze 
    {
        rx_buff[rx_wr] = c;// Zapisz znak do bufora na pozycji rx_wr
        if (++rx_wr >= RX_SIZE) rx_wr = 0;// Przesun wskaznik zapisu. Jesli koniec tablicy, wroc na poczatek
    }
}
// Magda: Funkcja pozwala wyslac caly napis (ciag znakow) do komputera na raz
void send_string(const char* s)
{
 while (*s) tx_put(*s++);// Dopoki nie trafimy na koniec napisu, wysylaj znak po znaku przez tx_put
}

// Magda: Fukcja dekoduj¹ca z walidacj¹ zakresów
void dekoduj_czas(void)
{
    // 1. Dekodujemy znaki ze sztywnych pozycji bufora
    hour=(rx_buff[0]  - '0') * 10 + (rx_buff[1]  - '0');
    minute=(rx_buff[3]  - '0') * 10 + (rx_buff[4]  - '0');
    second=(rx_buff[6]  - '0') * 10 + (rx_buff[7]  - '0');
    day=(rx_buff[9]  - '0') * 10 + (rx_buff[10] - '0');
    current_month=(rx_buff[12] - '0') * 10 + (rx_buff[13] - '0');
    year=(rx_buff[15] - '0') * 1000 + (rx_buff[16] - '0') * 100 + (rx_buff[17] - '0') * 10 + (rx_buff[18] - '0');

    // 2. Jesli zdekodowane liczby przekraczaja normalne zakresy ( smieci z RAMu)zeruje zmienne)
    // lub liczby przekraczaj¹ normalne zakresy, czyœcimy je, ¿eby nie psuæ okna Watch
    if (hour > 23 || minute > 59 || second > 59 || current_month < 1 || current_month > 12 || year > 3000) {
        hour = 0;
        minute = 0;
        second = 0;
        day = 0;
        current_month = 0;
        year = 0;
        send_string("BLAD: Zly format danych. Wpisz ponownie.\r\n");
        return;
    }

    // 3. Sprawdzenie dni przy u¿yciu tablicy month
    if (day < 1 || day > month[current_month - 1]) {//Bierze dane o ilosci dni w miesiacu, jesli sie nie zgada, zeruje
        hour = 0; minute = 0; second = 0; day = 0; current_month = 0; year = 0; //reset
        send_string("BLAD: Ten miesiac nie ma tylu dni\r\n");
    } 
    // 4. Jeœli format i zakresy s¹ idealne - zegar rusza
    else {
        zegar_zyje = true;// Zezwolenie na start sekundnika i sekwencji diod
        send_string("Zegarek Zyje!\r\n");
    }
}

// Tymek
void TIM2_Config(void) {
	TIM2_TimeBaseInit(TIM2_PRESCALER_2, 3822);
	TIM2_OC1Init(TIM2_OCMODE_PWM1, TIM2_OUTPUTSTATE_ENABLE, 3822 / 35, TIM2_OCPOLARITY_HIGH);
	TIM2_OC1PreloadConfig(ENABLE);
	TIM2_ARRPreloadConfig(ENABLE);
	TIM2_Cmd(ENABLE);
}

void main(void)
{
 segm_init();
 
 // Magda: Konfiguracja pinów diod D1-D4 jako wyjœcia (Push-Pull, szybkie)
   GPIO_Init(GPIOC, GPIO_PIN_5, GPIO_MODE_OUT_PP_LOW_FAST); // D1
   GPIO_Init(GPIOC, GPIO_PIN_7, GPIO_MODE_OUT_PP_LOW_FAST); // D2
   GPIO_Init(GPIOC, GPIO_PIN_6, GPIO_MODE_OUT_PP_LOW_FAST); // D3
   GPIO_Init(GPIOE, GPIO_PIN_5, GPIO_MODE_OUT_PP_LOW_FAST); // D4
 
 //Konfig guzików
	GPIO_Init(GPIOB, GPIO_PIN_4, GPIO_MODE_IN_FL_IT); //S1
	GPIO_Init(GPIOB, GPIO_PIN_3, GPIO_MODE_IN_FL_IT); //S2
	
	EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOB, EXTI_SENSITIVITY_RISE_FALL);
	//Konfig Uart z komunikatem:
	GPIO_Init(GPIOD, GPIO_PIN_5, GPIO_MODE_OUT_PP_HIGH_FAST); // PD5 TX
  GPIO_Init(GPIOD, GPIO_PIN_6, GPIO_MODE_IN_PU_NO_IT);   // PD6 RX
	UART1_Init((uint32_t)9600, UART1_WORDLENGTH_8D, UART1_STOPBITS_1, UART1_PARITY_NO, UART1_SYNCMODE_CLOCK_DISABLE, UART1_MODE_TXRX_ENABLE);
  UART1_ITConfig(UART1_IT_RXNE_OR, ENABLE);
 // Config bazera:
  TIM2_Config();
  GPIO_Init(GPIOC,GPIO_PIN_1,GPIO_MODE_OUT_PP_LOW_FAST);
	GPIO_WriteHigh(GPIOC, GPIO_PIN_1); 
	send_string("Zegarek nie zyje. Ustaw aktualny czas i date (GG:MM:SS DD.MM.RRRR) i kliknij Enter:\r\n");
	//...........................................
	TIM4_TimeBaseInit(TIM4_PRESCALER_16,124); //Odliczanie 1ms
	TIM4_ClearFlag(TIM4_FLAG_UPDATE);
	TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
	TIM4_Cmd(ENABLE);
	enableInterrupts();
 while (1)
 {
  if (CarRet == 1)
   {
      dekoduj_czas(); 
			for(ind = 0; ind < RX_SIZE; ind++) //Czyszczenie calego bufora ze starych znakow, aby nie zafalszowac kolejnego wpisu
      { 
          rx_buff[ind] = 0; 
      }
		 rx_wr = 0;
      CarRet = 0;   
      UART1_ITConfig(UART1_IT_RXNE_OR, ENABLE); 
   }
	switch(current_display_state){
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
	if(tick_ms >= 1000 && zegar_zyje == true){
		tick_ms = 0;
		second++;
		
		//Magda: Ustawianie sekwencji diód
		if (krok_diod == 0) {       // Krok 1: Tylko D1 (Low = ON, High = OFF)
			GPIO_WriteLow(GPIOC, GPIO_PIN_5);
			GPIO_WriteHigh(GPIOC, GPIO_PIN_7);
			GPIO_WriteHigh(GPIOC, GPIO_PIN_6);
			GPIO_WriteHigh(GPIOE, GPIO_PIN_5);
		}
		else if (krok_diod == 1) {  // Krok 2: D1, D2
			GPIO_WriteLow(GPIOC, GPIO_PIN_5);
			GPIO_WriteLow(GPIOC, GPIO_PIN_7);
			GPIO_WriteHigh(GPIOC, GPIO_PIN_6);
			GPIO_WriteHigh(GPIOE, GPIO_PIN_5);
		}
		else if (krok_diod == 2) {  // Krok 3: D1, D2, D3
			GPIO_WriteLow(GPIOC, GPIO_PIN_5);
			GPIO_WriteLow(GPIOC, GPIO_PIN_7);
			GPIO_WriteLow(GPIOC, GPIO_PIN_6);
			GPIO_WriteHigh(GPIOE, GPIO_PIN_5);
		}
		else if (krok_diod == 3) {  // Krok 4: D1, D2, D3, D4 (Wszystkie œwiec¹)
			GPIO_WriteLow(GPIOC, GPIO_PIN_5);
			GPIO_WriteLow(GPIOC, GPIO_PIN_7);
			GPIO_WriteLow(GPIOC, GPIO_PIN_6);
			GPIO_WriteLow(GPIOE, GPIO_PIN_5);
		}
		else if (krok_diod == 4) {  // Krok 5: D2, D3, D4 (D1 zgaszona)
			GPIO_WriteHigh(GPIOC, GPIO_PIN_5);
			GPIO_WriteLow(GPIOC, GPIO_PIN_7);
			GPIO_WriteLow(GPIOC, GPIO_PIN_6);
			GPIO_WriteLow(GPIOE, GPIO_PIN_5);
		}
		else if (krok_diod == 5) {  // Krok 6: D3, D4
			GPIO_WriteHigh(GPIOC, GPIO_PIN_5);
			GPIO_WriteHigh(GPIOC, GPIO_PIN_7);
			GPIO_WriteLow(GPIOC, GPIO_PIN_6);
			GPIO_WriteLow(GPIOE, GPIO_PIN_5);
		}
		else if (krok_diod == 6) {  // Krok 7: Tylko D4
			GPIO_WriteHigh(GPIOC, GPIO_PIN_5);
			GPIO_WriteHigh(GPIOC, GPIO_PIN_7);
			GPIO_WriteHigh(GPIOC, GPIO_PIN_6);
			GPIO_WriteLow(GPIOE, GPIO_PIN_5);
		}
		
		// Magda: Zmiana kroku co sekundê i reset na 7 kroku
		krok_diod++;
		if (krok_diod >= 7) {
			krok_diod = 0;
		}

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
					play = 1;
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
	      if ((play == 1) && (note_len <= 0) && (note_index == 67)) {
		      play = 0;
		      TIM2_Cmd(DISABLE);
	      }
	      else if ((play == 1) && (note_len <= 0)) {
	        note_index++;
		      period = note_array[note_index];
		      note_len = note_len_array[note_index];
		      TIM2_SetAutoreload(period);
          TIM2_SetCompare1(period/35);
	      }
		convertNumber(second,seconds);
		convertNumber(minute,minutes);
		convertNumber(hour, hours);
		convertNumber(day, days);
		convertNumber(current_month, months);
	}
 }
}

#ifdef USE_FULL_ASSERT
void assert_failed(u8* file, u32 line)
{ 
 while (1)
 {
 }
}
#endif
