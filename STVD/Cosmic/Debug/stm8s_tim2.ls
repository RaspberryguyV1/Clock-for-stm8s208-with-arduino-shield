   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
   4                     ; Optimizer V4.5.6 - 18 Jul 2023
  50                     ; 52 void TIM2_DeInit(void)
  50                     ; 53 {
  52                     .text:	section	.text,new
  53  0000               _TIM2_DeInit:
  57                     ; 54   TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
  59  0000 725f5300      	clr	21248
  60                     ; 55   TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
  62  0004 725f5301      	clr	21249
  63                     ; 56   TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
  65  0008 725f5303      	clr	21251
  66                     ; 59   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  68  000c 725f5308      	clr	21256
  69                     ; 60   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  71  0010 725f5309      	clr	21257
  72                     ; 64   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  74  0014 725f5308      	clr	21256
  75                     ; 65   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  77  0018 725f5309      	clr	21257
  78                     ; 66   TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
  80  001c 725f5305      	clr	21253
  81                     ; 67   TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
  83  0020 725f5306      	clr	21254
  84                     ; 68   TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
  86  0024 725f5307      	clr	21255
  87                     ; 69   TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
  89  0028 725f530a      	clr	21258
  90                     ; 70   TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
  92  002c 725f530b      	clr	21259
  93                     ; 71   TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
  95  0030 725f530c      	clr	21260
  96                     ; 72   TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
  98  0034 35ff530d      	mov	21261,#255
  99                     ; 73   TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
 101  0038 35ff530e      	mov	21262,#255
 102                     ; 74   TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
 104  003c 725f530f      	clr	21263
 105                     ; 75   TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
 107  0040 725f5310      	clr	21264
 108                     ; 76   TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
 110  0044 725f5311      	clr	21265
 111                     ; 77   TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
 113  0048 725f5312      	clr	21266
 114                     ; 78   TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
 116  004c 725f5313      	clr	21267
 117                     ; 79   TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
 119  0050 725f5314      	clr	21268
 120                     ; 80   TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
 122  0054 725f5302      	clr	21250
 123                     ; 81 }
 126  0058 81            	ret	
 292                     ; 89 void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
 292                     ; 90                         uint16_t TIM2_Period)
 292                     ; 91 {
 293                     .text:	section	.text,new
 294  0000               _TIM2_TimeBaseInit:
 296       ffffffff      OFST: set -1
 299                     ; 93   TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
 301  0000 c7530c        	ld	21260,a
 302                     ; 95   TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
 304  0003 7b03          	ld	a,(OFST+4,sp)
 305  0005 c7530d        	ld	21261,a
 306                     ; 96   TIM2->ARRL = (uint8_t)(TIM2_Period);
 308  0008 7b04          	ld	a,(OFST+5,sp)
 309  000a c7530e        	ld	21262,a
 310                     ; 97 }
 313  000d 81            	ret	
 469                     ; 108 void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 469                     ; 109                   TIM2_OutputState_TypeDef TIM2_OutputState,
 469                     ; 110                   uint16_t TIM2_Pulse,
 469                     ; 111                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 469                     ; 112 {
 470                     .text:	section	.text,new
 471  0000               _TIM2_OC1Init:
 473  0000 89            	pushw	x
 474  0001 88            	push	a
 475       00000001      OFST:	set	1
 478                     ; 114   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 480  0002 9e            	ld	a,xh
 481  0003 4d            	tnz	a
 482  0004 271e          	jreq	L61
 483  0006 9e            	ld	a,xh
 484  0007 a110          	cp	a,#16
 485  0009 2719          	jreq	L61
 486  000b 9e            	ld	a,xh
 487  000c a120          	cp	a,#32
 488  000e 2714          	jreq	L61
 489  0010 9e            	ld	a,xh
 490  0011 a130          	cp	a,#48
 491  0013 270f          	jreq	L61
 492  0015 9e            	ld	a,xh
 493  0016 a160          	cp	a,#96
 494  0018 270a          	jreq	L61
 495  001a 9e            	ld	a,xh
 496  001b a170          	cp	a,#112
 497  001d 2705          	jreq	L61
 498  001f ae0072        	ldw	x,#114
 499  0022 ad4b          	call	LC001
 500  0024               L61:
 501                     ; 115   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 503  0024 7b03          	ld	a,(OFST+2,sp)
 504  0026 2709          	jreq	L62
 505  0028 a111          	cp	a,#17
 506  002a 2705          	jreq	L62
 507  002c ae0073        	ldw	x,#115
 508  002f ad3e          	call	LC001
 509  0031               L62:
 510                     ; 116   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 512  0031 7b08          	ld	a,(OFST+7,sp)
 513  0033 2709          	jreq	L63
 514  0035 a122          	cp	a,#34
 515  0037 2705          	jreq	L63
 516  0039 ae0074        	ldw	x,#116
 517  003c ad31          	call	LC001
 518  003e               L63:
 519                     ; 119   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
 521  003e c65308        	ld	a,21256
 522  0041 a4fc          	and	a,#252
 523  0043 c75308        	ld	21256,a
 524                     ; 121   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
 524                     ; 122                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
 526  0046 7b08          	ld	a,(OFST+7,sp)
 527  0048 a402          	and	a,#2
 528  004a 6b01          	ld	(OFST+0,sp),a
 530  004c 7b03          	ld	a,(OFST+2,sp)
 531  004e a401          	and	a,#1
 532  0050 1a01          	or	a,(OFST+0,sp)
 533  0052 ca5308        	or	a,21256
 534  0055 c75308        	ld	21256,a
 535                     ; 125   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
 535                     ; 126                           (uint8_t)TIM2_OCMode);
 537  0058 c65305        	ld	a,21253
 538  005b a48f          	and	a,#143
 539  005d 1a02          	or	a,(OFST+1,sp)
 540  005f c75305        	ld	21253,a
 541                     ; 129   TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
 543  0062 7b06          	ld	a,(OFST+5,sp)
 544  0064 c7530f        	ld	21263,a
 545                     ; 130   TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
 547  0067 7b07          	ld	a,(OFST+6,sp)
 548  0069 c75310        	ld	21264,a
 549                     ; 131 }
 552  006c 5b03          	addw	sp,#3
 553  006e 81            	ret	
 554  006f               LC001:
 555  006f 89            	pushw	x
 556  0070 5f            	clrw	x
 557  0071 89            	pushw	x
 558  0072 ae0000        	ldw	x,#L302
 559  0075 cd0000        	call	_assert_failed
 561  0078 5b04          	addw	sp,#4
 562  007a 81            	ret	
 625                     ; 142 void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 625                     ; 143                   TIM2_OutputState_TypeDef TIM2_OutputState,
 625                     ; 144                   uint16_t TIM2_Pulse,
 625                     ; 145                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 625                     ; 146 {
 626                     .text:	section	.text,new
 627  0000               _TIM2_OC2Init:
 629  0000 89            	pushw	x
 630  0001 88            	push	a
 631       00000001      OFST:	set	1
 634                     ; 148   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 636  0002 9e            	ld	a,xh
 637  0003 4d            	tnz	a
 638  0004 271e          	jreq	L05
 639  0006 9e            	ld	a,xh
 640  0007 a110          	cp	a,#16
 641  0009 2719          	jreq	L05
 642  000b 9e            	ld	a,xh
 643  000c a120          	cp	a,#32
 644  000e 2714          	jreq	L05
 645  0010 9e            	ld	a,xh
 646  0011 a130          	cp	a,#48
 647  0013 270f          	jreq	L05
 648  0015 9e            	ld	a,xh
 649  0016 a160          	cp	a,#96
 650  0018 270a          	jreq	L05
 651  001a 9e            	ld	a,xh
 652  001b a170          	cp	a,#112
 653  001d 2705          	jreq	L05
 654  001f ae0094        	ldw	x,#148
 655  0022 ad4b          	call	LC002
 656  0024               L05:
 657                     ; 149   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 659  0024 7b03          	ld	a,(OFST+2,sp)
 660  0026 2709          	jreq	L06
 661  0028 a111          	cp	a,#17
 662  002a 2705          	jreq	L06
 663  002c ae0095        	ldw	x,#149
 664  002f ad3e          	call	LC002
 665  0031               L06:
 666                     ; 150   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 668  0031 7b08          	ld	a,(OFST+7,sp)
 669  0033 2709          	jreq	L07
 670  0035 a122          	cp	a,#34
 671  0037 2705          	jreq	L07
 672  0039 ae0096        	ldw	x,#150
 673  003c ad31          	call	LC002
 674  003e               L07:
 675                     ; 154   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
 677  003e c65308        	ld	a,21256
 678  0041 a4cf          	and	a,#207
 679  0043 c75308        	ld	21256,a
 680                     ; 156   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
 680                     ; 157                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
 682  0046 7b08          	ld	a,(OFST+7,sp)
 683  0048 a420          	and	a,#32
 684  004a 6b01          	ld	(OFST+0,sp),a
 686  004c 7b03          	ld	a,(OFST+2,sp)
 687  004e a410          	and	a,#16
 688  0050 1a01          	or	a,(OFST+0,sp)
 689  0052 ca5308        	or	a,21256
 690  0055 c75308        	ld	21256,a
 691                     ; 161   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
 691                     ; 162                           (uint8_t)TIM2_OCMode);
 693  0058 c65306        	ld	a,21254
 694  005b a48f          	and	a,#143
 695  005d 1a02          	or	a,(OFST+1,sp)
 696  005f c75306        	ld	21254,a
 697                     ; 166   TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
 699  0062 7b06          	ld	a,(OFST+5,sp)
 700  0064 c75311        	ld	21265,a
 701                     ; 167   TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
 703  0067 7b07          	ld	a,(OFST+6,sp)
 704  0069 c75312        	ld	21266,a
 705                     ; 168 }
 708  006c 5b03          	addw	sp,#3
 709  006e 81            	ret	
 710  006f               LC002:
 711  006f 89            	pushw	x
 712  0070 5f            	clrw	x
 713  0071 89            	pushw	x
 714  0072 ae0000        	ldw	x,#L302
 715  0075 cd0000        	call	_assert_failed
 717  0078 5b04          	addw	sp,#4
 718  007a 81            	ret	
 781                     ; 179 void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 781                     ; 180                   TIM2_OutputState_TypeDef TIM2_OutputState,
 781                     ; 181                   uint16_t TIM2_Pulse,
 781                     ; 182                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 781                     ; 183 {
 782                     .text:	section	.text,new
 783  0000               _TIM2_OC3Init:
 785  0000 89            	pushw	x
 786  0001 88            	push	a
 787       00000001      OFST:	set	1
 790                     ; 185   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 792  0002 9e            	ld	a,xh
 793  0003 4d            	tnz	a
 794  0004 271e          	jreq	L201
 795  0006 9e            	ld	a,xh
 796  0007 a110          	cp	a,#16
 797  0009 2719          	jreq	L201
 798  000b 9e            	ld	a,xh
 799  000c a120          	cp	a,#32
 800  000e 2714          	jreq	L201
 801  0010 9e            	ld	a,xh
 802  0011 a130          	cp	a,#48
 803  0013 270f          	jreq	L201
 804  0015 9e            	ld	a,xh
 805  0016 a160          	cp	a,#96
 806  0018 270a          	jreq	L201
 807  001a 9e            	ld	a,xh
 808  001b a170          	cp	a,#112
 809  001d 2705          	jreq	L201
 810  001f ae00b9        	ldw	x,#185
 811  0022 ad4b          	call	LC003
 812  0024               L201:
 813                     ; 186   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 815  0024 7b03          	ld	a,(OFST+2,sp)
 816  0026 2709          	jreq	L211
 817  0028 a111          	cp	a,#17
 818  002a 2705          	jreq	L211
 819  002c ae00ba        	ldw	x,#186
 820  002f ad3e          	call	LC003
 821  0031               L211:
 822                     ; 187   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 824  0031 7b08          	ld	a,(OFST+7,sp)
 825  0033 2709          	jreq	L221
 826  0035 a122          	cp	a,#34
 827  0037 2705          	jreq	L221
 828  0039 ae00bb        	ldw	x,#187
 829  003c ad31          	call	LC003
 830  003e               L221:
 831                     ; 189   TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
 833  003e c65309        	ld	a,21257
 834  0041 a4fc          	and	a,#252
 835  0043 c75309        	ld	21257,a
 836                     ; 191   TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
 836                     ; 192                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
 838  0046 7b08          	ld	a,(OFST+7,sp)
 839  0048 a402          	and	a,#2
 840  004a 6b01          	ld	(OFST+0,sp),a
 842  004c 7b03          	ld	a,(OFST+2,sp)
 843  004e a401          	and	a,#1
 844  0050 1a01          	or	a,(OFST+0,sp)
 845  0052 ca5309        	or	a,21257
 846  0055 c75309        	ld	21257,a
 847                     ; 195   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
 847                     ; 196                           (uint8_t)TIM2_OCMode);
 849  0058 c65307        	ld	a,21255
 850  005b a48f          	and	a,#143
 851  005d 1a02          	or	a,(OFST+1,sp)
 852  005f c75307        	ld	21255,a
 853                     ; 199   TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
 855  0062 7b06          	ld	a,(OFST+5,sp)
 856  0064 c75313        	ld	21267,a
 857                     ; 200   TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
 859  0067 7b07          	ld	a,(OFST+6,sp)
 860  0069 c75314        	ld	21268,a
 861                     ; 201 }
 864  006c 5b03          	addw	sp,#3
 865  006e 81            	ret	
 866  006f               LC003:
 867  006f 89            	pushw	x
 868  0070 5f            	clrw	x
 869  0071 89            	pushw	x
 870  0072 ae0000        	ldw	x,#L302
 871  0075 cd0000        	call	_assert_failed
 873  0078 5b04          	addw	sp,#4
 874  007a 81            	ret	
1066                     ; 212 void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
1066                     ; 213                  TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1066                     ; 214                  TIM2_ICSelection_TypeDef TIM2_ICSelection,
1066                     ; 215                  TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1066                     ; 216                  uint8_t TIM2_ICFilter)
1066                     ; 217 {
1067                     .text:	section	.text,new
1068  0000               _TIM2_ICInit:
1070  0000 89            	pushw	x
1071       00000000      OFST:	set	0
1074                     ; 219   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
1076  0001 9e            	ld	a,xh
1077  0002 4d            	tnz	a
1078  0003 270f          	jreq	L431
1079  0005 9e            	ld	a,xh
1080  0006 4a            	dec	a
1081  0007 270b          	jreq	L431
1082  0009 9e            	ld	a,xh
1083  000a a102          	cp	a,#2
1084  000c 2706          	jreq	L431
1085  000e ae00db        	ldw	x,#219
1086  0011 cd0097        	call	LC004
1087  0014               L431:
1088                     ; 220   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1090  0014 7b02          	ld	a,(OFST+2,sp)
1091  0016 2709          	jreq	L441
1092  0018 a144          	cp	a,#68
1093  001a 2705          	jreq	L441
1094  001c ae00dc        	ldw	x,#220
1095  001f ad76          	call	LC004
1096  0021               L441:
1097                     ; 221   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1099  0021 7b05          	ld	a,(OFST+5,sp)
1100  0023 a101          	cp	a,#1
1101  0025 270d          	jreq	L451
1102  0027 a102          	cp	a,#2
1103  0029 2709          	jreq	L451
1104  002b a103          	cp	a,#3
1105  002d 2705          	jreq	L451
1106  002f ae00dd        	ldw	x,#221
1107  0032 ad63          	call	LC004
1108  0034               L451:
1109                     ; 222   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1111  0034 7b06          	ld	a,(OFST+6,sp)
1112  0036 2711          	jreq	L461
1113  0038 a104          	cp	a,#4
1114  003a 270d          	jreq	L461
1115  003c a108          	cp	a,#8
1116  003e 2709          	jreq	L461
1117  0040 a10c          	cp	a,#12
1118  0042 2705          	jreq	L461
1119  0044 ae00de        	ldw	x,#222
1120  0047 ad4e          	call	LC004
1121  0049               L461:
1122                     ; 223   assert_param(IS_TIM2_IC_FILTER_OK(TIM2_ICFilter));
1124  0049 7b07          	ld	a,(OFST+7,sp)
1125  004b a110          	cp	a,#16
1126  004d 2505          	jrult	L271
1127  004f ae00df        	ldw	x,#223
1128  0052 ad43          	call	LC004
1129  0054               L271:
1130                     ; 225   if (TIM2_Channel == TIM2_CHANNEL_1)
1132  0054 7b01          	ld	a,(OFST+1,sp)
1133  0056 2614          	jrne	L173
1134                     ; 228     TI1_Config((uint8_t)TIM2_ICPolarity,
1134                     ; 229                (uint8_t)TIM2_ICSelection,
1134                     ; 230                (uint8_t)TIM2_ICFilter);
1136  0058 7b07          	ld	a,(OFST+7,sp)
1137  005a 88            	push	a
1138  005b 7b06          	ld	a,(OFST+6,sp)
1139  005d 97            	ld	xl,a
1140  005e 7b03          	ld	a,(OFST+3,sp)
1141  0060 95            	ld	xh,a
1142  0061 cd0000        	call	L3_TI1_Config
1144  0064 84            	pop	a
1145                     ; 233     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1147  0065 7b06          	ld	a,(OFST+6,sp)
1148  0067 cd0000        	call	_TIM2_SetIC1Prescaler
1151  006a 2029          	jra	L373
1152  006c               L173:
1153                     ; 235   else if (TIM2_Channel == TIM2_CHANNEL_2)
1155  006c 4a            	dec	a
1156  006d 2614          	jrne	L573
1157                     ; 238     TI2_Config((uint8_t)TIM2_ICPolarity,
1157                     ; 239                (uint8_t)TIM2_ICSelection,
1157                     ; 240                (uint8_t)TIM2_ICFilter);
1159  006f 7b07          	ld	a,(OFST+7,sp)
1160  0071 88            	push	a
1161  0072 7b06          	ld	a,(OFST+6,sp)
1162  0074 97            	ld	xl,a
1163  0075 7b03          	ld	a,(OFST+3,sp)
1164  0077 95            	ld	xh,a
1165  0078 cd0000        	call	L5_TI2_Config
1167  007b 84            	pop	a
1168                     ; 243     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1170  007c 7b06          	ld	a,(OFST+6,sp)
1171  007e cd0000        	call	_TIM2_SetIC2Prescaler
1174  0081 2012          	jra	L373
1175  0083               L573:
1176                     ; 248     TI3_Config((uint8_t)TIM2_ICPolarity,
1176                     ; 249                (uint8_t)TIM2_ICSelection,
1176                     ; 250                (uint8_t)TIM2_ICFilter);
1178  0083 7b07          	ld	a,(OFST+7,sp)
1179  0085 88            	push	a
1180  0086 7b06          	ld	a,(OFST+6,sp)
1181  0088 97            	ld	xl,a
1182  0089 7b03          	ld	a,(OFST+3,sp)
1183  008b 95            	ld	xh,a
1184  008c cd0000        	call	L7_TI3_Config
1186  008f 84            	pop	a
1187                     ; 253     TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
1189  0090 7b06          	ld	a,(OFST+6,sp)
1190  0092 cd0000        	call	_TIM2_SetIC3Prescaler
1192  0095               L373:
1193                     ; 255 }
1196  0095 85            	popw	x
1197  0096 81            	ret	
1198  0097               LC004:
1199  0097 89            	pushw	x
1200  0098 5f            	clrw	x
1201  0099 89            	pushw	x
1202  009a ae0000        	ldw	x,#L302
1203  009d cd0000        	call	_assert_failed
1205  00a0 5b04          	addw	sp,#4
1206  00a2 81            	ret	
1297                     ; 266 void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
1297                     ; 267                      TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1297                     ; 268                      TIM2_ICSelection_TypeDef TIM2_ICSelection,
1297                     ; 269                      TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1297                     ; 270                      uint8_t TIM2_ICFilter)
1297                     ; 271 {
1298                     .text:	section	.text,new
1299  0000               _TIM2_PWMIConfig:
1301  0000 89            	pushw	x
1302  0001 89            	pushw	x
1303       00000002      OFST:	set	2
1306                     ; 272   uint8_t icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1308                     ; 273   uint8_t icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1310                     ; 276   assert_param(IS_TIM2_PWMI_CHANNEL_OK(TIM2_Channel));
1312  0002 9e            	ld	a,xh
1313  0003 4d            	tnz	a
1314  0004 270a          	jreq	L022
1315  0006 9e            	ld	a,xh
1316  0007 4a            	dec	a
1317  0008 2706          	jreq	L022
1318  000a ae0114        	ldw	x,#276
1319  000d cd00b3        	call	LC005
1320  0010               L022:
1321                     ; 277   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1323  0010 7b04          	ld	a,(OFST+2,sp)
1324  0012 270a          	jreq	L032
1325  0014 a144          	cp	a,#68
1326  0016 2706          	jreq	L032
1327  0018 ae0115        	ldw	x,#277
1328  001b cd00b3        	call	LC005
1329  001e               L032:
1330                     ; 278   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1332  001e 7b07          	ld	a,(OFST+5,sp)
1333  0020 a101          	cp	a,#1
1334  0022 270e          	jreq	L042
1335  0024 a102          	cp	a,#2
1336  0026 270a          	jreq	L042
1337  0028 a103          	cp	a,#3
1338  002a 2706          	jreq	L042
1339  002c ae0116        	ldw	x,#278
1340  002f cd00b3        	call	LC005
1341  0032               L042:
1342                     ; 279   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1344  0032 7b08          	ld	a,(OFST+6,sp)
1345  0034 2711          	jreq	L052
1346  0036 a104          	cp	a,#4
1347  0038 270d          	jreq	L052
1348  003a a108          	cp	a,#8
1349  003c 2709          	jreq	L052
1350  003e a10c          	cp	a,#12
1351  0040 2705          	jreq	L052
1352  0042 ae0117        	ldw	x,#279
1353  0045 ad6c          	call	LC005
1354  0047               L052:
1355                     ; 282   if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
1357  0047 7b04          	ld	a,(OFST+2,sp)
1358  0049 a144          	cp	a,#68
1359  004b 2706          	jreq	L144
1360                     ; 284     icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
1362  004d a644          	ld	a,#68
1363  004f 6b01          	ld	(OFST-1,sp),a
1366  0051 2002          	jra	L344
1367  0053               L144:
1368                     ; 288     icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1370  0053 0f01          	clr	(OFST-1,sp)
1372  0055               L344:
1373                     ; 292   if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
1375  0055 7b07          	ld	a,(OFST+5,sp)
1376  0057 4a            	dec	a
1377  0058 2604          	jrne	L544
1378                     ; 294     icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
1380  005a a602          	ld	a,#2
1382  005c 2002          	jra	L744
1383  005e               L544:
1384                     ; 298     icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1386  005e a601          	ld	a,#1
1387  0060               L744:
1388  0060 6b02          	ld	(OFST+0,sp),a
1390                     ; 301   if (TIM2_Channel == TIM2_CHANNEL_1)
1392  0062 7b03          	ld	a,(OFST+1,sp)
1393  0064 2626          	jrne	L154
1394                     ; 304     TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1394                     ; 305                (uint8_t)TIM2_ICFilter);
1396  0066 7b09          	ld	a,(OFST+7,sp)
1397  0068 88            	push	a
1398  0069 7b08          	ld	a,(OFST+6,sp)
1399  006b 97            	ld	xl,a
1400  006c 7b05          	ld	a,(OFST+3,sp)
1401  006e 95            	ld	xh,a
1402  006f cd0000        	call	L3_TI1_Config
1404  0072 84            	pop	a
1405                     ; 308     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1407  0073 7b08          	ld	a,(OFST+6,sp)
1408  0075 cd0000        	call	_TIM2_SetIC1Prescaler
1410                     ; 311     TI2_Config(icpolarity, icselection, TIM2_ICFilter);
1412  0078 7b09          	ld	a,(OFST+7,sp)
1413  007a 88            	push	a
1414  007b 7b03          	ld	a,(OFST+1,sp)
1415  007d 97            	ld	xl,a
1416  007e 7b02          	ld	a,(OFST+0,sp)
1417  0080 95            	ld	xh,a
1418  0081 cd0000        	call	L5_TI2_Config
1420  0084 84            	pop	a
1421                     ; 314     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1423  0085 7b08          	ld	a,(OFST+6,sp)
1424  0087 cd0000        	call	_TIM2_SetIC2Prescaler
1427  008a 2024          	jra	L354
1428  008c               L154:
1429                     ; 319     TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1429                     ; 320                (uint8_t)TIM2_ICFilter);
1431  008c 7b09          	ld	a,(OFST+7,sp)
1432  008e 88            	push	a
1433  008f 7b08          	ld	a,(OFST+6,sp)
1434  0091 97            	ld	xl,a
1435  0092 7b05          	ld	a,(OFST+3,sp)
1436  0094 95            	ld	xh,a
1437  0095 cd0000        	call	L5_TI2_Config
1439  0098 84            	pop	a
1440                     ; 323     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1442  0099 7b08          	ld	a,(OFST+6,sp)
1443  009b cd0000        	call	_TIM2_SetIC2Prescaler
1445                     ; 326     TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
1447  009e 7b09          	ld	a,(OFST+7,sp)
1448  00a0 88            	push	a
1449  00a1 7b03          	ld	a,(OFST+1,sp)
1450  00a3 97            	ld	xl,a
1451  00a4 7b02          	ld	a,(OFST+0,sp)
1452  00a6 95            	ld	xh,a
1453  00a7 cd0000        	call	L3_TI1_Config
1455  00aa 84            	pop	a
1456                     ; 329     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1458  00ab 7b08          	ld	a,(OFST+6,sp)
1459  00ad cd0000        	call	_TIM2_SetIC1Prescaler
1461  00b0               L354:
1462                     ; 331 }
1465  00b0 5b04          	addw	sp,#4
1466  00b2 81            	ret	
1467  00b3               LC005:
1468  00b3 89            	pushw	x
1469  00b4 5f            	clrw	x
1470  00b5 89            	pushw	x
1471  00b6 ae0000        	ldw	x,#L302
1472  00b9 cd0000        	call	_assert_failed
1474  00bc 5b04          	addw	sp,#4
1475  00be 81            	ret	
1531                     ; 339 void TIM2_Cmd(FunctionalState NewState)
1531                     ; 340 {
1532                     .text:	section	.text,new
1533  0000               _TIM2_Cmd:
1535  0000 88            	push	a
1536       00000000      OFST:	set	0
1539                     ; 342   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1541  0001 4d            	tnz	a
1542  0002 2711          	jreq	L203
1543  0004 4a            	dec	a
1544  0005 270e          	jreq	L203
1545  0007 ae0156        	ldw	x,#342
1546  000a 89            	pushw	x
1547  000b 5f            	clrw	x
1548  000c 89            	pushw	x
1549  000d ae0000        	ldw	x,#L302
1550  0010 cd0000        	call	_assert_failed
1552  0013 5b04          	addw	sp,#4
1553  0015               L203:
1554                     ; 345   if (NewState != DISABLE)
1556  0015 7b01          	ld	a,(OFST+1,sp)
1557  0017 2706          	jreq	L305
1558                     ; 347     TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
1560  0019 72105300      	bset	21248,#0
1562  001d 2004          	jra	L505
1563  001f               L305:
1564                     ; 351     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
1566  001f 72115300      	bres	21248,#0
1567  0023               L505:
1568                     ; 353 }
1571  0023 84            	pop	a
1572  0024 81            	ret	
1652                     ; 368 void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
1652                     ; 369 {
1653                     .text:	section	.text,new
1654  0000               _TIM2_ITConfig:
1656  0000 89            	pushw	x
1657       00000000      OFST:	set	0
1660                     ; 371   assert_param(IS_TIM2_IT_OK(TIM2_IT));
1662  0001 9e            	ld	a,xh
1663  0002 4d            	tnz	a
1664  0003 2705          	jreq	L013
1665  0005 9e            	ld	a,xh
1666  0006 a110          	cp	a,#16
1667  0008 2505          	jrult	L213
1668  000a               L013:
1669  000a ae0173        	ldw	x,#371
1670  000d ad22          	call	LC006
1671  000f               L213:
1672                     ; 372   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1674  000f 7b02          	ld	a,(OFST+2,sp)
1675  0011 2708          	jreq	L223
1676  0013 4a            	dec	a
1677  0014 2705          	jreq	L223
1678  0016 ae0174        	ldw	x,#372
1679  0019 ad16          	call	LC006
1680  001b               L223:
1681                     ; 374   if (NewState != DISABLE)
1683  001b 7b02          	ld	a,(OFST+2,sp)
1684  001d 2707          	jreq	L545
1685                     ; 377     TIM2->IER |= (uint8_t)TIM2_IT;
1687  001f c65301        	ld	a,21249
1688  0022 1a01          	or	a,(OFST+1,sp)
1690  0024 2006          	jra	L745
1691  0026               L545:
1692                     ; 382     TIM2->IER &= (uint8_t)(~TIM2_IT);
1694  0026 7b01          	ld	a,(OFST+1,sp)
1695  0028 43            	cpl	a
1696  0029 c45301        	and	a,21249
1697  002c               L745:
1698  002c c75301        	ld	21249,a
1699                     ; 384 }
1702  002f 85            	popw	x
1703  0030 81            	ret	
1704  0031               LC006:
1705  0031 89            	pushw	x
1706  0032 5f            	clrw	x
1707  0033 89            	pushw	x
1708  0034 ae0000        	ldw	x,#L302
1709  0037 cd0000        	call	_assert_failed
1711  003a 5b04          	addw	sp,#4
1712  003c 81            	ret	
1749                     ; 392 void TIM2_UpdateDisableConfig(FunctionalState NewState)
1749                     ; 393 {
1750                     .text:	section	.text,new
1751  0000               _TIM2_UpdateDisableConfig:
1753  0000 88            	push	a
1754       00000000      OFST:	set	0
1757                     ; 395   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1759  0001 4d            	tnz	a
1760  0002 2711          	jreq	L433
1761  0004 4a            	dec	a
1762  0005 270e          	jreq	L433
1763  0007 ae018b        	ldw	x,#395
1764  000a 89            	pushw	x
1765  000b 5f            	clrw	x
1766  000c 89            	pushw	x
1767  000d ae0000        	ldw	x,#L302
1768  0010 cd0000        	call	_assert_failed
1770  0013 5b04          	addw	sp,#4
1771  0015               L433:
1772                     ; 398   if (NewState != DISABLE)
1774  0015 7b01          	ld	a,(OFST+1,sp)
1775  0017 2706          	jreq	L765
1776                     ; 400     TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
1778  0019 72125300      	bset	21248,#1
1780  001d 2004          	jra	L175
1781  001f               L765:
1782                     ; 404     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
1784  001f 72135300      	bres	21248,#1
1785  0023               L175:
1786                     ; 406 }
1789  0023 84            	pop	a
1790  0024 81            	ret	
1849                     ; 416 void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
1849                     ; 417 {
1850                     .text:	section	.text,new
1851  0000               _TIM2_UpdateRequestConfig:
1853  0000 88            	push	a
1854       00000000      OFST:	set	0
1857                     ; 419   assert_param(IS_TIM2_UPDATE_SOURCE_OK(TIM2_UpdateSource));
1859  0001 4d            	tnz	a
1860  0002 2711          	jreq	L643
1861  0004 4a            	dec	a
1862  0005 270e          	jreq	L643
1863  0007 ae01a3        	ldw	x,#419
1864  000a 89            	pushw	x
1865  000b 5f            	clrw	x
1866  000c 89            	pushw	x
1867  000d ae0000        	ldw	x,#L302
1868  0010 cd0000        	call	_assert_failed
1870  0013 5b04          	addw	sp,#4
1871  0015               L643:
1872                     ; 422   if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
1874  0015 7b01          	ld	a,(OFST+1,sp)
1875  0017 2706          	jreq	L126
1876                     ; 424     TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
1878  0019 72145300      	bset	21248,#2
1880  001d 2004          	jra	L326
1881  001f               L126:
1882                     ; 428     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
1884  001f 72155300      	bres	21248,#2
1885  0023               L326:
1886                     ; 430 }
1889  0023 84            	pop	a
1890  0024 81            	ret	
1948                     ; 440 void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
1948                     ; 441 {
1949                     .text:	section	.text,new
1950  0000               _TIM2_SelectOnePulseMode:
1952  0000 88            	push	a
1953       00000000      OFST:	set	0
1956                     ; 443   assert_param(IS_TIM2_OPM_MODE_OK(TIM2_OPMode));
1958  0001 a101          	cp	a,#1
1959  0003 2711          	jreq	L063
1960  0005 4d            	tnz	a
1961  0006 270e          	jreq	L063
1962  0008 ae01bb        	ldw	x,#443
1963  000b 89            	pushw	x
1964  000c 5f            	clrw	x
1965  000d 89            	pushw	x
1966  000e ae0000        	ldw	x,#L302
1967  0011 cd0000        	call	_assert_failed
1969  0014 5b04          	addw	sp,#4
1970  0016               L063:
1971                     ; 446   if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
1973  0016 7b01          	ld	a,(OFST+1,sp)
1974  0018 2706          	jreq	L356
1975                     ; 448     TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
1977  001a 72165300      	bset	21248,#3
1979  001e 2004          	jra	L556
1980  0020               L356:
1981                     ; 452     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
1983  0020 72175300      	bres	21248,#3
1984  0024               L556:
1985                     ; 454 }
1988  0024 84            	pop	a
1989  0025 81            	ret	
2058                     ; 484 void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
2058                     ; 485                           TIM2_PSCReloadMode_TypeDef TIM2_PSCReloadMode)
2058                     ; 486 {
2059                     .text:	section	.text,new
2060  0000               _TIM2_PrescalerConfig:
2062  0000 89            	pushw	x
2063       00000000      OFST:	set	0
2066                     ; 488   assert_param(IS_TIM2_PRESCALER_RELOAD_OK(TIM2_PSCReloadMode));
2068  0001 9f            	ld	a,xl
2069  0002 4d            	tnz	a
2070  0003 2709          	jreq	L273
2071  0005 9f            	ld	a,xl
2072  0006 4a            	dec	a
2073  0007 2705          	jreq	L273
2074  0009 ae01e8        	ldw	x,#488
2075  000c ad51          	call	LC007
2076  000e               L273:
2077                     ; 489   assert_param(IS_TIM2_PRESCALER_OK(Prescaler));
2079  000e 7b01          	ld	a,(OFST+1,sp)
2080  0010 2743          	jreq	L204
2081  0012 a101          	cp	a,#1
2082  0014 273f          	jreq	L204
2083  0016 a102          	cp	a,#2
2084  0018 273b          	jreq	L204
2085  001a a103          	cp	a,#3
2086  001c 2737          	jreq	L204
2087  001e a104          	cp	a,#4
2088  0020 2733          	jreq	L204
2089  0022 a105          	cp	a,#5
2090  0024 272f          	jreq	L204
2091  0026 a106          	cp	a,#6
2092  0028 272b          	jreq	L204
2093  002a a107          	cp	a,#7
2094  002c 2727          	jreq	L204
2095  002e a108          	cp	a,#8
2096  0030 2723          	jreq	L204
2097  0032 a109          	cp	a,#9
2098  0034 271f          	jreq	L204
2099  0036 a10a          	cp	a,#10
2100  0038 271b          	jreq	L204
2101  003a a10b          	cp	a,#11
2102  003c 2717          	jreq	L204
2103  003e a10c          	cp	a,#12
2104  0040 2713          	jreq	L204
2105  0042 a10d          	cp	a,#13
2106  0044 270f          	jreq	L204
2107  0046 a10e          	cp	a,#14
2108  0048 270b          	jreq	L204
2109  004a a10f          	cp	a,#15
2110  004c 2707          	jreq	L204
2111  004e ae01e9        	ldw	x,#489
2112  0051 ad0c          	call	LC007
2113  0053 7b01          	ld	a,(OFST+1,sp)
2114  0055               L204:
2115                     ; 492   TIM2->PSCR = (uint8_t)Prescaler;
2117  0055 c7530c        	ld	21260,a
2118                     ; 495   TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
2120  0058 7b02          	ld	a,(OFST+2,sp)
2121  005a c75304        	ld	21252,a
2122                     ; 496 }
2125  005d 85            	popw	x
2126  005e 81            	ret	
2127  005f               LC007:
2128  005f 89            	pushw	x
2129  0060 5f            	clrw	x
2130  0061 89            	pushw	x
2131  0062 ae0000        	ldw	x,#L302
2132  0065 cd0000        	call	_assert_failed
2134  0068 5b04          	addw	sp,#4
2135  006a 81            	ret	
2194                     ; 507 void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2194                     ; 508 {
2195                     .text:	section	.text,new
2196  0000               _TIM2_ForcedOC1Config:
2198  0000 88            	push	a
2199       00000000      OFST:	set	0
2202                     ; 510   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2204  0001 a150          	cp	a,#80
2205  0003 2712          	jreq	L414
2206  0005 a140          	cp	a,#64
2207  0007 270e          	jreq	L414
2208  0009 ae01fe        	ldw	x,#510
2209  000c 89            	pushw	x
2210  000d 5f            	clrw	x
2211  000e 89            	pushw	x
2212  000f ae0000        	ldw	x,#L302
2213  0012 cd0000        	call	_assert_failed
2215  0015 5b04          	addw	sp,#4
2216  0017               L414:
2217                     ; 513   TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
2217                     ; 514                             | (uint8_t)TIM2_ForcedAction);
2219  0017 c65305        	ld	a,21253
2220  001a a48f          	and	a,#143
2221  001c 1a01          	or	a,(OFST+1,sp)
2222  001e c75305        	ld	21253,a
2223                     ; 515 }
2226  0021 84            	pop	a
2227  0022 81            	ret	
2264                     ; 526 void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2264                     ; 527 {
2265                     .text:	section	.text,new
2266  0000               _TIM2_ForcedOC2Config:
2268  0000 88            	push	a
2269       00000000      OFST:	set	0
2272                     ; 529   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2274  0001 a150          	cp	a,#80
2275  0003 2712          	jreq	L624
2276  0005 a140          	cp	a,#64
2277  0007 270e          	jreq	L624
2278  0009 ae0211        	ldw	x,#529
2279  000c 89            	pushw	x
2280  000d 5f            	clrw	x
2281  000e 89            	pushw	x
2282  000f ae0000        	ldw	x,#L302
2283  0012 cd0000        	call	_assert_failed
2285  0015 5b04          	addw	sp,#4
2286  0017               L624:
2287                     ; 532   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
2287                     ; 533                           | (uint8_t)TIM2_ForcedAction);
2289  0017 c65306        	ld	a,21254
2290  001a a48f          	and	a,#143
2291  001c 1a01          	or	a,(OFST+1,sp)
2292  001e c75306        	ld	21254,a
2293                     ; 534 }
2296  0021 84            	pop	a
2297  0022 81            	ret	
2334                     ; 545 void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2334                     ; 546 {
2335                     .text:	section	.text,new
2336  0000               _TIM2_ForcedOC3Config:
2338  0000 88            	push	a
2339       00000000      OFST:	set	0
2342                     ; 548   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2344  0001 a150          	cp	a,#80
2345  0003 2712          	jreq	L044
2346  0005 a140          	cp	a,#64
2347  0007 270e          	jreq	L044
2348  0009 ae0224        	ldw	x,#548
2349  000c 89            	pushw	x
2350  000d 5f            	clrw	x
2351  000e 89            	pushw	x
2352  000f ae0000        	ldw	x,#L302
2353  0012 cd0000        	call	_assert_failed
2355  0015 5b04          	addw	sp,#4
2356  0017               L044:
2357                     ; 551   TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
2357                     ; 552                             | (uint8_t)TIM2_ForcedAction);
2359  0017 c65307        	ld	a,21255
2360  001a a48f          	and	a,#143
2361  001c 1a01          	or	a,(OFST+1,sp)
2362  001e c75307        	ld	21255,a
2363                     ; 553 }
2366  0021 84            	pop	a
2367  0022 81            	ret	
2404                     ; 561 void TIM2_ARRPreloadConfig(FunctionalState NewState)
2404                     ; 562 {
2405                     .text:	section	.text,new
2406  0000               _TIM2_ARRPreloadConfig:
2408  0000 88            	push	a
2409       00000000      OFST:	set	0
2412                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2414  0001 4d            	tnz	a
2415  0002 2711          	jreq	L254
2416  0004 4a            	dec	a
2417  0005 270e          	jreq	L254
2418  0007 ae0234        	ldw	x,#564
2419  000a 89            	pushw	x
2420  000b 5f            	clrw	x
2421  000c 89            	pushw	x
2422  000d ae0000        	ldw	x,#L302
2423  0010 cd0000        	call	_assert_failed
2425  0013 5b04          	addw	sp,#4
2426  0015               L254:
2427                     ; 567   if (NewState != DISABLE)
2429  0015 7b01          	ld	a,(OFST+1,sp)
2430  0017 2706          	jreq	L1101
2431                     ; 569     TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
2433  0019 721e5300      	bset	21248,#7
2435  001d 2004          	jra	L3101
2436  001f               L1101:
2437                     ; 573     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
2439  001f 721f5300      	bres	21248,#7
2440  0023               L3101:
2441                     ; 575 }
2444  0023 84            	pop	a
2445  0024 81            	ret	
2482                     ; 583 void TIM2_OC1PreloadConfig(FunctionalState NewState)
2482                     ; 584 {
2483                     .text:	section	.text,new
2484  0000               _TIM2_OC1PreloadConfig:
2486  0000 88            	push	a
2487       00000000      OFST:	set	0
2490                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2492  0001 4d            	tnz	a
2493  0002 2711          	jreq	L464
2494  0004 4a            	dec	a
2495  0005 270e          	jreq	L464
2496  0007 ae024a        	ldw	x,#586
2497  000a 89            	pushw	x
2498  000b 5f            	clrw	x
2499  000c 89            	pushw	x
2500  000d ae0000        	ldw	x,#L302
2501  0010 cd0000        	call	_assert_failed
2503  0013 5b04          	addw	sp,#4
2504  0015               L464:
2505                     ; 589   if (NewState != DISABLE)
2507  0015 7b01          	ld	a,(OFST+1,sp)
2508  0017 2706          	jreq	L3301
2509                     ; 591     TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
2511  0019 72165305      	bset	21253,#3
2513  001d 2004          	jra	L5301
2514  001f               L3301:
2515                     ; 595     TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2517  001f 72175305      	bres	21253,#3
2518  0023               L5301:
2519                     ; 597 }
2522  0023 84            	pop	a
2523  0024 81            	ret	
2560                     ; 605 void TIM2_OC2PreloadConfig(FunctionalState NewState)
2560                     ; 606 {
2561                     .text:	section	.text,new
2562  0000               _TIM2_OC2PreloadConfig:
2564  0000 88            	push	a
2565       00000000      OFST:	set	0
2568                     ; 608   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2570  0001 4d            	tnz	a
2571  0002 2711          	jreq	L674
2572  0004 4a            	dec	a
2573  0005 270e          	jreq	L674
2574  0007 ae0260        	ldw	x,#608
2575  000a 89            	pushw	x
2576  000b 5f            	clrw	x
2577  000c 89            	pushw	x
2578  000d ae0000        	ldw	x,#L302
2579  0010 cd0000        	call	_assert_failed
2581  0013 5b04          	addw	sp,#4
2582  0015               L674:
2583                     ; 611   if (NewState != DISABLE)
2585  0015 7b01          	ld	a,(OFST+1,sp)
2586  0017 2706          	jreq	L5501
2587                     ; 613     TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
2589  0019 72165306      	bset	21254,#3
2591  001d 2004          	jra	L7501
2592  001f               L5501:
2593                     ; 617     TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2595  001f 72175306      	bres	21254,#3
2596  0023               L7501:
2597                     ; 619 }
2600  0023 84            	pop	a
2601  0024 81            	ret	
2638                     ; 627 void TIM2_OC3PreloadConfig(FunctionalState NewState)
2638                     ; 628 {
2639                     .text:	section	.text,new
2640  0000               _TIM2_OC3PreloadConfig:
2642  0000 88            	push	a
2643       00000000      OFST:	set	0
2646                     ; 630   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2648  0001 4d            	tnz	a
2649  0002 2711          	jreq	L015
2650  0004 4a            	dec	a
2651  0005 270e          	jreq	L015
2652  0007 ae0276        	ldw	x,#630
2653  000a 89            	pushw	x
2654  000b 5f            	clrw	x
2655  000c 89            	pushw	x
2656  000d ae0000        	ldw	x,#L302
2657  0010 cd0000        	call	_assert_failed
2659  0013 5b04          	addw	sp,#4
2660  0015               L015:
2661                     ; 633   if (NewState != DISABLE)
2663  0015 7b01          	ld	a,(OFST+1,sp)
2664  0017 2706          	jreq	L7701
2665                     ; 635     TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
2667  0019 72165307      	bset	21255,#3
2669  001d 2004          	jra	L1011
2670  001f               L7701:
2671                     ; 639     TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2673  001f 72175307      	bres	21255,#3
2674  0023               L1011:
2675                     ; 641 }
2678  0023 84            	pop	a
2679  0024 81            	ret	
2753                     ; 653 void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
2753                     ; 654 {
2754                     .text:	section	.text,new
2755  0000               _TIM2_GenerateEvent:
2757  0000 88            	push	a
2758       00000000      OFST:	set	0
2761                     ; 656   assert_param(IS_TIM2_EVENT_SOURCE_OK(TIM2_EventSource));
2763  0001 4d            	tnz	a
2764  0002 260e          	jrne	L025
2765  0004 ae0290        	ldw	x,#656
2766  0007 89            	pushw	x
2767  0008 5f            	clrw	x
2768  0009 89            	pushw	x
2769  000a ae0000        	ldw	x,#L302
2770  000d cd0000        	call	_assert_failed
2772  0010 5b04          	addw	sp,#4
2773  0012               L025:
2774                     ; 659   TIM2->EGR = (uint8_t)TIM2_EventSource;
2776  0012 7b01          	ld	a,(OFST+1,sp)
2777  0014 c75304        	ld	21252,a
2778                     ; 660 }
2781  0017 84            	pop	a
2782  0018 81            	ret	
2819                     ; 670 void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2819                     ; 671 {
2820                     .text:	section	.text,new
2821  0000               _TIM2_OC1PolarityConfig:
2823  0000 88            	push	a
2824       00000000      OFST:	set	0
2827                     ; 673   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2829  0001 4d            	tnz	a
2830  0002 2712          	jreq	L235
2831  0004 a122          	cp	a,#34
2832  0006 270e          	jreq	L235
2833  0008 ae02a1        	ldw	x,#673
2834  000b 89            	pushw	x
2835  000c 5f            	clrw	x
2836  000d 89            	pushw	x
2837  000e ae0000        	ldw	x,#L302
2838  0011 cd0000        	call	_assert_failed
2840  0014 5b04          	addw	sp,#4
2841  0016               L235:
2842                     ; 676   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2844  0016 7b01          	ld	a,(OFST+1,sp)
2845  0018 2706          	jreq	L3511
2846                     ; 678     TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
2848  001a 72125308      	bset	21256,#1
2850  001e 2004          	jra	L5511
2851  0020               L3511:
2852                     ; 682     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
2854  0020 72135308      	bres	21256,#1
2855  0024               L5511:
2856                     ; 684 }
2859  0024 84            	pop	a
2860  0025 81            	ret	
2897                     ; 694 void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2897                     ; 695 {
2898                     .text:	section	.text,new
2899  0000               _TIM2_OC2PolarityConfig:
2901  0000 88            	push	a
2902       00000000      OFST:	set	0
2905                     ; 697   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2907  0001 4d            	tnz	a
2908  0002 2712          	jreq	L445
2909  0004 a122          	cp	a,#34
2910  0006 270e          	jreq	L445
2911  0008 ae02b9        	ldw	x,#697
2912  000b 89            	pushw	x
2913  000c 5f            	clrw	x
2914  000d 89            	pushw	x
2915  000e ae0000        	ldw	x,#L302
2916  0011 cd0000        	call	_assert_failed
2918  0014 5b04          	addw	sp,#4
2919  0016               L445:
2920                     ; 700   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2922  0016 7b01          	ld	a,(OFST+1,sp)
2923  0018 2706          	jreq	L5711
2924                     ; 702     TIM2->CCER1 |= TIM2_CCER1_CC2P;
2926  001a 721a5308      	bset	21256,#5
2928  001e 2004          	jra	L7711
2929  0020               L5711:
2930                     ; 706     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
2932  0020 721b5308      	bres	21256,#5
2933  0024               L7711:
2934                     ; 708 }
2937  0024 84            	pop	a
2938  0025 81            	ret	
2975                     ; 718 void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2975                     ; 719 {
2976                     .text:	section	.text,new
2977  0000               _TIM2_OC3PolarityConfig:
2979  0000 88            	push	a
2980       00000000      OFST:	set	0
2983                     ; 721   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2985  0001 4d            	tnz	a
2986  0002 2712          	jreq	L655
2987  0004 a122          	cp	a,#34
2988  0006 270e          	jreq	L655
2989  0008 ae02d1        	ldw	x,#721
2990  000b 89            	pushw	x
2991  000c 5f            	clrw	x
2992  000d 89            	pushw	x
2993  000e ae0000        	ldw	x,#L302
2994  0011 cd0000        	call	_assert_failed
2996  0014 5b04          	addw	sp,#4
2997  0016               L655:
2998                     ; 724   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
3000  0016 7b01          	ld	a,(OFST+1,sp)
3001  0018 2706          	jreq	L7121
3002                     ; 726     TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
3004  001a 72125309      	bset	21257,#1
3006  001e 2004          	jra	L1221
3007  0020               L7121:
3008                     ; 730     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
3010  0020 72135309      	bres	21257,#1
3011  0024               L1221:
3012                     ; 732 }
3015  0024 84            	pop	a
3016  0025 81            	ret	
3062                     ; 745 void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
3062                     ; 746 {
3063                     .text:	section	.text,new
3064  0000               _TIM2_CCxCmd:
3066  0000 89            	pushw	x
3067       00000000      OFST:	set	0
3070                     ; 748   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3072  0001 9e            	ld	a,xh
3073  0002 4d            	tnz	a
3074  0003 270e          	jreq	L075
3075  0005 9e            	ld	a,xh
3076  0006 4a            	dec	a
3077  0007 270a          	jreq	L075
3078  0009 9e            	ld	a,xh
3079  000a a102          	cp	a,#2
3080  000c 2705          	jreq	L075
3081  000e ae02ec        	ldw	x,#748
3082  0011 ad43          	call	LC008
3083  0013               L075:
3084                     ; 749   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3086  0013 7b02          	ld	a,(OFST+2,sp)
3087  0015 2708          	jreq	L006
3088  0017 4a            	dec	a
3089  0018 2705          	jreq	L006
3090  001a ae02ed        	ldw	x,#749
3091  001d ad37          	call	LC008
3092  001f               L006:
3093                     ; 751   if (TIM2_Channel == TIM2_CHANNEL_1)
3095  001f 7b01          	ld	a,(OFST+1,sp)
3096  0021 2610          	jrne	L5421
3097                     ; 754     if (NewState != DISABLE)
3099  0023 7b02          	ld	a,(OFST+2,sp)
3100  0025 2706          	jreq	L7421
3101                     ; 756       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
3103  0027 72105308      	bset	21256,#0
3105  002b 2027          	jra	L3521
3106  002d               L7421:
3107                     ; 760       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3109  002d 72115308      	bres	21256,#0
3110  0031 2021          	jra	L3521
3111  0033               L5421:
3112                     ; 764   else if (TIM2_Channel == TIM2_CHANNEL_2)
3114  0033 4a            	dec	a
3115  0034 2610          	jrne	L5521
3116                     ; 767     if (NewState != DISABLE)
3118  0036 7b02          	ld	a,(OFST+2,sp)
3119  0038 2706          	jreq	L7521
3120                     ; 769       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
3122  003a 72185308      	bset	21256,#4
3124  003e 2014          	jra	L3521
3125  0040               L7521:
3126                     ; 773       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3128  0040 72195308      	bres	21256,#4
3129  0044 200e          	jra	L3521
3130  0046               L5521:
3131                     ; 779     if (NewState != DISABLE)
3133  0046 7b02          	ld	a,(OFST+2,sp)
3134  0048 2706          	jreq	L5621
3135                     ; 781       TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
3137  004a 72105309      	bset	21257,#0
3139  004e 2004          	jra	L3521
3140  0050               L5621:
3141                     ; 785       TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3143  0050 72115309      	bres	21257,#0
3144  0054               L3521:
3145                     ; 788 }
3148  0054 85            	popw	x
3149  0055 81            	ret	
3150  0056               LC008:
3151  0056 89            	pushw	x
3152  0057 5f            	clrw	x
3153  0058 89            	pushw	x
3154  0059 ae0000        	ldw	x,#L302
3155  005c cd0000        	call	_assert_failed
3157  005f 5b04          	addw	sp,#4
3158  0061 81            	ret	
3204                     ; 810 void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
3204                     ; 811 {
3205                     .text:	section	.text,new
3206  0000               _TIM2_SelectOCxM:
3208  0000 89            	pushw	x
3209       00000000      OFST:	set	0
3212                     ; 813   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3214  0001 9e            	ld	a,xh
3215  0002 4d            	tnz	a
3216  0003 270e          	jreq	L216
3217  0005 9e            	ld	a,xh
3218  0006 4a            	dec	a
3219  0007 270a          	jreq	L216
3220  0009 9e            	ld	a,xh
3221  000a a102          	cp	a,#2
3222  000c 2705          	jreq	L216
3223  000e ae032d        	ldw	x,#813
3224  0011 ad5c          	call	LC009
3225  0013               L216:
3226                     ; 814   assert_param(IS_TIM2_OCM_OK(TIM2_OCMode));
3228  0013 7b02          	ld	a,(OFST+2,sp)
3229  0015 2721          	jreq	L226
3230  0017 a110          	cp	a,#16
3231  0019 271d          	jreq	L226
3232  001b a120          	cp	a,#32
3233  001d 2719          	jreq	L226
3234  001f a130          	cp	a,#48
3235  0021 2715          	jreq	L226
3236  0023 a160          	cp	a,#96
3237  0025 2711          	jreq	L226
3238  0027 a170          	cp	a,#112
3239  0029 270d          	jreq	L226
3240  002b a150          	cp	a,#80
3241  002d 2709          	jreq	L226
3242  002f a140          	cp	a,#64
3243  0031 2705          	jreq	L226
3244  0033 ae032e        	ldw	x,#814
3245  0036 ad37          	call	LC009
3246  0038               L226:
3247                     ; 816   if (TIM2_Channel == TIM2_CHANNEL_1)
3249  0038 7b01          	ld	a,(OFST+1,sp)
3250  003a 2610          	jrne	L3131
3251                     ; 819     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3253  003c 72115308      	bres	21256,#0
3254                     ; 822     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
3254                     ; 823                             | (uint8_t)TIM2_OCMode);
3256  0040 c65305        	ld	a,21253
3257  0043 a48f          	and	a,#143
3258  0045 1a02          	or	a,(OFST+2,sp)
3259  0047 c75305        	ld	21253,a
3261  004a 2021          	jra	L5131
3262  004c               L3131:
3263                     ; 825   else if (TIM2_Channel == TIM2_CHANNEL_2)
3265  004c 4a            	dec	a
3266  004d 2610          	jrne	L7131
3267                     ; 828     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3269  004f 72195308      	bres	21256,#4
3270                     ; 831     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
3270                     ; 832                             | (uint8_t)TIM2_OCMode);
3272  0053 c65306        	ld	a,21254
3273  0056 a48f          	and	a,#143
3274  0058 1a02          	or	a,(OFST+2,sp)
3275  005a c75306        	ld	21254,a
3277  005d 200e          	jra	L5131
3278  005f               L7131:
3279                     ; 837     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3281  005f 72115309      	bres	21257,#0
3282                     ; 840     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
3282                     ; 841                             | (uint8_t)TIM2_OCMode);
3284  0063 c65307        	ld	a,21255
3285  0066 a48f          	and	a,#143
3286  0068 1a02          	or	a,(OFST+2,sp)
3287  006a c75307        	ld	21255,a
3288  006d               L5131:
3289                     ; 843 }
3292  006d 85            	popw	x
3293  006e 81            	ret	
3294  006f               LC009:
3295  006f 89            	pushw	x
3296  0070 5f            	clrw	x
3297  0071 89            	pushw	x
3298  0072 ae0000        	ldw	x,#L302
3299  0075 cd0000        	call	_assert_failed
3301  0078 5b04          	addw	sp,#4
3302  007a 81            	ret	
3334                     ; 851 void TIM2_SetCounter(uint16_t Counter)
3334                     ; 852 {
3335                     .text:	section	.text,new
3336  0000               _TIM2_SetCounter:
3340                     ; 854   TIM2->CNTRH = (uint8_t)(Counter >> 8);
3342  0000 9e            	ld	a,xh
3343  0001 c7530a        	ld	21258,a
3344                     ; 855   TIM2->CNTRL = (uint8_t)(Counter);
3346  0004 9f            	ld	a,xl
3347  0005 c7530b        	ld	21259,a
3348                     ; 856 }
3351  0008 81            	ret	
3383                     ; 864 void TIM2_SetAutoreload(uint16_t Autoreload)
3383                     ; 865 {
3384                     .text:	section	.text,new
3385  0000               _TIM2_SetAutoreload:
3389                     ; 867   TIM2->ARRH = (uint8_t)(Autoreload >> 8);
3391  0000 9e            	ld	a,xh
3392  0001 c7530d        	ld	21261,a
3393                     ; 868   TIM2->ARRL = (uint8_t)(Autoreload);
3395  0004 9f            	ld	a,xl
3396  0005 c7530e        	ld	21262,a
3397                     ; 869 }
3400  0008 81            	ret	
3432                     ; 877 void TIM2_SetCompare1(uint16_t Compare1)
3432                     ; 878 {
3433                     .text:	section	.text,new
3434  0000               _TIM2_SetCompare1:
3438                     ; 880   TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
3440  0000 9e            	ld	a,xh
3441  0001 c7530f        	ld	21263,a
3442                     ; 881   TIM2->CCR1L = (uint8_t)(Compare1);
3444  0004 9f            	ld	a,xl
3445  0005 c75310        	ld	21264,a
3446                     ; 882 }
3449  0008 81            	ret	
3481                     ; 890 void TIM2_SetCompare2(uint16_t Compare2)
3481                     ; 891 {
3482                     .text:	section	.text,new
3483  0000               _TIM2_SetCompare2:
3487                     ; 893   TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
3489  0000 9e            	ld	a,xh
3490  0001 c75311        	ld	21265,a
3491                     ; 894   TIM2->CCR2L = (uint8_t)(Compare2);
3493  0004 9f            	ld	a,xl
3494  0005 c75312        	ld	21266,a
3495                     ; 895 }
3498  0008 81            	ret	
3530                     ; 903 void TIM2_SetCompare3(uint16_t Compare3)
3530                     ; 904 {
3531                     .text:	section	.text,new
3532  0000               _TIM2_SetCompare3:
3536                     ; 906   TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
3538  0000 9e            	ld	a,xh
3539  0001 c75313        	ld	21267,a
3540                     ; 907   TIM2->CCR3L = (uint8_t)(Compare3);
3542  0004 9f            	ld	a,xl
3543  0005 c75314        	ld	21268,a
3544                     ; 908 }
3547  0008 81            	ret	
3584                     ; 920 void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
3584                     ; 921 {
3585                     .text:	section	.text,new
3586  0000               _TIM2_SetIC1Prescaler:
3588  0000 88            	push	a
3589       00000000      OFST:	set	0
3592                     ; 923   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC1Prescaler));
3594  0001 4d            	tnz	a
3595  0002 271a          	jreq	L646
3596  0004 a104          	cp	a,#4
3597  0006 2716          	jreq	L646
3598  0008 a108          	cp	a,#8
3599  000a 2712          	jreq	L646
3600  000c a10c          	cp	a,#12
3601  000e 270e          	jreq	L646
3602  0010 ae039b        	ldw	x,#923
3603  0013 89            	pushw	x
3604  0014 5f            	clrw	x
3605  0015 89            	pushw	x
3606  0016 ae0000        	ldw	x,#L302
3607  0019 cd0000        	call	_assert_failed
3609  001c 5b04          	addw	sp,#4
3610  001e               L646:
3611                     ; 926   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3611                     ; 927                           | (uint8_t)TIM2_IC1Prescaler);
3613  001e c65305        	ld	a,21253
3614  0021 a4f3          	and	a,#243
3615  0023 1a01          	or	a,(OFST+1,sp)
3616  0025 c75305        	ld	21253,a
3617                     ; 928 }
3620  0028 84            	pop	a
3621  0029 81            	ret	
3658                     ; 940 void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
3658                     ; 941 {
3659                     .text:	section	.text,new
3660  0000               _TIM2_SetIC2Prescaler:
3662  0000 88            	push	a
3663       00000000      OFST:	set	0
3666                     ; 943   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC2Prescaler));
3668  0001 4d            	tnz	a
3669  0002 271a          	jreq	L066
3670  0004 a104          	cp	a,#4
3671  0006 2716          	jreq	L066
3672  0008 a108          	cp	a,#8
3673  000a 2712          	jreq	L066
3674  000c a10c          	cp	a,#12
3675  000e 270e          	jreq	L066
3676  0010 ae03af        	ldw	x,#943
3677  0013 89            	pushw	x
3678  0014 5f            	clrw	x
3679  0015 89            	pushw	x
3680  0016 ae0000        	ldw	x,#L302
3681  0019 cd0000        	call	_assert_failed
3683  001c 5b04          	addw	sp,#4
3684  001e               L066:
3685                     ; 946   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3685                     ; 947                           | (uint8_t)TIM2_IC2Prescaler);
3687  001e c65306        	ld	a,21254
3688  0021 a4f3          	and	a,#243
3689  0023 1a01          	or	a,(OFST+1,sp)
3690  0025 c75306        	ld	21254,a
3691                     ; 948 }
3694  0028 84            	pop	a
3695  0029 81            	ret	
3732                     ; 960 void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
3732                     ; 961 {
3733                     .text:	section	.text,new
3734  0000               _TIM2_SetIC3Prescaler:
3736  0000 88            	push	a
3737       00000000      OFST:	set	0
3740                     ; 964   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC3Prescaler));
3742  0001 4d            	tnz	a
3743  0002 271a          	jreq	L276
3744  0004 a104          	cp	a,#4
3745  0006 2716          	jreq	L276
3746  0008 a108          	cp	a,#8
3747  000a 2712          	jreq	L276
3748  000c a10c          	cp	a,#12
3749  000e 270e          	jreq	L276
3750  0010 ae03c4        	ldw	x,#964
3751  0013 89            	pushw	x
3752  0014 5f            	clrw	x
3753  0015 89            	pushw	x
3754  0016 ae0000        	ldw	x,#L302
3755  0019 cd0000        	call	_assert_failed
3757  001c 5b04          	addw	sp,#4
3758  001e               L276:
3759                     ; 966   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3759                     ; 967                           | (uint8_t)TIM2_IC3Prescaler);
3761  001e c65307        	ld	a,21255
3762  0021 a4f3          	and	a,#243
3763  0023 1a01          	or	a,(OFST+1,sp)
3764  0025 c75307        	ld	21255,a
3765                     ; 968 }
3768  0028 84            	pop	a
3769  0029 81            	ret	
3815                     ; 975 uint16_t TIM2_GetCapture1(void)
3815                     ; 976 {
3816                     .text:	section	.text,new
3817  0000               _TIM2_GetCapture1:
3819  0000 5204          	subw	sp,#4
3820       00000004      OFST:	set	4
3823                     ; 978   uint16_t tmpccr1 = 0;
3825                     ; 979   uint8_t tmpccr1l=0, tmpccr1h=0;
3829                     ; 981   tmpccr1h = TIM2->CCR1H;
3831  0002 c6530f        	ld	a,21263
3832  0005 6b02          	ld	(OFST-2,sp),a
3834                     ; 982   tmpccr1l = TIM2->CCR1L;
3836  0007 c65310        	ld	a,21264
3837  000a 6b01          	ld	(OFST-3,sp),a
3839                     ; 984   tmpccr1 = (uint16_t)(tmpccr1l);
3841  000c 5f            	clrw	x
3842  000d 97            	ld	xl,a
3843  000e 1f03          	ldw	(OFST-1,sp),x
3845                     ; 985   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
3847  0010 5f            	clrw	x
3848  0011 7b02          	ld	a,(OFST-2,sp)
3849  0013 97            	ld	xl,a
3850  0014 7b04          	ld	a,(OFST+0,sp)
3851  0016 01            	rrwa	x,a
3852  0017 1a03          	or	a,(OFST-1,sp)
3853  0019 01            	rrwa	x,a
3855                     ; 987   return (uint16_t)tmpccr1;
3859  001a 5b04          	addw	sp,#4
3860  001c 81            	ret	
3906                     ; 995 uint16_t TIM2_GetCapture2(void)
3906                     ; 996 {
3907                     .text:	section	.text,new
3908  0000               _TIM2_GetCapture2:
3910  0000 5204          	subw	sp,#4
3911       00000004      OFST:	set	4
3914                     ; 998   uint16_t tmpccr2 = 0;
3916                     ; 999   uint8_t tmpccr2l=0, tmpccr2h=0;
3920                     ; 1001   tmpccr2h = TIM2->CCR2H;
3922  0002 c65311        	ld	a,21265
3923  0005 6b02          	ld	(OFST-2,sp),a
3925                     ; 1002   tmpccr2l = TIM2->CCR2L;
3927  0007 c65312        	ld	a,21266
3928  000a 6b01          	ld	(OFST-3,sp),a
3930                     ; 1004   tmpccr2 = (uint16_t)(tmpccr2l);
3932  000c 5f            	clrw	x
3933  000d 97            	ld	xl,a
3934  000e 1f03          	ldw	(OFST-1,sp),x
3936                     ; 1005   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
3938  0010 5f            	clrw	x
3939  0011 7b02          	ld	a,(OFST-2,sp)
3940  0013 97            	ld	xl,a
3941  0014 7b04          	ld	a,(OFST+0,sp)
3942  0016 01            	rrwa	x,a
3943  0017 1a03          	or	a,(OFST-1,sp)
3944  0019 01            	rrwa	x,a
3946                     ; 1007   return (uint16_t)tmpccr2;
3950  001a 5b04          	addw	sp,#4
3951  001c 81            	ret	
3997                     ; 1015 uint16_t TIM2_GetCapture3(void)
3997                     ; 1016 {
3998                     .text:	section	.text,new
3999  0000               _TIM2_GetCapture3:
4001  0000 5204          	subw	sp,#4
4002       00000004      OFST:	set	4
4005                     ; 1018   uint16_t tmpccr3 = 0;
4007                     ; 1019   uint8_t tmpccr3l=0, tmpccr3h=0;
4011                     ; 1021   tmpccr3h = TIM2->CCR3H;
4013  0002 c65313        	ld	a,21267
4014  0005 6b02          	ld	(OFST-2,sp),a
4016                     ; 1022   tmpccr3l = TIM2->CCR3L;
4018  0007 c65314        	ld	a,21268
4019  000a 6b01          	ld	(OFST-3,sp),a
4021                     ; 1024   tmpccr3 = (uint16_t)(tmpccr3l);
4023  000c 5f            	clrw	x
4024  000d 97            	ld	xl,a
4025  000e 1f03          	ldw	(OFST-1,sp),x
4027                     ; 1025   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
4029  0010 5f            	clrw	x
4030  0011 7b02          	ld	a,(OFST-2,sp)
4031  0013 97            	ld	xl,a
4032  0014 7b04          	ld	a,(OFST+0,sp)
4033  0016 01            	rrwa	x,a
4034  0017 1a03          	or	a,(OFST-1,sp)
4035  0019 01            	rrwa	x,a
4037                     ; 1027   return (uint16_t)tmpccr3;
4041  001a 5b04          	addw	sp,#4
4042  001c 81            	ret	
4074                     ; 1035 uint16_t TIM2_GetCounter(void)
4074                     ; 1036 {
4075                     .text:	section	.text,new
4076  0000               _TIM2_GetCounter:
4078  0000 89            	pushw	x
4079       00000002      OFST:	set	2
4082                     ; 1037   uint16_t tmpcntr = 0;
4084                     ; 1039   tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
4086  0001 c6530a        	ld	a,21258
4087  0004 97            	ld	xl,a
4088  0005 4f            	clr	a
4089  0006 02            	rlwa	x,a
4090  0007 1f01          	ldw	(OFST-1,sp),x
4092                     ; 1041   return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
4094  0009 c6530b        	ld	a,21259
4095  000c 5f            	clrw	x
4096  000d 97            	ld	xl,a
4097  000e 01            	rrwa	x,a
4098  000f 1a02          	or	a,(OFST+0,sp)
4099  0011 01            	rrwa	x,a
4100  0012 1a01          	or	a,(OFST-1,sp)
4101  0014 01            	rrwa	x,a
4104  0015 5b02          	addw	sp,#2
4105  0017 81            	ret	
4129                     ; 1049 TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
4129                     ; 1050 {
4130                     .text:	section	.text,new
4131  0000               _TIM2_GetPrescaler:
4135                     ; 1052   return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
4137  0000 c6530c        	ld	a,21260
4140  0003 81            	ret	
4276                     ; 1068 FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
4276                     ; 1069 {
4277                     .text:	section	.text,new
4278  0000               _TIM2_GetFlagStatus:
4280  0000 89            	pushw	x
4281  0001 89            	pushw	x
4282       00000002      OFST:	set	2
4285                     ; 1070   FlagStatus bitstatus = RESET;
4287                     ; 1071   uint8_t tim2_flag_l = 0, tim2_flag_h = 0;
4291                     ; 1074   assert_param(IS_TIM2_GET_FLAG_OK(TIM2_FLAG));
4293  0002 a30001        	cpw	x,#1
4294  0005 272c          	jreq	L617
4295  0007 a30002        	cpw	x,#2
4296  000a 2727          	jreq	L617
4297  000c a30004        	cpw	x,#4
4298  000f 2722          	jreq	L617
4299  0011 a30008        	cpw	x,#8
4300  0014 271d          	jreq	L617
4301  0016 a30200        	cpw	x,#512
4302  0019 2718          	jreq	L617
4303  001b a30400        	cpw	x,#1024
4304  001e 2713          	jreq	L617
4305  0020 a30800        	cpw	x,#2048
4306  0023 270e          	jreq	L617
4307  0025 ae0432        	ldw	x,#1074
4308  0028 89            	pushw	x
4309  0029 5f            	clrw	x
4310  002a 89            	pushw	x
4311  002b ae0000        	ldw	x,#L302
4312  002e cd0000        	call	_assert_failed
4314  0031 5b04          	addw	sp,#4
4315  0033               L617:
4316                     ; 1076   tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
4318  0033 c65302        	ld	a,21250
4319  0036 1404          	and	a,(OFST+2,sp)
4320  0038 6b01          	ld	(OFST-1,sp),a
4322                     ; 1077   tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
4324  003a 7b03          	ld	a,(OFST+1,sp)
4325  003c 6b02          	ld	(OFST+0,sp),a
4327                     ; 1079   if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
4329  003e c45303        	and	a,21251
4330  0041 1a01          	or	a,(OFST-1,sp)
4331  0043 2702          	jreq	L5561
4332                     ; 1081     bitstatus = SET;
4334  0045 a601          	ld	a,#1
4337  0047               L5561:
4338                     ; 1085     bitstatus = RESET;
4341                     ; 1087   return (FlagStatus)bitstatus;
4345  0047 5b04          	addw	sp,#4
4346  0049 81            	ret	
4382                     ; 1103 void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
4382                     ; 1104 {
4383                     .text:	section	.text,new
4384  0000               _TIM2_ClearFlag:
4386  0000 89            	pushw	x
4387       00000000      OFST:	set	0
4390                     ; 1106   assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
4392  0001 01            	rrwa	x,a
4393  0002 a4f0          	and	a,#240
4394  0004 01            	rrwa	x,a
4395  0005 a4f1          	and	a,#241
4396  0007 01            	rrwa	x,a
4397  0008 5d            	tnzw	x
4398  0009 2604          	jrne	L427
4399  000b 1e01          	ldw	x,(OFST+1,sp)
4400  000d 260e          	jrne	L627
4401  000f               L427:
4402  000f ae0452        	ldw	x,#1106
4403  0012 89            	pushw	x
4404  0013 5f            	clrw	x
4405  0014 89            	pushw	x
4406  0015 ae0000        	ldw	x,#L302
4407  0018 cd0000        	call	_assert_failed
4409  001b 5b04          	addw	sp,#4
4410  001d               L627:
4411                     ; 1109   TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
4413  001d 7b02          	ld	a,(OFST+2,sp)
4414  001f 43            	cpl	a
4415  0020 c75302        	ld	21250,a
4416                     ; 1110   TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
4418  0023 35ff5303      	mov	21251,#255
4419                     ; 1111 }
4422  0027 85            	popw	x
4423  0028 81            	ret	
4484                     ; 1123 ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
4484                     ; 1124 {
4485                     .text:	section	.text,new
4486  0000               _TIM2_GetITStatus:
4488  0000 88            	push	a
4489  0001 89            	pushw	x
4490       00000002      OFST:	set	2
4493                     ; 1125   ITStatus bitstatus = RESET;
4495                     ; 1126   uint8_t TIM2_itStatus = 0, TIM2_itEnable = 0;
4499                     ; 1129   assert_param(IS_TIM2_GET_IT_OK(TIM2_IT));
4501  0002 a101          	cp	a,#1
4502  0004 271a          	jreq	L047
4503  0006 a102          	cp	a,#2
4504  0008 2716          	jreq	L047
4505  000a a104          	cp	a,#4
4506  000c 2712          	jreq	L047
4507  000e a108          	cp	a,#8
4508  0010 270e          	jreq	L047
4509  0012 ae0469        	ldw	x,#1129
4510  0015 89            	pushw	x
4511  0016 5f            	clrw	x
4512  0017 89            	pushw	x
4513  0018 ae0000        	ldw	x,#L302
4514  001b cd0000        	call	_assert_failed
4516  001e 5b04          	addw	sp,#4
4517  0020               L047:
4518                     ; 1131   TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
4520  0020 c65302        	ld	a,21250
4521  0023 1403          	and	a,(OFST+1,sp)
4522  0025 6b01          	ld	(OFST-1,sp),a
4524                     ; 1133   TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
4526  0027 c65301        	ld	a,21249
4527  002a 1403          	and	a,(OFST+1,sp)
4528  002c 6b02          	ld	(OFST+0,sp),a
4530                     ; 1135   if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
4532  002e 7b01          	ld	a,(OFST-1,sp)
4533  0030 2708          	jreq	L5271
4535  0032 7b02          	ld	a,(OFST+0,sp)
4536  0034 2704          	jreq	L5271
4537                     ; 1137     bitstatus = SET;
4539  0036 a601          	ld	a,#1
4542  0038 2001          	jra	L7271
4543  003a               L5271:
4544                     ; 1141     bitstatus = RESET;
4546  003a 4f            	clr	a
4548  003b               L7271:
4549                     ; 1143   return (ITStatus)(bitstatus);
4553  003b 5b03          	addw	sp,#3
4554  003d 81            	ret	
4591                     ; 1156 void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
4591                     ; 1157 {
4592                     .text:	section	.text,new
4593  0000               _TIM2_ClearITPendingBit:
4595  0000 88            	push	a
4596       00000000      OFST:	set	0
4599                     ; 1159   assert_param(IS_TIM2_IT_OK(TIM2_IT));
4601  0001 4d            	tnz	a
4602  0002 2704          	jreq	L647
4603  0004 a110          	cp	a,#16
4604  0006 250e          	jrult	L057
4605  0008               L647:
4606  0008 ae0487        	ldw	x,#1159
4607  000b 89            	pushw	x
4608  000c 5f            	clrw	x
4609  000d 89            	pushw	x
4610  000e ae0000        	ldw	x,#L302
4611  0011 cd0000        	call	_assert_failed
4613  0014 5b04          	addw	sp,#4
4614  0016               L057:
4615                     ; 1162   TIM2->SR1 = (uint8_t)(~TIM2_IT);
4617  0016 7b01          	ld	a,(OFST+1,sp)
4618  0018 43            	cpl	a
4619  0019 c75302        	ld	21250,a
4620                     ; 1163 }
4623  001c 84            	pop	a
4624  001d 81            	ret	
4670                     ; 1181 static void TI1_Config(uint8_t TIM2_ICPolarity,
4670                     ; 1182                        uint8_t TIM2_ICSelection,
4670                     ; 1183                        uint8_t TIM2_ICFilter)
4670                     ; 1184 {
4671                     .text:	section	.text,new
4672  0000               L3_TI1_Config:
4674  0000 89            	pushw	x
4675  0001 88            	push	a
4676       00000001      OFST:	set	1
4679                     ; 1186   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
4681  0002 72115308      	bres	21256,#0
4682                     ; 1189   TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
4682                     ; 1190                            | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4684  0006 7b06          	ld	a,(OFST+5,sp)
4685  0008 97            	ld	xl,a
4686  0009 a610          	ld	a,#16
4687  000b 42            	mul	x,a
4688  000c 9f            	ld	a,xl
4689  000d 1a03          	or	a,(OFST+2,sp)
4690  000f 6b01          	ld	(OFST+0,sp),a
4692  0011 c65305        	ld	a,21253
4693  0014 a40c          	and	a,#12
4694  0016 1a01          	or	a,(OFST+0,sp)
4695  0018 c75305        	ld	21253,a
4696                     ; 1193   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4698  001b 7b02          	ld	a,(OFST+1,sp)
4699  001d 2706          	jreq	L7671
4700                     ; 1195     TIM2->CCER1 |= TIM2_CCER1_CC1P;
4702  001f 72125308      	bset	21256,#1
4704  0023 2004          	jra	L1771
4705  0025               L7671:
4706                     ; 1199     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
4708  0025 72135308      	bres	21256,#1
4709  0029               L1771:
4710                     ; 1202   TIM2->CCER1 |= TIM2_CCER1_CC1E;
4712  0029 72105308      	bset	21256,#0
4713                     ; 1203 }
4716  002d 5b03          	addw	sp,#3
4717  002f 81            	ret	
4763                     ; 1221 static void TI2_Config(uint8_t TIM2_ICPolarity,
4763                     ; 1222                        uint8_t TIM2_ICSelection,
4763                     ; 1223                        uint8_t TIM2_ICFilter)
4763                     ; 1224 {
4764                     .text:	section	.text,new
4765  0000               L5_TI2_Config:
4767  0000 89            	pushw	x
4768  0001 88            	push	a
4769       00000001      OFST:	set	1
4772                     ; 1226   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
4774  0002 72195308      	bres	21256,#4
4775                     ; 1229   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
4775                     ; 1230                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4777  0006 7b06          	ld	a,(OFST+5,sp)
4778  0008 97            	ld	xl,a
4779  0009 a610          	ld	a,#16
4780  000b 42            	mul	x,a
4781  000c 9f            	ld	a,xl
4782  000d 1a03          	or	a,(OFST+2,sp)
4783  000f 6b01          	ld	(OFST+0,sp),a
4785  0011 c65306        	ld	a,21254
4786  0014 a40c          	and	a,#12
4787  0016 1a01          	or	a,(OFST+0,sp)
4788  0018 c75306        	ld	21254,a
4789                     ; 1234   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4791  001b 7b02          	ld	a,(OFST+1,sp)
4792  001d 2706          	jreq	L3102
4793                     ; 1236     TIM2->CCER1 |= TIM2_CCER1_CC2P;
4795  001f 721a5308      	bset	21256,#5
4797  0023 2004          	jra	L5102
4798  0025               L3102:
4799                     ; 1240     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
4801  0025 721b5308      	bres	21256,#5
4802  0029               L5102:
4803                     ; 1244   TIM2->CCER1 |= TIM2_CCER1_CC2E;
4805  0029 72185308      	bset	21256,#4
4806                     ; 1245 }
4809  002d 5b03          	addw	sp,#3
4810  002f 81            	ret	
4856                     ; 1261 static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
4856                     ; 1262                        uint8_t TIM2_ICFilter)
4856                     ; 1263 {
4857                     .text:	section	.text,new
4858  0000               L7_TI3_Config:
4860  0000 89            	pushw	x
4861  0001 88            	push	a
4862       00000001      OFST:	set	1
4865                     ; 1265   TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
4867  0002 72115309      	bres	21257,#0
4868                     ; 1268   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
4868                     ; 1269                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4870  0006 7b06          	ld	a,(OFST+5,sp)
4871  0008 97            	ld	xl,a
4872  0009 a610          	ld	a,#16
4873  000b 42            	mul	x,a
4874  000c 9f            	ld	a,xl
4875  000d 1a03          	or	a,(OFST+2,sp)
4876  000f 6b01          	ld	(OFST+0,sp),a
4878  0011 c65307        	ld	a,21255
4879  0014 a40c          	and	a,#12
4880  0016 1a01          	or	a,(OFST+0,sp)
4881  0018 c75307        	ld	21255,a
4882                     ; 1273   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4884  001b 7b02          	ld	a,(OFST+1,sp)
4885  001d 2706          	jreq	L7302
4886                     ; 1275     TIM2->CCER2 |= TIM2_CCER2_CC3P;
4888  001f 72125309      	bset	21257,#1
4890  0023 2004          	jra	L1402
4891  0025               L7302:
4892                     ; 1279     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
4894  0025 72135309      	bres	21257,#1
4895  0029               L1402:
4896                     ; 1282   TIM2->CCER2 |= TIM2_CCER2_CC3E;
4898  0029 72105309      	bset	21257,#0
4899                     ; 1283 }
4902  002d 5b03          	addw	sp,#3
4903  002f 81            	ret	
4916                     	xdef	_TIM2_ClearITPendingBit
4917                     	xdef	_TIM2_GetITStatus
4918                     	xdef	_TIM2_ClearFlag
4919                     	xdef	_TIM2_GetFlagStatus
4920                     	xdef	_TIM2_GetPrescaler
4921                     	xdef	_TIM2_GetCounter
4922                     	xdef	_TIM2_GetCapture3
4923                     	xdef	_TIM2_GetCapture2
4924                     	xdef	_TIM2_GetCapture1
4925                     	xdef	_TIM2_SetIC3Prescaler
4926                     	xdef	_TIM2_SetIC2Prescaler
4927                     	xdef	_TIM2_SetIC1Prescaler
4928                     	xdef	_TIM2_SetCompare3
4929                     	xdef	_TIM2_SetCompare2
4930                     	xdef	_TIM2_SetCompare1
4931                     	xdef	_TIM2_SetAutoreload
4932                     	xdef	_TIM2_SetCounter
4933                     	xdef	_TIM2_SelectOCxM
4934                     	xdef	_TIM2_CCxCmd
4935                     	xdef	_TIM2_OC3PolarityConfig
4936                     	xdef	_TIM2_OC2PolarityConfig
4937                     	xdef	_TIM2_OC1PolarityConfig
4938                     	xdef	_TIM2_GenerateEvent
4939                     	xdef	_TIM2_OC3PreloadConfig
4940                     	xdef	_TIM2_OC2PreloadConfig
4941                     	xdef	_TIM2_OC1PreloadConfig
4942                     	xdef	_TIM2_ARRPreloadConfig
4943                     	xdef	_TIM2_ForcedOC3Config
4944                     	xdef	_TIM2_ForcedOC2Config
4945                     	xdef	_TIM2_ForcedOC1Config
4946                     	xdef	_TIM2_PrescalerConfig
4947                     	xdef	_TIM2_SelectOnePulseMode
4948                     	xdef	_TIM2_UpdateRequestConfig
4949                     	xdef	_TIM2_UpdateDisableConfig
4950                     	xdef	_TIM2_ITConfig
4951                     	xdef	_TIM2_Cmd
4952                     	xdef	_TIM2_PWMIConfig
4953                     	xdef	_TIM2_ICInit
4954                     	xdef	_TIM2_OC3Init
4955                     	xdef	_TIM2_OC2Init
4956                     	xdef	_TIM2_OC1Init
4957                     	xdef	_TIM2_TimeBaseInit
4958                     	xdef	_TIM2_DeInit
4959                     	xref	_assert_failed
4960                     .const:	section	.text
4961  0000               L302:
4962  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
4963  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
4964  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
4965  0036 5f74696d322e  	dc.b	"_tim2.c",0
4985                     	end
