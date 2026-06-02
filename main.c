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
  *        http://www.st.com/software_license_agreement_liberty_v2
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

/* Private defines -----------------------------------------------------------*/
unsigned int tick_ms = 0;
unsigned int cyfra0 = 2;
unsigned int cyfra1 = 0;
unsigned int cyfra2 = 0;
unsigned int cyfra3 = 0;
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
	//0x80 = 0b10000000	
	GPIO_WriteHigh(GPIOG,GPIO_PIN_0);
	GPIO_WriteLow(GPIOG,GPIO_PIN_0);

}
//-70% - "sekundnik", co 250ms zwiêksza wyœwietlana cyfrê od 1 do 9999
void main(void)
{
  segm_init();
	TIM4_TimeBaseInit(TIM4_PRESCALER_16,124); //Odliczanie 1ms
	TIM4_ClearFlag(TIM4_FLAG_UPDATE);
	TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
	TIM4_Cmd(ENABLE);
	enableInterrupts();
  while (1)
  {
      
      segm_latch(0, segm_dec[3]);
  }
}



#ifdef USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
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