   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
   4                     ; Optimizer V4.5.6 - 18 Jul 2023
  50                     ; 54 void BEEP_DeInit(void)
  50                     ; 55 {
  52                     .text:	section	.text,new
  53  0000               _BEEP_DeInit:
  57                     ; 56   BEEP->CSR = BEEP_CSR_RESET_VALUE;
  59  0000 351f50f3      	mov	20723,#31
  60                     ; 57 }
  63  0004 81            	ret	
 129                     ; 67 void BEEP_Init(BEEP_Frequency_TypeDef BEEP_Frequency)
 129                     ; 68 {
 130                     .text:	section	.text,new
 131  0000               _BEEP_Init:
 133  0000 88            	push	a
 134       00000000      OFST:	set	0
 137                     ; 70   assert_param(IS_BEEP_FREQUENCY_OK(BEEP_Frequency));
 139  0001 4d            	tnz	a
 140  0002 2716          	jreq	L41
 141  0004 a140          	cp	a,#64
 142  0006 2712          	jreq	L41
 143  0008 a180          	cp	a,#128
 144  000a 270e          	jreq	L41
 145  000c ae0046        	ldw	x,#70
 146  000f 89            	pushw	x
 147  0010 5f            	clrw	x
 148  0011 89            	pushw	x
 149  0012 ae000c        	ldw	x,#L15
 150  0015 cd0000        	call	_assert_failed
 152  0018 5b04          	addw	sp,#4
 153  001a               L41:
 154                     ; 73   if ((BEEP->CSR & BEEP_CSR_BEEPDIV) == BEEP_CSR_BEEPDIV)
 156  001a c650f3        	ld	a,20723
 157  001d a41f          	and	a,#31
 158  001f a11f          	cp	a,#31
 159  0021 2610          	jrne	L35
 160                     ; 75     BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
 162  0023 c650f3        	ld	a,20723
 163  0026 a4e0          	and	a,#224
 164  0028 c750f3        	ld	20723,a
 165                     ; 76     BEEP->CSR |= BEEP_CALIBRATION_DEFAULT;
 167  002b c650f3        	ld	a,20723
 168  002e aa0b          	or	a,#11
 169  0030 c750f3        	ld	20723,a
 170  0033               L35:
 171                     ; 80   BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPSEL);
 173  0033 c650f3        	ld	a,20723
 174  0036 a43f          	and	a,#63
 175  0038 c750f3        	ld	20723,a
 176                     ; 81   BEEP->CSR |= (uint8_t)(BEEP_Frequency);
 178  003b c650f3        	ld	a,20723
 179  003e 1a01          	or	a,(OFST+1,sp)
 180  0040 c750f3        	ld	20723,a
 181                     ; 82 }
 184  0043 84            	pop	a
 185  0044 81            	ret	
 240                     ; 91 void BEEP_Cmd(FunctionalState NewState)
 240                     ; 92 {
 241                     .text:	section	.text,new
 242  0000               _BEEP_Cmd:
 246                     ; 93   if (NewState != DISABLE)
 248  0000 4d            	tnz	a
 249  0001 2705          	jreq	L301
 250                     ; 96     BEEP->CSR |= BEEP_CSR_BEEPEN;
 252  0003 721a50f3      	bset	20723,#5
 255  0007 81            	ret	
 256  0008               L301:
 257                     ; 101     BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPEN);
 259  0008 721b50f3      	bres	20723,#5
 260                     ; 103 }
 263  000c 81            	ret	
 311                     .const:	section	.text
 312  0000               L62:
 313  0000 0001adb0      	dc.l	110000
 314  0004               L03:
 315  0004 000249f1      	dc.l	150001
 316  0008               L63:
 317  0008 000003e8      	dc.l	1000
 318                     ; 118 void BEEP_LSICalibrationConfig(uint32_t LSIFreqHz)
 318                     ; 119 {
 319                     .text:	section	.text,new
 320  0000               _BEEP_LSICalibrationConfig:
 322  0000 5206          	subw	sp,#6
 323       00000006      OFST:	set	6
 326                     ; 124   assert_param(IS_LSI_FREQUENCY_OK(LSIFreqHz));
 328  0002 96            	ldw	x,sp
 329  0003 1c0009        	addw	x,#OFST+3
 330  0006 cd0000        	call	c_ltor
 332  0009 ae0000        	ldw	x,#L62
 333  000c cd0000        	call	c_lcmp
 335  000f 250f          	jrult	L42
 336  0011 96            	ldw	x,sp
 337  0012 1c0009        	addw	x,#OFST+3
 338  0015 cd0000        	call	c_ltor
 340  0018 ae0004        	ldw	x,#L03
 341  001b cd0000        	call	c_lcmp
 343  001e 250e          	jrult	L23
 344  0020               L42:
 345  0020 ae007c        	ldw	x,#124
 346  0023 89            	pushw	x
 347  0024 5f            	clrw	x
 348  0025 89            	pushw	x
 349  0026 ae000c        	ldw	x,#L15
 350  0029 cd0000        	call	_assert_failed
 352  002c 5b04          	addw	sp,#4
 353  002e               L23:
 354                     ; 126   lsifreqkhz = (uint16_t)(LSIFreqHz / 1000); /* Converts value in kHz */
 356  002e 96            	ldw	x,sp
 357  002f 1c0009        	addw	x,#OFST+3
 358  0032 cd0000        	call	c_ltor
 360  0035 ae0008        	ldw	x,#L63
 361  0038 cd0000        	call	c_ludv
 363  003b be02          	ldw	x,c_lreg+2
 364  003d 1f03          	ldw	(OFST-3,sp),x
 366                     ; 130   BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
 368  003f c650f3        	ld	a,20723
 369  0042 a4e0          	and	a,#224
 370  0044 c750f3        	ld	20723,a
 371                     ; 132   A = (uint16_t)(lsifreqkhz >> 3U); /* Division by 8, keep integer part only */
 373  0047 54            	srlw	x
 374  0048 54            	srlw	x
 375  0049 54            	srlw	x
 376  004a 1f05          	ldw	(OFST-1,sp),x
 378                     ; 134   if ((8U * A) >= ((lsifreqkhz - (8U * A)) * (1U + (2U * A))))
 380  004c 58            	sllw	x
 381  004d 58            	sllw	x
 382  004e 58            	sllw	x
 383  004f 1f01          	ldw	(OFST-5,sp),x
 385  0051 1e03          	ldw	x,(OFST-3,sp)
 386  0053 72f001        	subw	x,(OFST-5,sp)
 387  0056 1605          	ldw	y,(OFST-1,sp)
 388  0058 9058          	sllw	y
 389  005a 905c          	incw	y
 390  005c cd0000        	call	c_imul
 392  005f 1605          	ldw	y,(OFST-1,sp)
 393  0061 9058          	sllw	y
 394  0063 9058          	sllw	y
 395  0065 bf00          	ldw	c_x,x
 396  0067 9058          	sllw	y
 397  0069 90b300        	cpw	y,c_x
 398  006c 7b06          	ld	a,(OFST+0,sp)
 399  006e 2504          	jrult	L721
 400                     ; 136     BEEP->CSR |= (uint8_t)(A - 2U);
 402  0070 a002          	sub	a,#2
 404  0072 2001          	jra	L131
 405  0074               L721:
 406                     ; 140     BEEP->CSR |= (uint8_t)(A - 1U);
 408  0074 4a            	dec	a
 409  0075               L131:
 410  0075 ca50f3        	or	a,20723
 411  0078 c750f3        	ld	20723,a
 412                     ; 142 }
 415  007b 5b06          	addw	sp,#6
 416  007d 81            	ret	
 429                     	xdef	_BEEP_LSICalibrationConfig
 430                     	xdef	_BEEP_Cmd
 431                     	xdef	_BEEP_Init
 432                     	xdef	_BEEP_DeInit
 433                     	xref	_assert_failed
 434                     	switch	.const
 435  000c               L15:
 436  000c 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 437  001e 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 438  0030 685f64726976  	dc.b	"h_driver\src\stm8s"
 439  0042 5f626565702e  	dc.b	"_beep.c",0
 440                     	xref.b	c_lreg
 441                     	xref.b	c_x
 461                     	xref	c_imul
 462                     	xref	c_ludv
 463                     	xref	c_lcmp
 464                     	xref	c_ltor
 465                     	end
