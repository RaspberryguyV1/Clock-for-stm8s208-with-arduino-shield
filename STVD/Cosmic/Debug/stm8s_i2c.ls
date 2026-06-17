   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
   4                     ; Optimizer V4.5.6 - 18 Jul 2023
  50                     ; 67 void I2C_DeInit(void)
  50                     ; 68 {
  52                     .text:	section	.text,new
  53  0000               _I2C_DeInit:
  57                     ; 69   I2C->CR1 = I2C_CR1_RESET_VALUE;
  59  0000 725f5210      	clr	21008
  60                     ; 70   I2C->CR2 = I2C_CR2_RESET_VALUE;
  62  0004 725f5211      	clr	21009
  63                     ; 71   I2C->FREQR = I2C_FREQR_RESET_VALUE;
  65  0008 725f5212      	clr	21010
  66                     ; 72   I2C->OARL = I2C_OARL_RESET_VALUE;
  68  000c 725f5213      	clr	21011
  69                     ; 73   I2C->OARH = I2C_OARH_RESET_VALUE;
  71  0010 725f5214      	clr	21012
  72                     ; 74   I2C->ITR = I2C_ITR_RESET_VALUE;
  74  0014 725f521a      	clr	21018
  75                     ; 75   I2C->CCRL = I2C_CCRL_RESET_VALUE;
  77  0018 725f521b      	clr	21019
  78                     ; 76   I2C->CCRH = I2C_CCRH_RESET_VALUE;
  80  001c 725f521c      	clr	21020
  81                     ; 77   I2C->TRISER = I2C_TRISER_RESET_VALUE;
  83  0020 3502521d      	mov	21021,#2
  84                     ; 78 }
  87  0024 81            	ret	
 255                     .const:	section	.text
 256  0000               L65:
 257  0000 00061a81      	dc.l	400001
 258  0004               L46:
 259  0004 000186a1      	dc.l	100001
 260  0008               L66:
 261  0008 000f4240      	dc.l	1000000
 262                     ; 96 void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress, 
 262                     ; 97               I2C_DutyCycle_TypeDef I2C_DutyCycle, I2C_Ack_TypeDef Ack, 
 262                     ; 98               I2C_AddMode_TypeDef AddMode, uint8_t InputClockFrequencyMHz )
 262                     ; 99 {
 263                     .text:	section	.text,new
 264  0000               _I2C_Init:
 266  0000 5209          	subw	sp,#9
 267       00000009      OFST:	set	9
 270                     ; 100   uint16_t result = 0x0004;
 272                     ; 101   uint16_t tmpval = 0;
 274                     ; 102   uint8_t tmpccrh = 0;
 276  0002 0f07          	clr	(OFST-2,sp)
 278                     ; 105   assert_param(IS_I2C_ACK_OK(Ack));
 280  0004 7b13          	ld	a,(OFST+10,sp)
 281  0006 270e          	jreq	L41
 282  0008 a101          	cp	a,#1
 283  000a 270a          	jreq	L41
 284  000c a102          	cp	a,#2
 285  000e 2706          	jreq	L41
 286  0010 ae0069        	ldw	x,#105
 287  0013 cd0158        	call	LC001
 288  0016               L41:
 289                     ; 106   assert_param(IS_I2C_ADDMODE_OK(AddMode));
 291  0016 7b14          	ld	a,(OFST+11,sp)
 292  0018 270a          	jreq	L42
 293  001a a180          	cp	a,#128
 294  001c 2706          	jreq	L42
 295  001e ae006a        	ldw	x,#106
 296  0021 cd0158        	call	LC001
 297  0024               L42:
 298                     ; 107   assert_param(IS_I2C_OWN_ADDRESS_OK(OwnAddress));
 300  0024 1e10          	ldw	x,(OFST+7,sp)
 301  0026 a30400        	cpw	x,#1024
 302  0029 2506          	jrult	L23
 303  002b ae006b        	ldw	x,#107
 304  002e cd0158        	call	LC001
 305  0031               L23:
 306                     ; 108   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));  
 308  0031 7b12          	ld	a,(OFST+9,sp)
 309  0033 270a          	jreq	L24
 310  0035 a140          	cp	a,#64
 311  0037 2706          	jreq	L24
 312  0039 ae006c        	ldw	x,#108
 313  003c cd0158        	call	LC001
 314  003f               L24:
 315                     ; 109   assert_param(IS_I2C_INPUT_CLOCK_FREQ_OK(InputClockFrequencyMHz));
 317  003f 7b15          	ld	a,(OFST+12,sp)
 318  0041 2704          	jreq	L64
 319  0043 a119          	cp	a,#25
 320  0045 2506          	jrult	L05
 321  0047               L64:
 322  0047 ae006d        	ldw	x,#109
 323  004a cd0158        	call	LC001
 324  004d               L05:
 325                     ; 110   assert_param(IS_I2C_OUTPUT_CLOCK_FREQ_OK(OutputClockFrequencyHz));
 327  004d 96            	ldw	x,sp
 328  004e 1c000c        	addw	x,#OFST+3
 329  0051 cd0000        	call	c_lzmp
 331  0054 270f          	jreq	L45
 332  0056 96            	ldw	x,sp
 333  0057 1c000c        	addw	x,#OFST+3
 334  005a cd0000        	call	c_ltor
 336  005d ae0000        	ldw	x,#L65
 337  0060 cd0000        	call	c_lcmp
 339  0063 2506          	jrult	L06
 340  0065               L45:
 341  0065 ae006e        	ldw	x,#110
 342  0068 cd0158        	call	LC001
 343  006b               L06:
 344                     ; 115   I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
 346  006b c65212        	ld	a,21010
 347  006e a4c0          	and	a,#192
 348  0070 c75212        	ld	21010,a
 349                     ; 117   I2C->FREQR |= InputClockFrequencyMHz;
 351  0073 c65212        	ld	a,21010
 352  0076 1a15          	or	a,(OFST+12,sp)
 353  0078 c75212        	ld	21010,a
 354                     ; 121   I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 356  007b 72115210      	bres	21008,#0
 357                     ; 124   I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
 359  007f c6521c        	ld	a,21020
 360  0082 a430          	and	a,#48
 361  0084 c7521c        	ld	21020,a
 362                     ; 125   I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
 364  0087 725f521b      	clr	21019
 365                     ; 128   if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
 367  008b 96            	ldw	x,sp
 368  008c 1c000c        	addw	x,#OFST+3
 369  008f cd0000        	call	c_ltor
 371  0092 ae0004        	ldw	x,#L46
 372  0095 cd0000        	call	c_lcmp
 374  0098 2560          	jrult	L711
 375                     ; 131     tmpccrh = I2C_CCRH_FS;
 377  009a a680          	ld	a,#128
 378  009c 6b07          	ld	(OFST-2,sp),a
 380                     ; 133     if (I2C_DutyCycle == I2C_DUTYCYCLE_2)
 382  009e 96            	ldw	x,sp
 383  009f 0d12          	tnz	(OFST+9,sp)
 384  00a1 261d          	jrne	L121
 385                     ; 136       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
 387  00a3 1c000c        	addw	x,#OFST+3
 388  00a6 cd0000        	call	c_ltor
 390  00a9 a603          	ld	a,#3
 391  00ab cd0000        	call	c_smul
 393  00ae 96            	ldw	x,sp
 394  00af 5c            	incw	x
 395  00b0 cd0000        	call	c_rtol
 398  00b3 7b15          	ld	a,(OFST+12,sp)
 399  00b5 cd0164        	call	LC002
 401  00b8 96            	ldw	x,sp
 402  00b9 cd0172        	call	LC003
 403  00bc 1f08          	ldw	(OFST-1,sp),x
 406  00be 2021          	jra	L321
 407  00c0               L121:
 408                     ; 141       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
 410  00c0 1c000c        	addw	x,#OFST+3
 411  00c3 cd0000        	call	c_ltor
 413  00c6 a619          	ld	a,#25
 414  00c8 cd0000        	call	c_smul
 416  00cb 96            	ldw	x,sp
 417  00cc 5c            	incw	x
 418  00cd cd0000        	call	c_rtol
 421  00d0 7b15          	ld	a,(OFST+12,sp)
 422  00d2 cd0164        	call	LC002
 424  00d5 96            	ldw	x,sp
 425  00d6 cd0172        	call	LC003
 426  00d9 1f08          	ldw	(OFST-1,sp),x
 428                     ; 143       tmpccrh |= I2C_CCRH_DUTY;
 430  00db 7b07          	ld	a,(OFST-2,sp)
 431  00dd aa40          	or	a,#64
 432  00df 6b07          	ld	(OFST-2,sp),a
 434  00e1               L321:
 435                     ; 147     if (result < (uint16_t)0x01)
 437  00e1 1e08          	ldw	x,(OFST-1,sp)
 438  00e3 2603          	jrne	L521
 439                     ; 150       result = (uint16_t)0x0001;
 441  00e5 5c            	incw	x
 442  00e6 1f08          	ldw	(OFST-1,sp),x
 444  00e8               L521:
 445                     ; 156     tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
 447  00e8 7b15          	ld	a,(OFST+12,sp)
 448  00ea 97            	ld	xl,a
 449  00eb a603          	ld	a,#3
 450  00ed 42            	mul	x,a
 451  00ee a60a          	ld	a,#10
 452  00f0 cd0000        	call	c_sdivx
 454  00f3 5c            	incw	x
 455  00f4 1f05          	ldw	(OFST-4,sp),x
 457                     ; 157     I2C->TRISER = (uint8_t)tmpval;
 459  00f6 7b06          	ld	a,(OFST-3,sp)
 461  00f8 2028          	jra	L721
 462  00fa               L711:
 463                     ; 164     result = (uint16_t)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (uint8_t)1));
 465  00fa 96            	ldw	x,sp
 466  00fb 1c000c        	addw	x,#OFST+3
 467  00fe cd0000        	call	c_ltor
 469  0101 3803          	sll	c_lreg+3
 470  0103 3902          	rlc	c_lreg+2
 471  0105 3901          	rlc	c_lreg+1
 472  0107 96            	ldw	x,sp
 473  0108 3900          	rlc	c_lreg
 474  010a 5c            	incw	x
 475  010b cd0000        	call	c_rtol
 478  010e 7b15          	ld	a,(OFST+12,sp)
 479  0110 ad52          	call	LC002
 481  0112 96            	ldw	x,sp
 482  0113 ad5d          	call	LC003
 484                     ; 167     if (result < (uint16_t)0x0004)
 486  0115 a30004        	cpw	x,#4
 487  0118 2403          	jruge	L131
 488                     ; 170       result = (uint16_t)0x0004;
 490  011a ae0004        	ldw	x,#4
 492  011d               L131:
 493  011d 1f08          	ldw	(OFST-1,sp),x
 494                     ; 176     I2C->TRISER = (uint8_t)(InputClockFrequencyMHz + (uint8_t)1);
 496  011f 7b15          	ld	a,(OFST+12,sp)
 497  0121 4c            	inc	a
 498  0122               L721:
 499  0122 c7521d        	ld	21021,a
 500                     ; 181   I2C->CCRL = (uint8_t)result;
 502  0125 7b09          	ld	a,(OFST+0,sp)
 503  0127 c7521b        	ld	21019,a
 504                     ; 182   I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
 506  012a 7b08          	ld	a,(OFST-1,sp)
 507  012c a40f          	and	a,#15
 508  012e 1a07          	or	a,(OFST-2,sp)
 509  0130 c7521c        	ld	21020,a
 510                     ; 185   I2C->CR1 |= I2C_CR1_PE;
 512  0133 72105210      	bset	21008,#0
 513                     ; 188   I2C_AcknowledgeConfig(Ack);
 515  0137 7b13          	ld	a,(OFST+10,sp)
 516  0139 cd0000        	call	_I2C_AcknowledgeConfig
 518                     ; 191   I2C->OARL = (uint8_t)(OwnAddress);
 520  013c 7b11          	ld	a,(OFST+8,sp)
 521  013e c75213        	ld	21011,a
 522                     ; 192   I2C->OARH = (uint8_t)((uint8_t)(AddMode | I2C_OARH_ADDCONF) |
 522                     ; 193                    (uint8_t)((OwnAddress & (uint16_t)0x0300) >> (uint8_t)7));
 524  0141 1e10          	ldw	x,(OFST+7,sp)
 525  0143 4f            	clr	a
 526  0144 01            	rrwa	x,a
 527  0145 48            	sll	a
 528  0146 01            	rrwa	x,a
 529  0147 49            	rlc	a
 530  0148 a406          	and	a,#6
 531  014a 6b04          	ld	(OFST-5,sp),a
 533  014c 7b14          	ld	a,(OFST+11,sp)
 534  014e aa40          	or	a,#64
 535  0150 1a04          	or	a,(OFST-5,sp)
 536  0152 c75214        	ld	21012,a
 537                     ; 194 }
 540  0155 5b09          	addw	sp,#9
 541  0157 81            	ret	
 542  0158               LC001:
 543  0158 89            	pushw	x
 544  0159 5f            	clrw	x
 545  015a 89            	pushw	x
 546  015b ae000c        	ldw	x,#L511
 547  015e cd0000        	call	_assert_failed
 549  0161 5b04          	addw	sp,#4
 550  0163 81            	ret	
 551  0164               LC002:
 552  0164 b703          	ld	c_lreg+3,a
 553  0166 3f02          	clr	c_lreg+2
 554  0168 3f01          	clr	c_lreg+1
 555  016a 3f00          	clr	c_lreg
 556  016c ae0008        	ldw	x,#L66
 557  016f cc0000        	jp	c_lmul
 558  0172               LC003:
 559  0172 5c            	incw	x
 560  0173 cd0000        	call	c_ludv
 562  0176 be02          	ldw	x,c_lreg+2
 563  0178 81            	ret	
 619                     ; 202 void I2C_Cmd(FunctionalState NewState)
 619                     ; 203 {
 620                     .text:	section	.text,new
 621  0000               _I2C_Cmd:
 623  0000 88            	push	a
 624       00000000      OFST:	set	0
 627                     ; 205   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 629  0001 4d            	tnz	a
 630  0002 2711          	jreq	L001
 631  0004 4a            	dec	a
 632  0005 270e          	jreq	L001
 633  0007 ae00cd        	ldw	x,#205
 634  000a 89            	pushw	x
 635  000b 5f            	clrw	x
 636  000c 89            	pushw	x
 637  000d ae000c        	ldw	x,#L511
 638  0010 cd0000        	call	_assert_failed
 640  0013 5b04          	addw	sp,#4
 641  0015               L001:
 642                     ; 207   if (NewState != DISABLE)
 644  0015 7b01          	ld	a,(OFST+1,sp)
 645  0017 2706          	jreq	L161
 646                     ; 210     I2C->CR1 |= I2C_CR1_PE;
 648  0019 72105210      	bset	21008,#0
 650  001d 2004          	jra	L361
 651  001f               L161:
 652                     ; 215     I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 654  001f 72115210      	bres	21008,#0
 655  0023               L361:
 656                     ; 217 }
 659  0023 84            	pop	a
 660  0024 81            	ret	
 696                     ; 225 void I2C_GeneralCallCmd(FunctionalState NewState)
 696                     ; 226 {
 697                     .text:	section	.text,new
 698  0000               _I2C_GeneralCallCmd:
 700  0000 88            	push	a
 701       00000000      OFST:	set	0
 704                     ; 228   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 706  0001 4d            	tnz	a
 707  0002 2711          	jreq	L211
 708  0004 4a            	dec	a
 709  0005 270e          	jreq	L211
 710  0007 ae00e4        	ldw	x,#228
 711  000a 89            	pushw	x
 712  000b 5f            	clrw	x
 713  000c 89            	pushw	x
 714  000d ae000c        	ldw	x,#L511
 715  0010 cd0000        	call	_assert_failed
 717  0013 5b04          	addw	sp,#4
 718  0015               L211:
 719                     ; 230   if (NewState != DISABLE)
 721  0015 7b01          	ld	a,(OFST+1,sp)
 722  0017 2706          	jreq	L302
 723                     ; 233     I2C->CR1 |= I2C_CR1_ENGC;
 725  0019 721c5210      	bset	21008,#6
 727  001d 2004          	jra	L502
 728  001f               L302:
 729                     ; 238     I2C->CR1 &= (uint8_t)(~I2C_CR1_ENGC);
 731  001f 721d5210      	bres	21008,#6
 732  0023               L502:
 733                     ; 240 }
 736  0023 84            	pop	a
 737  0024 81            	ret	
 773                     ; 250 void I2C_GenerateSTART(FunctionalState NewState)
 773                     ; 251 {
 774                     .text:	section	.text,new
 775  0000               _I2C_GenerateSTART:
 777  0000 88            	push	a
 778       00000000      OFST:	set	0
 781                     ; 253   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 783  0001 4d            	tnz	a
 784  0002 2711          	jreq	L421
 785  0004 4a            	dec	a
 786  0005 270e          	jreq	L421
 787  0007 ae00fd        	ldw	x,#253
 788  000a 89            	pushw	x
 789  000b 5f            	clrw	x
 790  000c 89            	pushw	x
 791  000d ae000c        	ldw	x,#L511
 792  0010 cd0000        	call	_assert_failed
 794  0013 5b04          	addw	sp,#4
 795  0015               L421:
 796                     ; 255   if (NewState != DISABLE)
 798  0015 7b01          	ld	a,(OFST+1,sp)
 799  0017 2706          	jreq	L522
 800                     ; 258     I2C->CR2 |= I2C_CR2_START;
 802  0019 72105211      	bset	21009,#0
 804  001d 2004          	jra	L722
 805  001f               L522:
 806                     ; 263     I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
 808  001f 72115211      	bres	21009,#0
 809  0023               L722:
 810                     ; 265 }
 813  0023 84            	pop	a
 814  0024 81            	ret	
 850                     ; 273 void I2C_GenerateSTOP(FunctionalState NewState)
 850                     ; 274 {
 851                     .text:	section	.text,new
 852  0000               _I2C_GenerateSTOP:
 854  0000 88            	push	a
 855       00000000      OFST:	set	0
 858                     ; 276   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 860  0001 4d            	tnz	a
 861  0002 2711          	jreq	L631
 862  0004 4a            	dec	a
 863  0005 270e          	jreq	L631
 864  0007 ae0114        	ldw	x,#276
 865  000a 89            	pushw	x
 866  000b 5f            	clrw	x
 867  000c 89            	pushw	x
 868  000d ae000c        	ldw	x,#L511
 869  0010 cd0000        	call	_assert_failed
 871  0013 5b04          	addw	sp,#4
 872  0015               L631:
 873                     ; 278   if (NewState != DISABLE)
 875  0015 7b01          	ld	a,(OFST+1,sp)
 876  0017 2706          	jreq	L742
 877                     ; 281     I2C->CR2 |= I2C_CR2_STOP;
 879  0019 72125211      	bset	21009,#1
 881  001d 2004          	jra	L152
 882  001f               L742:
 883                     ; 286     I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
 885  001f 72135211      	bres	21009,#1
 886  0023               L152:
 887                     ; 288 }
 890  0023 84            	pop	a
 891  0024 81            	ret	
 928                     ; 296 void I2C_SoftwareResetCmd(FunctionalState NewState)
 928                     ; 297 {
 929                     .text:	section	.text,new
 930  0000               _I2C_SoftwareResetCmd:
 932  0000 88            	push	a
 933       00000000      OFST:	set	0
 936                     ; 299   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 938  0001 4d            	tnz	a
 939  0002 2711          	jreq	L051
 940  0004 4a            	dec	a
 941  0005 270e          	jreq	L051
 942  0007 ae012b        	ldw	x,#299
 943  000a 89            	pushw	x
 944  000b 5f            	clrw	x
 945  000c 89            	pushw	x
 946  000d ae000c        	ldw	x,#L511
 947  0010 cd0000        	call	_assert_failed
 949  0013 5b04          	addw	sp,#4
 950  0015               L051:
 951                     ; 301   if (NewState != DISABLE)
 953  0015 7b01          	ld	a,(OFST+1,sp)
 954  0017 2706          	jreq	L172
 955                     ; 304     I2C->CR2 |= I2C_CR2_SWRST;
 957  0019 721e5211      	bset	21009,#7
 959  001d 2004          	jra	L372
 960  001f               L172:
 961                     ; 309     I2C->CR2 &= (uint8_t)(~I2C_CR2_SWRST);
 963  001f 721f5211      	bres	21009,#7
 964  0023               L372:
 965                     ; 311 }
 968  0023 84            	pop	a
 969  0024 81            	ret	
1006                     ; 320 void I2C_StretchClockCmd(FunctionalState NewState)
1006                     ; 321 {
1007                     .text:	section	.text,new
1008  0000               _I2C_StretchClockCmd:
1010  0000 88            	push	a
1011       00000000      OFST:	set	0
1014                     ; 323   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1016  0001 4d            	tnz	a
1017  0002 2711          	jreq	L261
1018  0004 4a            	dec	a
1019  0005 270e          	jreq	L261
1020  0007 ae0143        	ldw	x,#323
1021  000a 89            	pushw	x
1022  000b 5f            	clrw	x
1023  000c 89            	pushw	x
1024  000d ae000c        	ldw	x,#L511
1025  0010 cd0000        	call	_assert_failed
1027  0013 5b04          	addw	sp,#4
1028  0015               L261:
1029                     ; 325   if (NewState != DISABLE)
1031  0015 7b01          	ld	a,(OFST+1,sp)
1032  0017 2706          	jreq	L313
1033                     ; 328     I2C->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
1035  0019 721f5210      	bres	21008,#7
1037  001d 2004          	jra	L513
1038  001f               L313:
1039                     ; 334     I2C->CR1 |= I2C_CR1_NOSTRETCH;
1041  001f 721e5210      	bset	21008,#7
1042  0023               L513:
1043                     ; 336 }
1046  0023 84            	pop	a
1047  0024 81            	ret	
1084                     ; 345 void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
1084                     ; 346 {
1085                     .text:	section	.text,new
1086  0000               _I2C_AcknowledgeConfig:
1088  0000 88            	push	a
1089       00000000      OFST:	set	0
1092                     ; 348   assert_param(IS_I2C_ACK_OK(Ack));
1094  0001 4d            	tnz	a
1095  0002 2716          	jreq	L471
1096  0004 a101          	cp	a,#1
1097  0006 2712          	jreq	L471
1098  0008 a102          	cp	a,#2
1099  000a 270e          	jreq	L471
1100  000c ae015c        	ldw	x,#348
1101  000f 89            	pushw	x
1102  0010 5f            	clrw	x
1103  0011 89            	pushw	x
1104  0012 ae000c        	ldw	x,#L511
1105  0015 cd0000        	call	_assert_failed
1107  0018 5b04          	addw	sp,#4
1108  001a               L471:
1109                     ; 350   if (Ack == I2C_ACK_NONE)
1111  001a 7b01          	ld	a,(OFST+1,sp)
1112  001c 2606          	jrne	L533
1113                     ; 353     I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
1115  001e 72155211      	bres	21009,#2
1117  0022 2011          	jra	L733
1118  0024               L533:
1119                     ; 358     I2C->CR2 |= I2C_CR2_ACK;
1121  0024 72145211      	bset	21009,#2
1122                     ; 360     if (Ack == I2C_ACK_CURR)
1124  0028 4a            	dec	a
1125  0029 2606          	jrne	L143
1126                     ; 363       I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
1128  002b 72175211      	bres	21009,#3
1130  002f 2004          	jra	L733
1131  0031               L143:
1132                     ; 368       I2C->CR2 |= I2C_CR2_POS;
1134  0031 72165211      	bset	21009,#3
1135  0035               L733:
1136                     ; 371 }
1139  0035 84            	pop	a
1140  0036 81            	ret	
1213                     ; 381 void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
1213                     ; 382 {
1214                     .text:	section	.text,new
1215  0000               _I2C_ITConfig:
1217  0000 89            	pushw	x
1218       00000000      OFST:	set	0
1221                     ; 384   assert_param(IS_I2C_INTERRUPT_OK(I2C_IT));
1223  0001 9e            	ld	a,xh
1224  0002 4a            	dec	a
1225  0003 2723          	jreq	L602
1226  0005 9e            	ld	a,xh
1227  0006 a102          	cp	a,#2
1228  0008 271e          	jreq	L602
1229  000a 9e            	ld	a,xh
1230  000b a104          	cp	a,#4
1231  000d 2719          	jreq	L602
1232  000f 9e            	ld	a,xh
1233  0010 a103          	cp	a,#3
1234  0012 2714          	jreq	L602
1235  0014 9e            	ld	a,xh
1236  0015 a105          	cp	a,#5
1237  0017 270f          	jreq	L602
1238  0019 9e            	ld	a,xh
1239  001a a106          	cp	a,#6
1240  001c 270a          	jreq	L602
1241  001e 9e            	ld	a,xh
1242  001f a107          	cp	a,#7
1243  0021 2705          	jreq	L602
1244  0023 ae0180        	ldw	x,#384
1245  0026 ad22          	call	LC004
1246  0028               L602:
1247                     ; 385   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1249  0028 7b02          	ld	a,(OFST+2,sp)
1250  002a 2708          	jreq	L612
1251  002c 4a            	dec	a
1252  002d 2705          	jreq	L612
1253  002f ae0181        	ldw	x,#385
1254  0032 ad16          	call	LC004
1255  0034               L612:
1256                     ; 387   if (NewState != DISABLE)
1258  0034 7b02          	ld	a,(OFST+2,sp)
1259  0036 2707          	jreq	L104
1260                     ; 390     I2C->ITR |= (uint8_t)I2C_IT;
1262  0038 c6521a        	ld	a,21018
1263  003b 1a01          	or	a,(OFST+1,sp)
1265  003d 2006          	jra	L304
1266  003f               L104:
1267                     ; 395     I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
1269  003f 7b01          	ld	a,(OFST+1,sp)
1270  0041 43            	cpl	a
1271  0042 c4521a        	and	a,21018
1272  0045               L304:
1273  0045 c7521a        	ld	21018,a
1274                     ; 397 }
1277  0048 85            	popw	x
1278  0049 81            	ret	
1279  004a               LC004:
1280  004a 89            	pushw	x
1281  004b 5f            	clrw	x
1282  004c 89            	pushw	x
1283  004d ae000c        	ldw	x,#L511
1284  0050 cd0000        	call	_assert_failed
1286  0053 5b04          	addw	sp,#4
1287  0055 81            	ret	
1324                     ; 405 void I2C_FastModeDutyCycleConfig(I2C_DutyCycle_TypeDef I2C_DutyCycle)
1324                     ; 406 {
1325                     .text:	section	.text,new
1326  0000               _I2C_FastModeDutyCycleConfig:
1328  0000 88            	push	a
1329       00000000      OFST:	set	0
1332                     ; 408   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));
1334  0001 4d            	tnz	a
1335  0002 2712          	jreq	L032
1336  0004 a140          	cp	a,#64
1337  0006 270e          	jreq	L032
1338  0008 ae0198        	ldw	x,#408
1339  000b 89            	pushw	x
1340  000c 5f            	clrw	x
1341  000d 89            	pushw	x
1342  000e ae000c        	ldw	x,#L511
1343  0011 cd0000        	call	_assert_failed
1345  0014 5b04          	addw	sp,#4
1346  0016               L032:
1347                     ; 410   if (I2C_DutyCycle == I2C_DUTYCYCLE_16_9)
1349  0016 7b01          	ld	a,(OFST+1,sp)
1350  0018 a140          	cp	a,#64
1351  001a 2606          	jrne	L324
1352                     ; 413     I2C->CCRH |= I2C_CCRH_DUTY;
1354  001c 721c521c      	bset	21020,#6
1356  0020 2004          	jra	L524
1357  0022               L324:
1358                     ; 418     I2C->CCRH &= (uint8_t)(~I2C_CCRH_DUTY);
1360  0022 721d521c      	bres	21020,#6
1361  0026               L524:
1362                     ; 420 }
1365  0026 84            	pop	a
1366  0027 81            	ret	
1389                     ; 427 uint8_t I2C_ReceiveData(void)
1389                     ; 428 {
1390                     .text:	section	.text,new
1391  0000               _I2C_ReceiveData:
1395                     ; 430   return ((uint8_t)I2C->DR);
1397  0000 c65216        	ld	a,21014
1400  0003 81            	ret	
1464                     ; 440 void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
1464                     ; 441 {
1465                     .text:	section	.text,new
1466  0000               _I2C_Send7bitAddress:
1468  0000 89            	pushw	x
1469       00000000      OFST:	set	0
1472                     ; 443   assert_param(IS_I2C_ADDRESS_OK(Address));
1474  0001 9e            	ld	a,xh
1475  0002 a501          	bcp	a,#1
1476  0004 2705          	jreq	L242
1477  0006 ae01bb        	ldw	x,#443
1478  0009 ad19          	call	LC005
1479  000b               L242:
1480                     ; 444   assert_param(IS_I2C_DIRECTION_OK(Direction));
1482  000b 7b02          	ld	a,(OFST+2,sp)
1483  000d 2708          	jreq	L252
1484  000f 4a            	dec	a
1485  0010 2705          	jreq	L252
1486  0012 ae01bc        	ldw	x,#444
1487  0015 ad0d          	call	LC005
1488  0017               L252:
1489                     ; 447   Address &= (uint8_t)0xFE;
1491  0017 7b01          	ld	a,(OFST+1,sp)
1492  0019 a4fe          	and	a,#254
1493  001b 6b01          	ld	(OFST+1,sp),a
1494                     ; 450   I2C->DR = (uint8_t)(Address | (uint8_t)Direction);
1496  001d 1a02          	or	a,(OFST+2,sp)
1497  001f c75216        	ld	21014,a
1498                     ; 451 }
1501  0022 85            	popw	x
1502  0023 81            	ret	
1503  0024               LC005:
1504  0024 89            	pushw	x
1505  0025 5f            	clrw	x
1506  0026 89            	pushw	x
1507  0027 ae000c        	ldw	x,#L511
1508  002a cd0000        	call	_assert_failed
1510  002d 5b04          	addw	sp,#4
1511  002f 81            	ret	
1543                     ; 458 void I2C_SendData(uint8_t Data)
1543                     ; 459 {
1544                     .text:	section	.text,new
1545  0000               _I2C_SendData:
1549                     ; 461   I2C->DR = Data;
1551  0000 c75216        	ld	21014,a
1552                     ; 462 }
1555  0003 81            	ret	
1776                     ; 578 ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
1776                     ; 579 {
1777                     .text:	section	.text,new
1778  0000               _I2C_CheckEvent:
1780  0000 89            	pushw	x
1781  0001 5206          	subw	sp,#6
1782       00000006      OFST:	set	6
1785                     ; 580   __IO uint16_t lastevent = 0x00;
1787  0003 5f            	clrw	x
1788  0004 1f04          	ldw	(OFST-2,sp),x
1790                     ; 581   uint8_t flag1 = 0x00 ;
1792                     ; 582   uint8_t flag2 = 0x00;
1794                     ; 583   ErrorStatus status = ERROR;
1796                     ; 586   assert_param(IS_I2C_EVENT_OK(I2C_Event));
1798  0006 1e07          	ldw	x,(OFST+1,sp)
1799  0008 a30682        	cpw	x,#1666
1800  000b 275b          	jreq	L662
1801  000d a30202        	cpw	x,#514
1802  0010 2756          	jreq	L662
1803  0012 a31200        	cpw	x,#4608
1804  0015 2751          	jreq	L662
1805  0017 a30240        	cpw	x,#576
1806  001a 274c          	jreq	L662
1807  001c a30350        	cpw	x,#848
1808  001f 2747          	jreq	L662
1809  0021 a30684        	cpw	x,#1668
1810  0024 2742          	jreq	L662
1811  0026 a30794        	cpw	x,#1940
1812  0029 273d          	jreq	L662
1813  002b a30004        	cpw	x,#4
1814  002e 2738          	jreq	L662
1815  0030 a30010        	cpw	x,#16
1816  0033 2733          	jreq	L662
1817  0035 a30301        	cpw	x,#769
1818  0038 272e          	jreq	L662
1819  003a a30782        	cpw	x,#1922
1820  003d 2729          	jreq	L662
1821  003f a30302        	cpw	x,#770
1822  0042 2724          	jreq	L662
1823  0044 a30340        	cpw	x,#832
1824  0047 271f          	jreq	L662
1825  0049 a30784        	cpw	x,#1924
1826  004c 271a          	jreq	L662
1827  004e a30780        	cpw	x,#1920
1828  0051 2715          	jreq	L662
1829  0053 a30308        	cpw	x,#776
1830  0056 2710          	jreq	L662
1831  0058 ae024a        	ldw	x,#586
1832  005b 89            	pushw	x
1833  005c 5f            	clrw	x
1834  005d 89            	pushw	x
1835  005e ae000c        	ldw	x,#L511
1836  0061 cd0000        	call	_assert_failed
1838  0064 5b04          	addw	sp,#4
1839  0066 1e07          	ldw	x,(OFST+1,sp)
1840  0068               L662:
1841                     ; 588   if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
1843  0068 a30004        	cpw	x,#4
1844  006b 2609          	jrne	L706
1845                     ; 590     lastevent = I2C->SR2 & I2C_SR2_AF;
1847  006d c65218        	ld	a,21016
1848  0070 a404          	and	a,#4
1849  0072 5f            	clrw	x
1850  0073 97            	ld	xl,a
1852  0074 201a          	jra	L116
1853  0076               L706:
1854                     ; 594     flag1 = I2C->SR1;
1856  0076 c65217        	ld	a,21015
1857  0079 6b03          	ld	(OFST-3,sp),a
1859                     ; 595     flag2 = I2C->SR3;
1861  007b c65219        	ld	a,21017
1862  007e 6b06          	ld	(OFST+0,sp),a
1864                     ; 596     lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
1866  0080 5f            	clrw	x
1867  0081 7b03          	ld	a,(OFST-3,sp)
1868  0083 97            	ld	xl,a
1869  0084 1f01          	ldw	(OFST-5,sp),x
1871  0086 5f            	clrw	x
1872  0087 7b06          	ld	a,(OFST+0,sp)
1873  0089 97            	ld	xl,a
1874  008a 7b02          	ld	a,(OFST-4,sp)
1875  008c 01            	rrwa	x,a
1876  008d 1a01          	or	a,(OFST-5,sp)
1877  008f 01            	rrwa	x,a
1878  0090               L116:
1879  0090 1f04          	ldw	(OFST-2,sp),x
1881                     ; 599   if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
1883  0092 1e04          	ldw	x,(OFST-2,sp)
1884  0094 01            	rrwa	x,a
1885  0095 1408          	and	a,(OFST+2,sp)
1886  0097 01            	rrwa	x,a
1887  0098 1407          	and	a,(OFST+1,sp)
1888  009a 01            	rrwa	x,a
1889  009b 1307          	cpw	x,(OFST+1,sp)
1890  009d 2604          	jrne	L316
1891                     ; 602     status = SUCCESS;
1893  009f a601          	ld	a,#1
1896  00a1 2001          	jra	L516
1897  00a3               L316:
1898                     ; 607     status = ERROR;
1900  00a3 4f            	clr	a
1902  00a4               L516:
1903                     ; 611   return status;
1907  00a4 5b08          	addw	sp,#8
1908  00a6 81            	ret	
1957                     ; 628 I2C_Event_TypeDef I2C_GetLastEvent(void)
1957                     ; 629 {
1958                     .text:	section	.text,new
1959  0000               _I2C_GetLastEvent:
1961  0000 5206          	subw	sp,#6
1962       00000006      OFST:	set	6
1965                     ; 630   __IO uint16_t lastevent = 0;
1967  0002 5f            	clrw	x
1968  0003 1f05          	ldw	(OFST-1,sp),x
1970                     ; 631   uint16_t flag1 = 0;
1972                     ; 632   uint16_t flag2 = 0;
1974                     ; 634   if ((I2C->SR2 & I2C_SR2_AF) != 0x00)
1976  0005 7205521805    	btjf	21016,#2,L146
1977                     ; 636     lastevent = I2C_EVENT_SLAVE_ACK_FAILURE;
1979  000a ae0004        	ldw	x,#4
1981  000d 2013          	jra	L346
1982  000f               L146:
1983                     ; 641     flag1 = I2C->SR1;
1985  000f c65217        	ld	a,21015
1986  0012 97            	ld	xl,a
1987  0013 1f01          	ldw	(OFST-5,sp),x
1989                     ; 642     flag2 = I2C->SR3;
1991  0015 c65219        	ld	a,21017
1992  0018 5f            	clrw	x
1993  0019 97            	ld	xl,a
1994  001a 1f03          	ldw	(OFST-3,sp),x
1996                     ; 645     lastevent = ((uint16_t)((uint16_t)flag2 << 8) | (uint16_t)flag1);
1998  001c 7b02          	ld	a,(OFST-4,sp)
1999  001e 01            	rrwa	x,a
2000  001f 1a01          	or	a,(OFST-5,sp)
2001  0021 01            	rrwa	x,a
2002  0022               L346:
2003  0022 1f05          	ldw	(OFST-1,sp),x
2005                     ; 648   return (I2C_Event_TypeDef)lastevent;
2007  0024 1e05          	ldw	x,(OFST-1,sp)
2010  0026 5b06          	addw	sp,#6
2011  0028 81            	ret	
2223                     ; 679 FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
2223                     ; 680 {
2224                     .text:	section	.text,new
2225  0000               _I2C_GetFlagStatus:
2227  0000 89            	pushw	x
2228  0001 89            	pushw	x
2229       00000002      OFST:	set	2
2232                     ; 681   uint8_t tempreg = 0;
2234  0002 0f02          	clr	(OFST+0,sp)
2236                     ; 682   uint8_t regindex = 0;
2238                     ; 683   FlagStatus bitstatus = RESET;
2240                     ; 686   assert_param(IS_I2C_FLAG_OK(I2C_Flag));
2242  0004 a30180        	cpw	x,#384
2243  0007 2759          	jreq	L203
2244  0009 a30140        	cpw	x,#320
2245  000c 2754          	jreq	L203
2246  000e a30110        	cpw	x,#272
2247  0011 274f          	jreq	L203
2248  0013 a30108        	cpw	x,#264
2249  0016 274a          	jreq	L203
2250  0018 a30104        	cpw	x,#260
2251  001b 2745          	jreq	L203
2252  001d a30102        	cpw	x,#258
2253  0020 2740          	jreq	L203
2254  0022 a30101        	cpw	x,#257
2255  0025 273b          	jreq	L203
2256  0027 a30220        	cpw	x,#544
2257  002a 2736          	jreq	L203
2258  002c a30208        	cpw	x,#520
2259  002f 2731          	jreq	L203
2260  0031 a30204        	cpw	x,#516
2261  0034 272c          	jreq	L203
2262  0036 a30202        	cpw	x,#514
2263  0039 2727          	jreq	L203
2264  003b a30201        	cpw	x,#513
2265  003e 2722          	jreq	L203
2266  0040 a30310        	cpw	x,#784
2267  0043 271d          	jreq	L203
2268  0045 a30304        	cpw	x,#772
2269  0048 2718          	jreq	L203
2270  004a a30302        	cpw	x,#770
2271  004d 2713          	jreq	L203
2272  004f a30301        	cpw	x,#769
2273  0052 270e          	jreq	L203
2274  0054 ae02ae        	ldw	x,#686
2275  0057 89            	pushw	x
2276  0058 5f            	clrw	x
2277  0059 89            	pushw	x
2278  005a ae000c        	ldw	x,#L511
2279  005d cd0000        	call	_assert_failed
2281  0060 5b04          	addw	sp,#4
2282  0062               L203:
2283                     ; 689   regindex = (uint8_t)((uint16_t)I2C_Flag >> 8);
2285  0062 7b03          	ld	a,(OFST+1,sp)
2286  0064 6b01          	ld	(OFST-1,sp),a
2288                     ; 691   switch (regindex)
2291                     ; 708     default:
2291                     ; 709       break;
2292  0066 4a            	dec	a
2293  0067 2708          	jreq	L546
2294  0069 4a            	dec	a
2295  006a 270a          	jreq	L746
2296  006c 4a            	dec	a
2297  006d 270c          	jreq	L156
2298  006f 200f          	jra	L167
2299  0071               L546:
2300                     ; 694     case 0x01:
2300                     ; 695       tempreg = (uint8_t)I2C->SR1;
2302  0071 c65217        	ld	a,21015
2303                     ; 696       break;
2305  0074 2008          	jp	LC006
2306  0076               L746:
2307                     ; 699     case 0x02:
2307                     ; 700       tempreg = (uint8_t)I2C->SR2;
2309  0076 c65218        	ld	a,21016
2310                     ; 701       break;
2312  0079 2003          	jp	LC006
2313  007b               L156:
2314                     ; 704     case 0x03:
2314                     ; 705       tempreg = (uint8_t)I2C->SR3;
2316  007b c65219        	ld	a,21017
2317  007e               LC006:
2318  007e 6b02          	ld	(OFST+0,sp),a
2320                     ; 706       break;
2322                     ; 708     default:
2322                     ; 709       break;
2324  0080               L167:
2325                     ; 713   if ((tempreg & (uint8_t)I2C_Flag ) != 0)
2327  0080 7b04          	ld	a,(OFST+2,sp)
2328  0082 1502          	bcp	a,(OFST+0,sp)
2329  0084 2704          	jreq	L367
2330                     ; 716     bitstatus = SET;
2332  0086 a601          	ld	a,#1
2335  0088 2001          	jra	L567
2336  008a               L367:
2337                     ; 721     bitstatus = RESET;
2339  008a 4f            	clr	a
2341  008b               L567:
2342                     ; 724   return bitstatus;
2346  008b 5b04          	addw	sp,#4
2347  008d 81            	ret	
2390                     ; 759 void I2C_ClearFlag(I2C_Flag_TypeDef I2C_FLAG)
2390                     ; 760 {
2391                     .text:	section	.text,new
2392  0000               _I2C_ClearFlag:
2394  0000 89            	pushw	x
2395  0001 89            	pushw	x
2396       00000002      OFST:	set	2
2399                     ; 761   uint16_t flagpos = 0;
2401                     ; 763   assert_param(IS_I2C_CLEAR_FLAG_OK(I2C_FLAG));
2403  0002 01            	rrwa	x,a
2404  0003 9f            	ld	a,xl
2405  0004 a4fd          	and	a,#253
2406  0006 97            	ld	xl,a
2407  0007 4f            	clr	a
2408  0008 02            	rlwa	x,a
2409  0009 5d            	tnzw	x
2410  000a 2604          	jrne	L013
2411  000c 1e03          	ldw	x,(OFST+1,sp)
2412  000e 260e          	jrne	L213
2413  0010               L013:
2414  0010 ae02fb        	ldw	x,#763
2415  0013 89            	pushw	x
2416  0014 5f            	clrw	x
2417  0015 89            	pushw	x
2418  0016 ae000c        	ldw	x,#L511
2419  0019 cd0000        	call	_assert_failed
2421  001c 5b04          	addw	sp,#4
2422  001e               L213:
2423                     ; 766   flagpos = (uint16_t)I2C_FLAG & FLAG_Mask;
2425  001e 7b04          	ld	a,(OFST+2,sp)
2426  0020 5f            	clrw	x
2427  0021 02            	rlwa	x,a
2428  0022 1f01          	ldw	(OFST-1,sp),x
2430                     ; 768   I2C->SR2 = (uint8_t)((uint16_t)(~flagpos));
2432  0024 7b02          	ld	a,(OFST+0,sp)
2433  0026 43            	cpl	a
2434  0027 c75218        	ld	21016,a
2435                     ; 769 }
2438  002a 5b04          	addw	sp,#4
2439  002c 81            	ret	
2604                     ; 791 ITStatus I2C_GetITStatus(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2604                     ; 792 {
2605                     .text:	section	.text,new
2606  0000               _I2C_GetITStatus:
2608  0000 89            	pushw	x
2609  0001 5204          	subw	sp,#4
2610       00000004      OFST:	set	4
2613                     ; 793   ITStatus bitstatus = RESET;
2615                     ; 794   __IO uint8_t enablestatus = 0;
2617  0003 0f03          	clr	(OFST-1,sp)
2619                     ; 795   uint16_t tempregister = 0;
2621                     ; 798     assert_param(IS_I2C_ITPENDINGBIT_OK(I2C_ITPendingBit));
2623  0005 a31680        	cpw	x,#5760
2624  0008 2745          	jreq	L423
2625  000a a31640        	cpw	x,#5696
2626  000d 2740          	jreq	L423
2627  000f a31210        	cpw	x,#4624
2628  0012 273b          	jreq	L423
2629  0014 a31208        	cpw	x,#4616
2630  0017 2736          	jreq	L423
2631  0019 a31204        	cpw	x,#4612
2632  001c 2731          	jreq	L423
2633  001e a31202        	cpw	x,#4610
2634  0021 272c          	jreq	L423
2635  0023 a31201        	cpw	x,#4609
2636  0026 2727          	jreq	L423
2637  0028 a32220        	cpw	x,#8736
2638  002b 2722          	jreq	L423
2639  002d a32108        	cpw	x,#8456
2640  0030 271d          	jreq	L423
2641  0032 a32104        	cpw	x,#8452
2642  0035 2718          	jreq	L423
2643  0037 a32102        	cpw	x,#8450
2644  003a 2713          	jreq	L423
2645  003c a32101        	cpw	x,#8449
2646  003f 270e          	jreq	L423
2647  0041 ae031e        	ldw	x,#798
2648  0044 89            	pushw	x
2649  0045 5f            	clrw	x
2650  0046 89            	pushw	x
2651  0047 ae000c        	ldw	x,#L511
2652  004a cd0000        	call	_assert_failed
2654  004d 5b04          	addw	sp,#4
2655  004f               L423:
2656                     ; 800   tempregister = (uint8_t)( ((uint16_t)((uint16_t)I2C_ITPendingBit & ITEN_Mask)) >> 8);
2658  004f 7b05          	ld	a,(OFST+1,sp)
2659  0051 a407          	and	a,#7
2660  0053 5f            	clrw	x
2661  0054 97            	ld	xl,a
2662  0055 1f01          	ldw	(OFST-3,sp),x
2664                     ; 803   enablestatus = (uint8_t)(I2C->ITR & ( uint8_t)tempregister);
2666  0057 c6521a        	ld	a,21018
2667  005a 1402          	and	a,(OFST-2,sp)
2668  005c 6b03          	ld	(OFST-1,sp),a
2670                     ; 805   if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
2672  005e 7b05          	ld	a,(OFST+1,sp)
2673  0060 a430          	and	a,#48
2674  0062 97            	ld	xl,a
2675  0063 4f            	clr	a
2676  0064 02            	rlwa	x,a
2677  0065 a30100        	cpw	x,#256
2678  0068 260d          	jrne	L3701
2679                     ; 808     if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2681  006a c65217        	ld	a,21015
2682  006d 1506          	bcp	a,(OFST+2,sp)
2683  006f 2715          	jreq	L3011
2685  0071 0d03          	tnz	(OFST-1,sp)
2686  0073 2711          	jreq	L3011
2687                     ; 811       bitstatus = SET;
2689  0075 200b          	jp	LC008
2690                     ; 816       bitstatus = RESET;
2691  0077               L3701:
2692                     ; 822     if (((I2C->SR2 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2694  0077 c65218        	ld	a,21016
2695  007a 1506          	bcp	a,(OFST+2,sp)
2696  007c 2708          	jreq	L3011
2698  007e 0d03          	tnz	(OFST-1,sp)
2699  0080 2704          	jreq	L3011
2700                     ; 825       bitstatus = SET;
2702  0082               LC008:
2704  0082 a601          	ld	a,#1
2707  0084 2001          	jra	L1011
2708  0086               L3011:
2709                     ; 830       bitstatus = RESET;
2712  0086 4f            	clr	a
2714  0087               L1011:
2715                     ; 834   return  bitstatus;
2719  0087 5b06          	addw	sp,#6
2720  0089 81            	ret	
2764                     ; 871 void I2C_ClearITPendingBit(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2764                     ; 872 {
2765                     .text:	section	.text,new
2766  0000               _I2C_ClearITPendingBit:
2768  0000 89            	pushw	x
2769  0001 89            	pushw	x
2770       00000002      OFST:	set	2
2773                     ; 873   uint16_t flagpos = 0;
2775                     ; 876   assert_param(IS_I2C_CLEAR_ITPENDINGBIT_OK(I2C_ITPendingBit));
2777  0002 a32220        	cpw	x,#8736
2778  0005 2722          	jreq	L633
2779  0007 a32108        	cpw	x,#8456
2780  000a 271d          	jreq	L633
2781  000c a32104        	cpw	x,#8452
2782  000f 2718          	jreq	L633
2783  0011 a32102        	cpw	x,#8450
2784  0014 2713          	jreq	L633
2785  0016 a32101        	cpw	x,#8449
2786  0019 270e          	jreq	L633
2787  001b ae036c        	ldw	x,#876
2788  001e 89            	pushw	x
2789  001f 5f            	clrw	x
2790  0020 89            	pushw	x
2791  0021 ae000c        	ldw	x,#L511
2792  0024 cd0000        	call	_assert_failed
2794  0027 5b04          	addw	sp,#4
2795  0029               L633:
2796                     ; 879   flagpos = (uint16_t)I2C_ITPendingBit & FLAG_Mask;
2798  0029 7b04          	ld	a,(OFST+2,sp)
2799  002b 5f            	clrw	x
2800  002c 02            	rlwa	x,a
2801  002d 1f01          	ldw	(OFST-1,sp),x
2803                     ; 882   I2C->SR2 = (uint8_t)((uint16_t)~flagpos);
2805  002f 7b02          	ld	a,(OFST+0,sp)
2806  0031 43            	cpl	a
2807  0032 c75218        	ld	21016,a
2808                     ; 883 }
2811  0035 5b04          	addw	sp,#4
2812  0037 81            	ret	
2825                     	xdef	_I2C_ClearITPendingBit
2826                     	xdef	_I2C_GetITStatus
2827                     	xdef	_I2C_ClearFlag
2828                     	xdef	_I2C_GetFlagStatus
2829                     	xdef	_I2C_GetLastEvent
2830                     	xdef	_I2C_CheckEvent
2831                     	xdef	_I2C_SendData
2832                     	xdef	_I2C_Send7bitAddress
2833                     	xdef	_I2C_ReceiveData
2834                     	xdef	_I2C_ITConfig
2835                     	xdef	_I2C_FastModeDutyCycleConfig
2836                     	xdef	_I2C_AcknowledgeConfig
2837                     	xdef	_I2C_StretchClockCmd
2838                     	xdef	_I2C_SoftwareResetCmd
2839                     	xdef	_I2C_GenerateSTOP
2840                     	xdef	_I2C_GenerateSTART
2841                     	xdef	_I2C_GeneralCallCmd
2842                     	xdef	_I2C_Cmd
2843                     	xdef	_I2C_Init
2844                     	xdef	_I2C_DeInit
2845                     	xref	_assert_failed
2846                     	switch	.const
2847  000c               L511:
2848  000c 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
2849  001e 6965735c7374  	dc.b	"ies\stm8s_stdperip"
2850  0030 685f64726976  	dc.b	"h_driver\src\stm8s"
2851  0042 5f6932632e63  	dc.b	"_i2c.c",0
2852                     	xref.b	c_lreg
2853                     	xref.b	c_x
2873                     	xref	c_sdivx
2874                     	xref	c_ludv
2875                     	xref	c_rtol
2876                     	xref	c_smul
2877                     	xref	c_lmul
2878                     	xref	c_lcmp
2879                     	xref	c_ltor
2880                     	xref	c_lzmp
2881                     	end
