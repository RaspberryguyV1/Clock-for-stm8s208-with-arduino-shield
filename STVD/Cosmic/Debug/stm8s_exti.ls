   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
   4                     ; Optimizer V4.5.6 - 18 Jul 2023
  50                     ; 53 void EXTI_DeInit(void)
  50                     ; 54 {
  52                     .text:	section	.text,new
  53  0000               _EXTI_DeInit:
  57                     ; 55   EXTI->CR1 = EXTI_CR1_RESET_VALUE;
  59  0000 725f50a0      	clr	20640
  60                     ; 56   EXTI->CR2 = EXTI_CR2_RESET_VALUE;
  62  0004 725f50a1      	clr	20641
  63                     ; 57 }
  66  0008 81            	ret	
 192                     ; 70 void EXTI_SetExtIntSensitivity(EXTI_Port_TypeDef Port, EXTI_Sensitivity_TypeDef SensitivityValue)
 192                     ; 71 {
 193                     .text:	section	.text,new
 194  0000               _EXTI_SetExtIntSensitivity:
 196  0000 89            	pushw	x
 197       00000000      OFST:	set	0
 200                     ; 73   assert_param(IS_EXTI_PORT_OK(Port));
 202  0001 9e            	ld	a,xh
 203  0002 4d            	tnz	a
 204  0003 2718          	jreq	L41
 205  0005 9e            	ld	a,xh
 206  0006 4a            	dec	a
 207  0007 2714          	jreq	L41
 208  0009 9e            	ld	a,xh
 209  000a a102          	cp	a,#2
 210  000c 270f          	jreq	L41
 211  000e 9e            	ld	a,xh
 212  000f a103          	cp	a,#3
 213  0011 270a          	jreq	L41
 214  0013 9e            	ld	a,xh
 215  0014 a104          	cp	a,#4
 216  0016 2705          	jreq	L41
 217  0018 ae0049        	ldw	x,#73
 218  001b ad7c          	call	LC004
 219  001d               L41:
 220                     ; 74   assert_param(IS_EXTI_SENSITIVITY_OK(SensitivityValue));
 222  001d 7b02          	ld	a,(OFST+2,sp)
 223  001f 2711          	jreq	L42
 224  0021 a101          	cp	a,#1
 225  0023 270d          	jreq	L42
 226  0025 a102          	cp	a,#2
 227  0027 2709          	jreq	L42
 228  0029 a103          	cp	a,#3
 229  002b 2705          	jreq	L42
 230  002d ae004a        	ldw	x,#74
 231  0030 ad67          	call	LC004
 232  0032               L42:
 233                     ; 77   switch (Port)
 235  0032 7b01          	ld	a,(OFST+1,sp)
 237                     ; 99   default:
 237                     ; 100     break;
 238  0034 270e          	jreq	L12
 239  0036 4a            	dec	a
 240  0037 271a          	jreq	L32
 241  0039 4a            	dec	a
 242  003a 2725          	jreq	L52
 243  003c 4a            	dec	a
 244  003d 2731          	jreq	L72
 245  003f 4a            	dec	a
 246  0040 2745          	jreq	L13
 247  0042 2053          	jra	L511
 248  0044               L12:
 249                     ; 79   case EXTI_PORT_GPIOA:
 249                     ; 80     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PAIS);
 251  0044 c650a0        	ld	a,20640
 252  0047 a4fc          	and	a,#252
 253  0049 c750a0        	ld	20640,a
 254                     ; 81     EXTI->CR1 |= (uint8_t)(SensitivityValue);
 256  004c c650a0        	ld	a,20640
 257  004f 1a02          	or	a,(OFST+2,sp)
 258                     ; 82     break;
 260  0051 202f          	jp	LC001
 261  0053               L32:
 262                     ; 83   case EXTI_PORT_GPIOB:
 262                     ; 84     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PBIS);
 264  0053 c650a0        	ld	a,20640
 265  0056 a4f3          	and	a,#243
 266  0058 c750a0        	ld	20640,a
 267                     ; 85     EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 2);
 269  005b 7b02          	ld	a,(OFST+2,sp)
 270  005d 48            	sll	a
 271  005e 48            	sll	a
 272                     ; 86     break;
 274  005f 201e          	jp	LC002
 275  0061               L52:
 276                     ; 87   case EXTI_PORT_GPIOC:
 276                     ; 88     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PCIS);
 278  0061 c650a0        	ld	a,20640
 279  0064 a4cf          	and	a,#207
 280  0066 c750a0        	ld	20640,a
 281                     ; 89     EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 4);
 283  0069 7b02          	ld	a,(OFST+2,sp)
 284  006b 97            	ld	xl,a
 285  006c a610          	ld	a,#16
 286                     ; 90     break;
 288  006e 200d          	jp	LC003
 289  0070               L72:
 290                     ; 91   case EXTI_PORT_GPIOD:
 290                     ; 92     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PDIS);
 292  0070 c650a0        	ld	a,20640
 293  0073 a43f          	and	a,#63
 294  0075 c750a0        	ld	20640,a
 295                     ; 93     EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 6);
 297  0078 7b02          	ld	a,(OFST+2,sp)
 298  007a 97            	ld	xl,a
 299  007b a640          	ld	a,#64
 300  007d               LC003:
 301  007d 42            	mul	x,a
 302  007e 9f            	ld	a,xl
 303  007f               LC002:
 304  007f ca50a0        	or	a,20640
 305  0082               LC001:
 306  0082 c750a0        	ld	20640,a
 307                     ; 94     break;
 309  0085 2010          	jra	L511
 310  0087               L13:
 311                     ; 95   case EXTI_PORT_GPIOE:
 311                     ; 96     EXTI->CR2 &= (uint8_t)(~EXTI_CR2_PEIS);
 313  0087 c650a1        	ld	a,20641
 314  008a a4fc          	and	a,#252
 315  008c c750a1        	ld	20641,a
 316                     ; 97     EXTI->CR2 |= (uint8_t)(SensitivityValue);
 318  008f c650a1        	ld	a,20641
 319  0092 1a02          	or	a,(OFST+2,sp)
 320  0094 c750a1        	ld	20641,a
 321                     ; 98     break;
 323                     ; 99   default:
 323                     ; 100     break;
 325  0097               L511:
 326                     ; 102 }
 329  0097 85            	popw	x
 330  0098 81            	ret	
 331  0099               LC004:
 332  0099 89            	pushw	x
 333  009a 5f            	clrw	x
 334  009b 89            	pushw	x
 335  009c ae0000        	ldw	x,#L111
 336  009f cd0000        	call	_assert_failed
 338  00a2 5b04          	addw	sp,#4
 339  00a4 81            	ret	
 398                     ; 111 void EXTI_SetTLISensitivity(EXTI_TLISensitivity_TypeDef SensitivityValue)
 398                     ; 112 {
 399                     .text:	section	.text,new
 400  0000               _EXTI_SetTLISensitivity:
 402  0000 88            	push	a
 403       00000000      OFST:	set	0
 406                     ; 114   assert_param(IS_EXTI_TLISENSITIVITY_OK(SensitivityValue));
 408  0001 4d            	tnz	a
 409  0002 2712          	jreq	L63
 410  0004 a104          	cp	a,#4
 411  0006 270e          	jreq	L63
 412  0008 ae0072        	ldw	x,#114
 413  000b 89            	pushw	x
 414  000c 5f            	clrw	x
 415  000d 89            	pushw	x
 416  000e ae0000        	ldw	x,#L111
 417  0011 cd0000        	call	_assert_failed
 419  0014 5b04          	addw	sp,#4
 420  0016               L63:
 421                     ; 117   EXTI->CR2 &= (uint8_t)(~EXTI_CR2_TLIS);
 423  0016 721550a1      	bres	20641,#2
 424                     ; 118   EXTI->CR2 |= (uint8_t)(SensitivityValue);
 426  001a c650a1        	ld	a,20641
 427  001d 1a01          	or	a,(OFST+1,sp)
 428  001f c750a1        	ld	20641,a
 429                     ; 119 }
 432  0022 84            	pop	a
 433  0023 81            	ret	
 478                     ; 126 EXTI_Sensitivity_TypeDef EXTI_GetExtIntSensitivity(EXTI_Port_TypeDef Port)
 478                     ; 127 {
 479                     .text:	section	.text,new
 480  0000               _EXTI_GetExtIntSensitivity:
 482  0000 88            	push	a
 483  0001 88            	push	a
 484       00000001      OFST:	set	1
 487                     ; 128   uint8_t value = 0;
 489  0002 0f01          	clr	(OFST+0,sp)
 491                     ; 131   assert_param(IS_EXTI_PORT_OK(Port));
 493  0004 4d            	tnz	a
 494  0005 271e          	jreq	L05
 495  0007 a101          	cp	a,#1
 496  0009 271a          	jreq	L05
 497  000b a102          	cp	a,#2
 498  000d 2716          	jreq	L05
 499  000f a103          	cp	a,#3
 500  0011 2712          	jreq	L05
 501  0013 a104          	cp	a,#4
 502  0015 270e          	jreq	L05
 503  0017 ae0083        	ldw	x,#131
 504  001a 89            	pushw	x
 505  001b 5f            	clrw	x
 506  001c 89            	pushw	x
 507  001d ae0000        	ldw	x,#L111
 508  0020 cd0000        	call	_assert_failed
 510  0023 5b04          	addw	sp,#4
 511  0025               L05:
 512                     ; 133   switch (Port)
 514  0025 7b02          	ld	a,(OFST+1,sp)
 516                     ; 150   default:
 516                     ; 151     break;
 517  0027 2710          	jreq	L541
 518  0029 4a            	dec	a
 519  002a 2712          	jreq	L741
 520  002c 4a            	dec	a
 521  002d 2718          	jreq	L151
 522  002f 4a            	dec	a
 523  0030 271b          	jreq	L351
 524  0032 4a            	dec	a
 525  0033 2722          	jreq	L551
 526  0035 7b01          	ld	a,(OFST+0,sp)
 527  0037 2023          	jra	LC005
 528  0039               L541:
 529                     ; 135   case EXTI_PORT_GPIOA:
 529                     ; 136     value = (uint8_t)(EXTI->CR1 & EXTI_CR1_PAIS);
 531  0039 c650a0        	ld	a,20640
 532                     ; 137     break;
 534  003c 201c          	jp	LC006
 535  003e               L741:
 536                     ; 138   case EXTI_PORT_GPIOB:
 536                     ; 139     value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PBIS) >> 2);
 538  003e c650a0        	ld	a,20640
 539  0041 a40c          	and	a,#12
 540  0043 44            	srl	a
 541  0044 44            	srl	a
 542                     ; 140     break;
 544  0045 2015          	jp	LC005
 545  0047               L151:
 546                     ; 141   case EXTI_PORT_GPIOC:
 546                     ; 142     value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PCIS) >> 4);
 548  0047 c650a0        	ld	a,20640
 549  004a 4e            	swap	a
 550                     ; 143     break;
 552  004b 200d          	jp	LC006
 553  004d               L351:
 554                     ; 144   case EXTI_PORT_GPIOD:
 554                     ; 145     value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PDIS) >> 6);
 556  004d c650a0        	ld	a,20640
 557  0050 4e            	swap	a
 558  0051 a40c          	and	a,#12
 559  0053 44            	srl	a
 560  0054 44            	srl	a
 561                     ; 146     break;
 563  0055 2003          	jp	LC006
 564  0057               L551:
 565                     ; 147   case EXTI_PORT_GPIOE:
 565                     ; 148     value = (uint8_t)(EXTI->CR2 & EXTI_CR2_PEIS);
 567  0057 c650a1        	ld	a,20641
 568  005a               LC006:
 569  005a a403          	and	a,#3
 570  005c               LC005:
 572                     ; 149     break;
 574                     ; 150   default:
 574                     ; 151     break;
 576                     ; 154   return((EXTI_Sensitivity_TypeDef)value);
 580  005c 85            	popw	x
 581  005d 81            	ret	
 615                     ; 162 EXTI_TLISensitivity_TypeDef EXTI_GetTLISensitivity(void)
 615                     ; 163 {
 616                     .text:	section	.text,new
 617  0000               _EXTI_GetTLISensitivity:
 619       00000001      OFST:	set	1
 622                     ; 164   uint8_t value = 0;
 624                     ; 167   value = (uint8_t)(EXTI->CR2 & EXTI_CR2_TLIS);
 626  0000 c650a1        	ld	a,20641
 627  0003 a404          	and	a,#4
 629                     ; 169   return((EXTI_TLISensitivity_TypeDef)value);
 633  0005 81            	ret	
 646                     	xdef	_EXTI_GetTLISensitivity
 647                     	xdef	_EXTI_GetExtIntSensitivity
 648                     	xdef	_EXTI_SetTLISensitivity
 649                     	xdef	_EXTI_SetExtIntSensitivity
 650                     	xdef	_EXTI_DeInit
 651                     	xref	_assert_failed
 652                     .const:	section	.text
 653  0000               L111:
 654  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 655  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 656  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
 657  0036 5f657874692e  	dc.b	"_exti.c",0
 677                     	end
