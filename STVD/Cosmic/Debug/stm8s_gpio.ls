   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
   4                     ; Optimizer V4.5.6 - 18 Jul 2023
 116                     ; 53 void GPIO_DeInit(GPIO_TypeDef* GPIOx)
 116                     ; 54 {
 118                     .text:	section	.text,new
 119  0000               _GPIO_DeInit:
 123                     ; 55   GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
 125  0000 7f            	clr	(x)
 126                     ; 56   GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
 128  0001 6f02          	clr	(2,x)
 129                     ; 57   GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
 131  0003 6f03          	clr	(3,x)
 132                     ; 58   GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
 134  0005 6f04          	clr	(4,x)
 135                     ; 59 }
 138  0007 81            	ret	
 379                     ; 71 void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
 379                     ; 72 {
 380                     .text:	section	.text,new
 381  0000               _GPIO_Init:
 383  0000 89            	pushw	x
 384       00000000      OFST:	set	0
 387                     ; 77   assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
 389  0001 7b06          	ld	a,(OFST+6,sp)
 390  0003 2731          	jreq	L41
 391  0005 a140          	cp	a,#64
 392  0007 272d          	jreq	L41
 393  0009 a120          	cp	a,#32
 394  000b 2729          	jreq	L41
 395  000d a160          	cp	a,#96
 396  000f 2725          	jreq	L41
 397  0011 a1a0          	cp	a,#160
 398  0013 2721          	jreq	L41
 399  0015 a1e0          	cp	a,#224
 400  0017 271d          	jreq	L41
 401  0019 a180          	cp	a,#128
 402  001b 2719          	jreq	L41
 403  001d a1c0          	cp	a,#192
 404  001f 2715          	jreq	L41
 405  0021 a1b0          	cp	a,#176
 406  0023 2711          	jreq	L41
 407  0025 a1f0          	cp	a,#240
 408  0027 270d          	jreq	L41
 409  0029 a190          	cp	a,#144
 410  002b 2709          	jreq	L41
 411  002d a1d0          	cp	a,#208
 412  002f 2705          	jreq	L41
 413  0031 ae004d        	ldw	x,#77
 414  0034 ad5d          	call	LC001
 415  0036               L41:
 416                     ; 78   assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
 418  0036 7b05          	ld	a,(OFST+5,sp)
 419  0038 2607          	jrne	L22
 420  003a ae004e        	ldw	x,#78
 421  003d ad54          	call	LC001
 422  003f 7b05          	ld	a,(OFST+5,sp)
 423  0041               L22:
 424                     ; 81   GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 426  0041 1e01          	ldw	x,(OFST+1,sp)
 427  0043 43            	cpl	a
 428  0044 e404          	and	a,(4,x)
 429  0046 e704          	ld	(4,x),a
 430                     ; 87   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
 432  0048 7b06          	ld	a,(OFST+6,sp)
 433  004a 2a14          	jrpl	L102
 434                     ; 89     if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
 436  004c a510          	bcp	a,#16
 437  004e 2705          	jreq	L302
 438                     ; 91       GPIOx->ODR |= (uint8_t)GPIO_Pin;
 440  0050 f6            	ld	a,(x)
 441  0051 1a05          	or	a,(OFST+5,sp)
 443  0053 2004          	jra	L502
 444  0055               L302:
 445                     ; 95       GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
 447  0055 7b05          	ld	a,(OFST+5,sp)
 448  0057 43            	cpl	a
 449  0058 f4            	and	a,(x)
 450  0059               L502:
 451  0059 f7            	ld	(x),a
 452                     ; 98     GPIOx->DDR |= (uint8_t)GPIO_Pin;
 454  005a e602          	ld	a,(2,x)
 455  005c 1a05          	or	a,(OFST+5,sp)
 457  005e 2005          	jra	L702
 458  0060               L102:
 459                     ; 103     GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
 461  0060 7b05          	ld	a,(OFST+5,sp)
 462  0062 43            	cpl	a
 463  0063 e402          	and	a,(2,x)
 464  0065               L702:
 465  0065 e702          	ld	(2,x),a
 466                     ; 110   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
 468  0067 7b06          	ld	a,(OFST+6,sp)
 469  0069 a540          	bcp	a,#64
 470  006b 2706          	jreq	L112
 471                     ; 112     GPIOx->CR1 |= (uint8_t)GPIO_Pin;
 473  006d e603          	ld	a,(3,x)
 474  006f 1a05          	or	a,(OFST+5,sp)
 476  0071 2005          	jra	L312
 477  0073               L112:
 478                     ; 116     GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
 480  0073 7b05          	ld	a,(OFST+5,sp)
 481  0075 43            	cpl	a
 482  0076 e403          	and	a,(3,x)
 483  0078               L312:
 484  0078 e703          	ld	(3,x),a
 485                     ; 123   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
 487  007a 7b06          	ld	a,(OFST+6,sp)
 488  007c a520          	bcp	a,#32
 489  007e 2708          	jreq	L512
 490                     ; 125     GPIOx->CR2 |= (uint8_t)GPIO_Pin;
 492  0080 1e01          	ldw	x,(OFST+1,sp)
 493  0082 e604          	ld	a,(4,x)
 494  0084 1a05          	or	a,(OFST+5,sp)
 496  0086 2007          	jra	L712
 497  0088               L512:
 498                     ; 129     GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 500  0088 1e01          	ldw	x,(OFST+1,sp)
 501  008a 7b05          	ld	a,(OFST+5,sp)
 502  008c 43            	cpl	a
 503  008d e404          	and	a,(4,x)
 504  008f               L712:
 505  008f e704          	ld	(4,x),a
 506                     ; 131 }
 509  0091 85            	popw	x
 510  0092 81            	ret	
 511  0093               LC001:
 512  0093 89            	pushw	x
 513  0094 5f            	clrw	x
 514  0095 89            	pushw	x
 515  0096 ae0000        	ldw	x,#L771
 516  0099 cd0000        	call	_assert_failed
 518  009c 5b04          	addw	sp,#4
 519  009e 81            	ret	
 563                     ; 141 void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
 563                     ; 142 {
 564                     .text:	section	.text,new
 565  0000               _GPIO_Write:
 567       fffffffe      OFST: set -2
 570                     ; 143   GPIOx->ODR = PortVal;
 572  0000 7b03          	ld	a,(OFST+5,sp)
 573  0002 f7            	ld	(x),a
 574                     ; 144 }
 577  0003 81            	ret	
 624                     ; 154 void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 624                     ; 155 {
 625                     .text:	section	.text,new
 626  0000               _GPIO_WriteHigh:
 628       fffffffe      OFST: set -2
 631                     ; 156   GPIOx->ODR |= (uint8_t)PortPins;
 633  0000 f6            	ld	a,(x)
 634  0001 1a03          	or	a,(OFST+5,sp)
 635  0003 f7            	ld	(x),a
 636                     ; 157 }
 639  0004 81            	ret	
 686                     ; 167 void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 686                     ; 168 {
 687                     .text:	section	.text,new
 688  0000               _GPIO_WriteLow:
 690       fffffffe      OFST: set -2
 693                     ; 169   GPIOx->ODR &= (uint8_t)(~PortPins);
 695  0000 7b03          	ld	a,(OFST+5,sp)
 696  0002 43            	cpl	a
 697  0003 f4            	and	a,(x)
 698  0004 f7            	ld	(x),a
 699                     ; 170 }
 702  0005 81            	ret	
 749                     ; 180 void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 749                     ; 181 {
 750                     .text:	section	.text,new
 751  0000               _GPIO_WriteReverse:
 753       fffffffe      OFST: set -2
 756                     ; 182   GPIOx->ODR ^= (uint8_t)PortPins;
 758  0000 f6            	ld	a,(x)
 759  0001 1803          	xor	a,(OFST+5,sp)
 760  0003 f7            	ld	(x),a
 761                     ; 183 }
 764  0004 81            	ret	
 802                     ; 191 uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
 802                     ; 192 {
 803                     .text:	section	.text,new
 804  0000               _GPIO_ReadOutputData:
 808                     ; 193   return ((uint8_t)GPIOx->ODR);
 810  0000 f6            	ld	a,(x)
 813  0001 81            	ret	
 850                     ; 202 uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
 850                     ; 203 {
 851                     .text:	section	.text,new
 852  0000               _GPIO_ReadInputData:
 856                     ; 204   return ((uint8_t)GPIOx->IDR);
 858  0000 e601          	ld	a,(1,x)
 861  0002 81            	ret	
 929                     ; 213 BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
 929                     ; 214 {
 930                     .text:	section	.text,new
 931  0000               _GPIO_ReadInputPin:
 933       fffffffe      OFST: set -2
 936                     ; 215   return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
 938  0000 e601          	ld	a,(1,x)
 939  0002 1403          	and	a,(OFST+5,sp)
 942  0004 81            	ret	
1021                     ; 225 void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
1021                     ; 226 {
1022                     .text:	section	.text,new
1023  0000               _GPIO_ExternalPullUpConfig:
1025  0000 89            	pushw	x
1026       00000000      OFST:	set	0
1029                     ; 228   assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
1031  0001 7b05          	ld	a,(OFST+5,sp)
1032  0003 2605          	jrne	L05
1033  0005 ae00e4        	ldw	x,#228
1034  0008 ad23          	call	LC002
1035  000a               L05:
1036                     ; 229   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1038  000a 7b06          	ld	a,(OFST+6,sp)
1039  000c 2708          	jreq	L06
1040  000e 4a            	dec	a
1041  000f 2705          	jreq	L06
1042  0011 ae00e5        	ldw	x,#229
1043  0014 ad17          	call	LC002
1044  0016               L06:
1045                     ; 231   if (NewState != DISABLE) /* External Pull-Up Set*/
1047  0016 7b06          	ld	a,(OFST+6,sp)
1048  0018 2708          	jreq	L374
1049                     ; 233     GPIOx->CR1 |= (uint8_t)GPIO_Pin;
1051  001a 1e01          	ldw	x,(OFST+1,sp)
1052  001c e603          	ld	a,(3,x)
1053  001e 1a05          	or	a,(OFST+5,sp)
1055  0020 2007          	jra	L574
1056  0022               L374:
1057                     ; 236     GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
1059  0022 1e01          	ldw	x,(OFST+1,sp)
1060  0024 7b05          	ld	a,(OFST+5,sp)
1061  0026 43            	cpl	a
1062  0027 e403          	and	a,(3,x)
1063  0029               L574:
1064  0029 e703          	ld	(3,x),a
1065                     ; 238 }
1068  002b 85            	popw	x
1069  002c 81            	ret	
1070  002d               LC002:
1071  002d 89            	pushw	x
1072  002e 5f            	clrw	x
1073  002f 89            	pushw	x
1074  0030 ae0000        	ldw	x,#L771
1075  0033 cd0000        	call	_assert_failed
1077  0036 5b04          	addw	sp,#4
1078  0038 81            	ret	
1091                     	xdef	_GPIO_ExternalPullUpConfig
1092                     	xdef	_GPIO_ReadInputPin
1093                     	xdef	_GPIO_ReadOutputData
1094                     	xdef	_GPIO_ReadInputData
1095                     	xdef	_GPIO_WriteReverse
1096                     	xdef	_GPIO_WriteLow
1097                     	xdef	_GPIO_WriteHigh
1098                     	xdef	_GPIO_Write
1099                     	xdef	_GPIO_Init
1100                     	xdef	_GPIO_DeInit
1101                     	xref	_assert_failed
1102                     .const:	section	.text
1103  0000               L771:
1104  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
1105  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
1106  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
1107  0036 5f6770696f2e  	dc.b	"_gpio.c",0
1127                     	end
