   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
   4                     ; Optimizer V4.5.6 - 18 Jul 2023
  51                     ; 61 INTERRUPT_HANDLER(NonHandledInterrupt, 25)
  51                     ; 62 {
  52                     .text:	section	.text,new
  53  0000               f_NonHandledInterrupt:
  57                     ; 66 }
  60  0000 80            	iret	
  82                     ; 74 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  82                     ; 75 {
  83                     .text:	section	.text,new
  84  0000               f_TRAP_IRQHandler:
  88                     ; 79 }
  91  0000 80            	iret	
 113                     ; 86 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
 113                     ; 87 
 113                     ; 88 {
 114                     .text:	section	.text,new
 115  0000               f_TLI_IRQHandler:
 119                     ; 92 }
 122  0000 80            	iret	
 144                     ; 99 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 144                     ; 100 {
 145                     .text:	section	.text,new
 146  0000               f_AWU_IRQHandler:
 150                     ; 104 }
 153  0000 80            	iret	
 175                     ; 111 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 175                     ; 112 {
 176                     .text:	section	.text,new
 177  0000               f_CLK_IRQHandler:
 181                     ; 116 }
 184  0000 80            	iret	
 207                     ; 123 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 207                     ; 124 {
 208                     .text:	section	.text,new
 209  0000               f_EXTI_PORTA_IRQHandler:
 213                     ; 128 }
 216  0000 80            	iret	
 241                     ; 136 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 241                     ; 137 {
 242                     .text:	section	.text,new
 243  0000               f_EXTI_PORTB_IRQHandler:
 245  0000 8a            	push	cc
 246  0001 84            	pop	a
 247  0002 a4bf          	and	a,#191
 248  0004 88            	push	a
 249  0005 86            	pop	cc
 250  0006 3b0002        	push	c_x+2
 251  0009 be00          	ldw	x,c_x
 252  000b 89            	pushw	x
 253  000c 3b0002        	push	c_y+2
 254  000f be00          	ldw	x,c_y
 255  0011 89            	pushw	x
 258                     ; 138   if (GPIO_ReadInputPin(GPIOB, GPIO_PIN_4) == RESET) 
 260  0012 4b10          	push	#16
 261  0014 ae5005        	ldw	x,#20485
 262  0017 cd0000        	call	_GPIO_ReadInputPin
 264  001a 5b01          	addw	sp,#1
 265  001c 4d            	tnz	a
 266  001d 2603          	jrne	L101
 267                     ; 140       manual_clock_state = 0; // S1 wciskany
 269  001f 5f            	clrw	x
 271  0020 2015          	jra	L301
 272  0022               L101:
 273                     ; 142   else if (GPIO_ReadInputPin(GPIOB, GPIO_PIN_3) == RESET) 
 275  0022 4b08          	push	#8
 276  0024 ae5005        	ldw	x,#20485
 277  0027 cd0000        	call	_GPIO_ReadInputPin
 279  002a 5b01          	addw	sp,#1
 280  002c 4d            	tnz	a
 281  002d 2605          	jrne	L501
 282                     ; 144       manual_clock_state = 2; // S2 wciskany
 284  002f ae0002        	ldw	x,#2
 286  0032 2003          	jra	L301
 287  0034               L501:
 288                     ; 148       manual_clock_state = 1; // Puszczone
 290  0034 ae0001        	ldw	x,#1
 291  0037               L301:
 292  0037 cf0000        	ldw	_manual_clock_state,x
 293                     ; 150 }
 296  003a 85            	popw	x
 297  003b bf00          	ldw	c_y,x
 298  003d 320002        	pop	c_y+2
 299  0040 85            	popw	x
 300  0041 bf00          	ldw	c_x,x
 301  0043 320002        	pop	c_x+2
 302  0046 80            	iret	
 325                     ; 157 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 325                     ; 158 {
 326                     .text:	section	.text,new
 327  0000               f_EXTI_PORTC_IRQHandler:
 331                     ; 162 }
 334  0000 80            	iret	
 357                     ; 169 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 357                     ; 170 {
 358                     .text:	section	.text,new
 359  0000               f_EXTI_PORTD_IRQHandler:
 363                     ; 174 }
 366  0000 80            	iret	
 389                     ; 181 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 389                     ; 182 {
 390                     .text:	section	.text,new
 391  0000               f_EXTI_PORTE_IRQHandler:
 395                     ; 186 }
 398  0000 80            	iret	
 420                     ; 208  INTERRUPT_HANDLER(CAN_RX_IRQHandler, 8)
 420                     ; 209  {
 421                     .text:	section	.text,new
 422  0000               f_CAN_RX_IRQHandler:
 426                     ; 213  }
 429  0000 80            	iret	
 451                     ; 220  INTERRUPT_HANDLER(CAN_TX_IRQHandler, 9)
 451                     ; 221  {
 452                     .text:	section	.text,new
 453  0000               f_CAN_TX_IRQHandler:
 457                     ; 225  }
 460  0000 80            	iret	
 482                     ; 233 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 482                     ; 234 {
 483                     .text:	section	.text,new
 484  0000               f_SPI_IRQHandler:
 488                     ; 238 }
 491  0000 80            	iret	
 514                     ; 245 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 514                     ; 246 {
 515                     .text:	section	.text,new
 516  0000               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 520                     ; 250 }
 523  0000 80            	iret	
 546                     ; 257 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 546                     ; 258 {
 547                     .text:	section	.text,new
 548  0000               f_TIM1_CAP_COM_IRQHandler:
 552                     ; 262 }
 555  0000 80            	iret	
 578                     ; 295  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 578                     ; 296  {
 579                     .text:	section	.text,new
 580  0000               f_TIM2_UPD_OVF_BRK_IRQHandler:
 584                     ; 300  }
 587  0000 80            	iret	
 610                     ; 307  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 610                     ; 308  {
 611                     .text:	section	.text,new
 612  0000               f_TIM2_CAP_COM_IRQHandler:
 616                     ; 312  }
 619  0000 80            	iret	
 642                     ; 322  INTERRUPT_HANDLER(TIM3_UPD_OVF_BRK_IRQHandler, 15)
 642                     ; 323  {
 643                     .text:	section	.text,new
 644  0000               f_TIM3_UPD_OVF_BRK_IRQHandler:
 648                     ; 327  }
 651  0000 80            	iret	
 674                     ; 334  INTERRUPT_HANDLER(TIM3_CAP_COM_IRQHandler, 16)
 674                     ; 335  {
 675                     .text:	section	.text,new
 676  0000               f_TIM3_CAP_COM_IRQHandler:
 680                     ; 339  }
 683  0000 80            	iret	
 711                     ; 349  INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
 711                     ; 350  {
 712                     .text:	section	.text,new
 713  0000               f_UART1_TX_IRQHandler:
 715  0000 8a            	push	cc
 716  0001 84            	pop	a
 717  0002 a4bf          	and	a,#191
 718  0004 88            	push	a
 719  0005 86            	pop	cc
 720  0006 3b0002        	push	c_x+2
 721  0009 be00          	ldw	x,c_x
 722  000b 89            	pushw	x
 723  000c 3b0002        	push	c_y+2
 724  000f be00          	ldw	x,c_y
 725  0011 89            	pushw	x
 728                     ; 352      if (UART1_GetITStatus(UART1_IT_TXE) != RESET)
 730  0012 ae0277        	ldw	x,#631
 731  0015 cd0000        	call	_UART1_GetITStatus
 733  0018 4d            	tnz	a
 734  0019 2717          	jreq	L162
 735                     ; 354          if (tx_cnt())
 737  001b cd0000        	call	_tx_cnt
 739  001e 4d            	tnz	a
 740  001f 2708          	jreq	L362
 741                     ; 356              UART1_SendData8(tx_get());
 743  0021 cd0000        	call	_tx_get
 745  0024 cd0000        	call	_UART1_SendData8
 748  0027 2009          	jra	L162
 749  0029               L362:
 750                     ; 360              UART1_ITConfig(UART1_IT_TXE, DISABLE);
 752  0029 4b00          	push	#0
 753  002b ae0277        	ldw	x,#631
 754  002e cd0000        	call	_UART1_ITConfig
 756  0031 84            	pop	a
 757  0032               L162:
 758                     ; 363  }
 761  0032 85            	popw	x
 762  0033 bf00          	ldw	c_y,x
 763  0035 320002        	pop	c_y+2
 764  0038 85            	popw	x
 765  0039 bf00          	ldw	c_x,x
 766  003b 320002        	pop	c_x+2
 767  003e 80            	iret	
 794                     ; 370  INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
 794                     ; 371  {
 795                     .text:	section	.text,new
 796  0000               f_UART1_RX_IRQHandler:
 798  0000 8a            	push	cc
 799  0001 84            	pop	a
 800  0002 a4bf          	and	a,#191
 801  0004 88            	push	a
 802  0005 86            	pop	cc
 803  0006 3b0002        	push	c_x+2
 804  0009 be00          	ldw	x,c_x
 805  000b 89            	pushw	x
 806  000c 3b0002        	push	c_y+2
 807  000f be00          	ldw	x,c_y
 808  0011 89            	pushw	x
 811                     ; 373      if (UART1_GetITStatus(UART1_IT_RXNE) != RESET)
 813  0012 ae0255        	ldw	x,#597
 814  0015 cd0000        	call	_UART1_GetITStatus
 816  0018 4d            	tnz	a
 817  0019 270c          	jreq	L772
 818                     ; 375          rx_put(UART1_ReceiveData8());
 820  001b cd0000        	call	_UART1_ReceiveData8
 822  001e cd0000        	call	_rx_put
 824                     ; 376          UART1_ClearITPendingBit(UART1_IT_RXNE);
 826  0021 ae0255        	ldw	x,#597
 827  0024 cd0000        	call	_UART1_ClearITPendingBit
 829  0027               L772:
 830                     ; 380      if (UART1_GetITStatus(UART1_IT_OR) != RESET)
 832  0027 ae0235        	ldw	x,#565
 833  002a cd0000        	call	_UART1_GetITStatus
 835  002d 4d            	tnz	a
 836  002e 2709          	jreq	L103
 837                     ; 382          UART1_ReceiveData8(); 
 839  0030 cd0000        	call	_UART1_ReceiveData8
 841                     ; 383          UART1_ClearITPendingBit(UART1_IT_OR);
 843  0033 ae0235        	ldw	x,#565
 844  0036 cd0000        	call	_UART1_ClearITPendingBit
 846  0039               L103:
 847                     ; 385  }
 850  0039 85            	popw	x
 851  003a bf00          	ldw	c_y,x
 852  003c 320002        	pop	c_y+2
 853  003f 85            	popw	x
 854  0040 bf00          	ldw	c_x,x
 855  0042 320002        	pop	c_x+2
 856  0045 80            	iret	
 878                     ; 419 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 878                     ; 420 {
 879                     .text:	section	.text,new
 880  0000               f_I2C_IRQHandler:
 884                     ; 424 }
 887  0000 80            	iret	
 910                     ; 458  INTERRUPT_HANDLER(UART3_TX_IRQHandler, 20)
 910                     ; 459  {
 911                     .text:	section	.text,new
 912  0000               f_UART3_TX_IRQHandler:
 916                     ; 463  }
 919  0000 80            	iret	
 942                     ; 470  INTERRUPT_HANDLER(UART3_RX_IRQHandler, 21)
 942                     ; 471  {
 943                     .text:	section	.text,new
 944  0000               f_UART3_RX_IRQHandler:
 948                     ; 475  }
 951  0000 80            	iret	
 973                     ; 484  INTERRUPT_HANDLER(ADC2_IRQHandler, 22)
 973                     ; 485  {
 974                     .text:	section	.text,new
 975  0000               f_ADC2_IRQHandler:
 979                     ; 489  }
 982  0000 80            	iret	
1007                     ; 524  INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
1007                     ; 525  {
1008                     .text:	section	.text,new
1009  0000               f_TIM4_UPD_OVF_IRQHandler:
1011  0000 8a            	push	cc
1012  0001 84            	pop	a
1013  0002 a4bf          	and	a,#191
1014  0004 88            	push	a
1015  0005 86            	pop	cc
1016  0006 3b0002        	push	c_x+2
1017  0009 be00          	ldw	x,c_x
1018  000b 89            	pushw	x
1019  000c 3b0002        	push	c_y+2
1020  000f be00          	ldw	x,c_y
1021  0011 89            	pushw	x
1024                     ; 526     tick_ms++;
1026  0012 ce0000        	ldw	x,_tick_ms
1027  0015 5c            	incw	x
1028  0016 cf0000        	ldw	_tick_ms,x
1029                     ; 527     TIM4_ClearITPendingBit(TIM4_IT_UPDATE);
1031  0019 a601          	ld	a,#1
1032  001b cd0000        	call	_TIM4_ClearITPendingBit
1034                     ; 528  }
1037  001e 85            	popw	x
1038  001f bf00          	ldw	c_y,x
1039  0021 320002        	pop	c_y+2
1040  0024 85            	popw	x
1041  0025 bf00          	ldw	c_x,x
1042  0027 320002        	pop	c_x+2
1043  002a 80            	iret	
1066                     ; 536 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
1066                     ; 537 {
1067                     .text:	section	.text,new
1068  0000               f_EEPROM_EEC_IRQHandler:
1072                     ; 541 }
1075  0000 80            	iret	
1087                     	xref	_tx_cnt
1088                     	xref	_tx_get
1089                     	xref	_rx_put
1090                     	xref	_manual_clock_state
1091                     	xref	_tick_ms
1092                     	xdef	f_EEPROM_EEC_IRQHandler
1093                     	xdef	f_TIM4_UPD_OVF_IRQHandler
1094                     	xdef	f_ADC2_IRQHandler
1095                     	xdef	f_UART3_TX_IRQHandler
1096                     	xdef	f_UART3_RX_IRQHandler
1097                     	xdef	f_I2C_IRQHandler
1098                     	xdef	f_UART1_RX_IRQHandler
1099                     	xdef	f_UART1_TX_IRQHandler
1100                     	xdef	f_TIM3_CAP_COM_IRQHandler
1101                     	xdef	f_TIM3_UPD_OVF_BRK_IRQHandler
1102                     	xdef	f_TIM2_CAP_COM_IRQHandler
1103                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
1104                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
1105                     	xdef	f_TIM1_CAP_COM_IRQHandler
1106                     	xdef	f_SPI_IRQHandler
1107                     	xdef	f_CAN_TX_IRQHandler
1108                     	xdef	f_CAN_RX_IRQHandler
1109                     	xdef	f_EXTI_PORTE_IRQHandler
1110                     	xdef	f_EXTI_PORTD_IRQHandler
1111                     	xdef	f_EXTI_PORTC_IRQHandler
1112                     	xdef	f_EXTI_PORTB_IRQHandler
1113                     	xdef	f_EXTI_PORTA_IRQHandler
1114                     	xdef	f_CLK_IRQHandler
1115                     	xdef	f_AWU_IRQHandler
1116                     	xdef	f_TLI_IRQHandler
1117                     	xdef	f_TRAP_IRQHandler
1118                     	xdef	f_NonHandledInterrupt
1119                     	xref	_UART1_ClearITPendingBit
1120                     	xref	_UART1_GetITStatus
1121                     	xref	_UART1_SendData8
1122                     	xref	_UART1_ReceiveData8
1123                     	xref	_UART1_ITConfig
1124                     	xref	_TIM4_ClearITPendingBit
1125                     	xref	_GPIO_ReadInputPin
1126                     	xref.b	c_x
1127                     	xref.b	c_y
1146                     	end
