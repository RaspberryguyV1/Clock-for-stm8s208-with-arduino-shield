   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
   4                     ; Optimizer V4.5.6 - 18 Jul 2023
  50                     ; 51 void TIM3_DeInit(void)
  50                     ; 52 {
  52                     .text:	section	.text,new
  53  0000               _TIM3_DeInit:
  57                     ; 53   TIM3->CR1 = (uint8_t)TIM3_CR1_RESET_VALUE;
  59  0000 725f5320      	clr	21280
  60                     ; 54   TIM3->IER = (uint8_t)TIM3_IER_RESET_VALUE;
  62  0004 725f5321      	clr	21281
  63                     ; 55   TIM3->SR2 = (uint8_t)TIM3_SR2_RESET_VALUE;
  65  0008 725f5323      	clr	21283
  66                     ; 58   TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
  68  000c 725f5327      	clr	21287
  69                     ; 61   TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
  71  0010 725f5327      	clr	21287
  72                     ; 62   TIM3->CCMR1 = (uint8_t)TIM3_CCMR1_RESET_VALUE;
  74  0014 725f5325      	clr	21285
  75                     ; 63   TIM3->CCMR2 = (uint8_t)TIM3_CCMR2_RESET_VALUE;
  77  0018 725f5326      	clr	21286
  78                     ; 64   TIM3->CNTRH = (uint8_t)TIM3_CNTRH_RESET_VALUE;
  80  001c 725f5328      	clr	21288
  81                     ; 65   TIM3->CNTRL = (uint8_t)TIM3_CNTRL_RESET_VALUE;
  83  0020 725f5329      	clr	21289
  84                     ; 66   TIM3->PSCR = (uint8_t)TIM3_PSCR_RESET_VALUE;
  86  0024 725f532a      	clr	21290
  87                     ; 67   TIM3->ARRH  = (uint8_t)TIM3_ARRH_RESET_VALUE;
  89  0028 35ff532b      	mov	21291,#255
  90                     ; 68   TIM3->ARRL  = (uint8_t)TIM3_ARRL_RESET_VALUE;
  92  002c 35ff532c      	mov	21292,#255
  93                     ; 69   TIM3->CCR1H = (uint8_t)TIM3_CCR1H_RESET_VALUE;
  95  0030 725f532d      	clr	21293
  96                     ; 70   TIM3->CCR1L = (uint8_t)TIM3_CCR1L_RESET_VALUE;
  98  0034 725f532e      	clr	21294
  99                     ; 71   TIM3->CCR2H = (uint8_t)TIM3_CCR2H_RESET_VALUE;
 101  0038 725f532f      	clr	21295
 102                     ; 72   TIM3->CCR2L = (uint8_t)TIM3_CCR2L_RESET_VALUE;
 104  003c 725f5330      	clr	21296
 105                     ; 73   TIM3->SR1 = (uint8_t)TIM3_SR1_RESET_VALUE;
 107  0040 725f5322      	clr	21282
 108                     ; 74 }
 111  0044 81            	ret	
 277                     ; 82 void TIM3_TimeBaseInit( TIM3_Prescaler_TypeDef TIM3_Prescaler,
 277                     ; 83                         uint16_t TIM3_Period)
 277                     ; 84 {
 278                     .text:	section	.text,new
 279  0000               _TIM3_TimeBaseInit:
 281       ffffffff      OFST: set -1
 284                     ; 86   TIM3->PSCR = (uint8_t)(TIM3_Prescaler);
 286  0000 c7532a        	ld	21290,a
 287                     ; 88   TIM3->ARRH = (uint8_t)(TIM3_Period >> 8);
 289  0003 7b03          	ld	a,(OFST+4,sp)
 290  0005 c7532b        	ld	21291,a
 291                     ; 89   TIM3->ARRL = (uint8_t)(TIM3_Period);
 293  0008 7b04          	ld	a,(OFST+5,sp)
 294  000a c7532c        	ld	21292,a
 295                     ; 90 }
 298  000d 81            	ret	
 454                     ; 100 void TIM3_OC1Init(TIM3_OCMode_TypeDef TIM3_OCMode,
 454                     ; 101                   TIM3_OutputState_TypeDef TIM3_OutputState,
 454                     ; 102                   uint16_t TIM3_Pulse,
 454                     ; 103                   TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
 454                     ; 104 {
 455                     .text:	section	.text,new
 456  0000               _TIM3_OC1Init:
 458  0000 89            	pushw	x
 459  0001 88            	push	a
 460       00000001      OFST:	set	1
 463                     ; 106   assert_param(IS_TIM3_OC_MODE_OK(TIM3_OCMode));
 465  0002 9e            	ld	a,xh
 466  0003 4d            	tnz	a
 467  0004 271e          	jreq	L61
 468  0006 9e            	ld	a,xh
 469  0007 a110          	cp	a,#16
 470  0009 2719          	jreq	L61
 471  000b 9e            	ld	a,xh
 472  000c a120          	cp	a,#32
 473  000e 2714          	jreq	L61
 474  0010 9e            	ld	a,xh
 475  0011 a130          	cp	a,#48
 476  0013 270f          	jreq	L61
 477  0015 9e            	ld	a,xh
 478  0016 a160          	cp	a,#96
 479  0018 270a          	jreq	L61
 480  001a 9e            	ld	a,xh
 481  001b a170          	cp	a,#112
 482  001d 2705          	jreq	L61
 483  001f ae006a        	ldw	x,#106
 484  0022 ad4b          	call	LC001
 485  0024               L61:
 486                     ; 107   assert_param(IS_TIM3_OUTPUT_STATE_OK(TIM3_OutputState));
 488  0024 7b03          	ld	a,(OFST+2,sp)
 489  0026 2709          	jreq	L62
 490  0028 a111          	cp	a,#17
 491  002a 2705          	jreq	L62
 492  002c ae006b        	ldw	x,#107
 493  002f ad3e          	call	LC001
 494  0031               L62:
 495                     ; 108   assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
 497  0031 7b08          	ld	a,(OFST+7,sp)
 498  0033 2709          	jreq	L63
 499  0035 a122          	cp	a,#34
 500  0037 2705          	jreq	L63
 501  0039 ae006c        	ldw	x,#108
 502  003c ad31          	call	LC001
 503  003e               L63:
 504                     ; 111   TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC1E | TIM3_CCER1_CC1P));
 506  003e c65327        	ld	a,21287
 507  0041 a4fc          	and	a,#252
 508  0043 c75327        	ld	21287,a
 509                     ; 113   TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC1E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC1P   ));
 511  0046 7b08          	ld	a,(OFST+7,sp)
 512  0048 a402          	and	a,#2
 513  004a 6b01          	ld	(OFST+0,sp),a
 515  004c 7b03          	ld	a,(OFST+2,sp)
 516  004e a401          	and	a,#1
 517  0050 1a01          	or	a,(OFST+0,sp)
 518  0052 ca5327        	or	a,21287
 519  0055 c75327        	ld	21287,a
 520                     ; 116   TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
 522  0058 c65325        	ld	a,21285
 523  005b a48f          	and	a,#143
 524  005d 1a02          	or	a,(OFST+1,sp)
 525  005f c75325        	ld	21285,a
 526                     ; 119   TIM3->CCR1H = (uint8_t)(TIM3_Pulse >> 8);
 528  0062 7b06          	ld	a,(OFST+5,sp)
 529  0064 c7532d        	ld	21293,a
 530                     ; 120   TIM3->CCR1L = (uint8_t)(TIM3_Pulse);
 532  0067 7b07          	ld	a,(OFST+6,sp)
 533  0069 c7532e        	ld	21294,a
 534                     ; 121 }
 537  006c 5b03          	addw	sp,#3
 538  006e 81            	ret	
 539  006f               LC001:
 540  006f 89            	pushw	x
 541  0070 5f            	clrw	x
 542  0071 89            	pushw	x
 543  0072 ae0000        	ldw	x,#L102
 544  0075 cd0000        	call	_assert_failed
 546  0078 5b04          	addw	sp,#4
 547  007a 81            	ret	
 610                     ; 131 void TIM3_OC2Init(TIM3_OCMode_TypeDef TIM3_OCMode,
 610                     ; 132                   TIM3_OutputState_TypeDef TIM3_OutputState,
 610                     ; 133                   uint16_t TIM3_Pulse,
 610                     ; 134                   TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
 610                     ; 135 {
 611                     .text:	section	.text,new
 612  0000               _TIM3_OC2Init:
 614  0000 89            	pushw	x
 615  0001 88            	push	a
 616       00000001      OFST:	set	1
 619                     ; 137   assert_param(IS_TIM3_OC_MODE_OK(TIM3_OCMode));
 621  0002 9e            	ld	a,xh
 622  0003 4d            	tnz	a
 623  0004 271e          	jreq	L05
 624  0006 9e            	ld	a,xh
 625  0007 a110          	cp	a,#16
 626  0009 2719          	jreq	L05
 627  000b 9e            	ld	a,xh
 628  000c a120          	cp	a,#32
 629  000e 2714          	jreq	L05
 630  0010 9e            	ld	a,xh
 631  0011 a130          	cp	a,#48
 632  0013 270f          	jreq	L05
 633  0015 9e            	ld	a,xh
 634  0016 a160          	cp	a,#96
 635  0018 270a          	jreq	L05
 636  001a 9e            	ld	a,xh
 637  001b a170          	cp	a,#112
 638  001d 2705          	jreq	L05
 639  001f ae0089        	ldw	x,#137
 640  0022 ad4b          	call	LC002
 641  0024               L05:
 642                     ; 138   assert_param(IS_TIM3_OUTPUT_STATE_OK(TIM3_OutputState));
 644  0024 7b03          	ld	a,(OFST+2,sp)
 645  0026 2709          	jreq	L06
 646  0028 a111          	cp	a,#17
 647  002a 2705          	jreq	L06
 648  002c ae008a        	ldw	x,#138
 649  002f ad3e          	call	LC002
 650  0031               L06:
 651                     ; 139   assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
 653  0031 7b08          	ld	a,(OFST+7,sp)
 654  0033 2709          	jreq	L07
 655  0035 a122          	cp	a,#34
 656  0037 2705          	jreq	L07
 657  0039 ae008b        	ldw	x,#139
 658  003c ad31          	call	LC002
 659  003e               L07:
 660                     ; 143   TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC2E |  TIM3_CCER1_CC2P ));
 662  003e c65327        	ld	a,21287
 663  0041 a4cf          	and	a,#207
 664  0043 c75327        	ld	21287,a
 665                     ; 145   TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC2E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC2P ));
 667  0046 7b08          	ld	a,(OFST+7,sp)
 668  0048 a420          	and	a,#32
 669  004a 6b01          	ld	(OFST+0,sp),a
 671  004c 7b03          	ld	a,(OFST+2,sp)
 672  004e a410          	and	a,#16
 673  0050 1a01          	or	a,(OFST+0,sp)
 674  0052 ca5327        	or	a,21287
 675  0055 c75327        	ld	21287,a
 676                     ; 149   TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
 678  0058 c65326        	ld	a,21286
 679  005b a48f          	and	a,#143
 680  005d 1a02          	or	a,(OFST+1,sp)
 681  005f c75326        	ld	21286,a
 682                     ; 153   TIM3->CCR2H = (uint8_t)(TIM3_Pulse >> 8);
 684  0062 7b06          	ld	a,(OFST+5,sp)
 685  0064 c7532f        	ld	21295,a
 686                     ; 154   TIM3->CCR2L = (uint8_t)(TIM3_Pulse);
 688  0067 7b07          	ld	a,(OFST+6,sp)
 689  0069 c75330        	ld	21296,a
 690                     ; 155 }
 693  006c 5b03          	addw	sp,#3
 694  006e 81            	ret	
 695  006f               LC002:
 696  006f 89            	pushw	x
 697  0070 5f            	clrw	x
 698  0071 89            	pushw	x
 699  0072 ae0000        	ldw	x,#L102
 700  0075 cd0000        	call	_assert_failed
 702  0078 5b04          	addw	sp,#4
 703  007a 81            	ret	
 886                     ; 166 void TIM3_ICInit(TIM3_Channel_TypeDef TIM3_Channel,
 886                     ; 167                  TIM3_ICPolarity_TypeDef TIM3_ICPolarity,
 886                     ; 168                  TIM3_ICSelection_TypeDef TIM3_ICSelection,
 886                     ; 169                  TIM3_ICPSC_TypeDef TIM3_ICPrescaler,
 886                     ; 170                  uint8_t TIM3_ICFilter)
 886                     ; 171 {
 887                     .text:	section	.text,new
 888  0000               _TIM3_ICInit:
 890  0000 89            	pushw	x
 891       00000000      OFST:	set	0
 894                     ; 173   assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
 896  0001 9e            	ld	a,xh
 897  0002 4d            	tnz	a
 898  0003 2709          	jreq	L201
 899  0005 9e            	ld	a,xh
 900  0006 4a            	dec	a
 901  0007 2705          	jreq	L201
 902  0009 ae00ad        	ldw	x,#173
 903  000c ad6d          	call	LC003
 904  000e               L201:
 905                     ; 174   assert_param(IS_TIM3_IC_POLARITY_OK(TIM3_ICPolarity));
 907  000e 7b02          	ld	a,(OFST+2,sp)
 908  0010 2709          	jreq	L211
 909  0012 a144          	cp	a,#68
 910  0014 2705          	jreq	L211
 911  0016 ae00ae        	ldw	x,#174
 912  0019 ad60          	call	LC003
 913  001b               L211:
 914                     ; 175   assert_param(IS_TIM3_IC_SELECTION_OK(TIM3_ICSelection));
 916  001b 7b05          	ld	a,(OFST+5,sp)
 917  001d a101          	cp	a,#1
 918  001f 270d          	jreq	L221
 919  0021 a102          	cp	a,#2
 920  0023 2709          	jreq	L221
 921  0025 a103          	cp	a,#3
 922  0027 2705          	jreq	L221
 923  0029 ae00af        	ldw	x,#175
 924  002c ad4d          	call	LC003
 925  002e               L221:
 926                     ; 176   assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_ICPrescaler));
 928  002e 7b06          	ld	a,(OFST+6,sp)
 929  0030 2711          	jreq	L231
 930  0032 a104          	cp	a,#4
 931  0034 270d          	jreq	L231
 932  0036 a108          	cp	a,#8
 933  0038 2709          	jreq	L231
 934  003a a10c          	cp	a,#12
 935  003c 2705          	jreq	L231
 936  003e ae00b0        	ldw	x,#176
 937  0041 ad38          	call	LC003
 938  0043               L231:
 939                     ; 177   assert_param(IS_TIM3_IC_FILTER_OK(TIM3_ICFilter));
 941  0043 7b07          	ld	a,(OFST+7,sp)
 942  0045 a110          	cp	a,#16
 943  0047 2505          	jrult	L041
 944  0049 ae00b1        	ldw	x,#177
 945  004c ad2d          	call	LC003
 946  004e               L041:
 947                     ; 179   if (TIM3_Channel != TIM3_CHANNEL_2)
 949  004e 7b01          	ld	a,(OFST+1,sp)
 950  0050 4a            	dec	a
 951  0051 2714          	jreq	L533
 952                     ; 182     TI1_Config((uint8_t)TIM3_ICPolarity,
 952                     ; 183                (uint8_t)TIM3_ICSelection,
 952                     ; 184                (uint8_t)TIM3_ICFilter);
 954  0053 7b07          	ld	a,(OFST+7,sp)
 955  0055 88            	push	a
 956  0056 7b06          	ld	a,(OFST+6,sp)
 957  0058 97            	ld	xl,a
 958  0059 7b03          	ld	a,(OFST+3,sp)
 959  005b 95            	ld	xh,a
 960  005c cd0000        	call	L3_TI1_Config
 962  005f 84            	pop	a
 963                     ; 187     TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
 965  0060 7b06          	ld	a,(OFST+6,sp)
 966  0062 cd0000        	call	_TIM3_SetIC1Prescaler
 969  0065 2012          	jra	L733
 970  0067               L533:
 971                     ; 192     TI2_Config((uint8_t)TIM3_ICPolarity,
 971                     ; 193                (uint8_t)TIM3_ICSelection,
 971                     ; 194                (uint8_t)TIM3_ICFilter);
 973  0067 7b07          	ld	a,(OFST+7,sp)
 974  0069 88            	push	a
 975  006a 7b06          	ld	a,(OFST+6,sp)
 976  006c 97            	ld	xl,a
 977  006d 7b03          	ld	a,(OFST+3,sp)
 978  006f 95            	ld	xh,a
 979  0070 cd0000        	call	L5_TI2_Config
 981  0073 84            	pop	a
 982                     ; 197     TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
 984  0074 7b06          	ld	a,(OFST+6,sp)
 985  0076 cd0000        	call	_TIM3_SetIC2Prescaler
 987  0079               L733:
 988                     ; 199 }
 991  0079 85            	popw	x
 992  007a 81            	ret	
 993  007b               LC003:
 994  007b 89            	pushw	x
 995  007c 5f            	clrw	x
 996  007d 89            	pushw	x
 997  007e ae0000        	ldw	x,#L102
 998  0081 cd0000        	call	_assert_failed
1000  0084 5b04          	addw	sp,#4
1001  0086 81            	ret	
1092                     ; 210 void TIM3_PWMIConfig(TIM3_Channel_TypeDef TIM3_Channel,
1092                     ; 211                      TIM3_ICPolarity_TypeDef TIM3_ICPolarity,
1092                     ; 212                      TIM3_ICSelection_TypeDef TIM3_ICSelection,
1092                     ; 213                      TIM3_ICPSC_TypeDef TIM3_ICPrescaler,
1092                     ; 214                      uint8_t TIM3_ICFilter)
1092                     ; 215 {
1093                     .text:	section	.text,new
1094  0000               _TIM3_PWMIConfig:
1096  0000 89            	pushw	x
1097  0001 89            	pushw	x
1098       00000002      OFST:	set	2
1101                     ; 216   uint8_t icpolarity = (uint8_t)TIM3_ICPOLARITY_RISING;
1103                     ; 217   uint8_t icselection = (uint8_t)TIM3_ICSELECTION_DIRECTTI;
1105                     ; 220   assert_param(IS_TIM3_PWMI_CHANNEL_OK(TIM3_Channel));
1107  0002 9e            	ld	a,xh
1108  0003 4d            	tnz	a
1109  0004 270a          	jreq	L261
1110  0006 9e            	ld	a,xh
1111  0007 4a            	dec	a
1112  0008 2706          	jreq	L261
1113  000a ae00dc        	ldw	x,#220
1114  000d cd00b4        	call	LC004
1115  0010               L261:
1116                     ; 221   assert_param(IS_TIM3_IC_POLARITY_OK(TIM3_ICPolarity));
1118  0010 7b04          	ld	a,(OFST+2,sp)
1119  0012 270a          	jreq	L271
1120  0014 a144          	cp	a,#68
1121  0016 2706          	jreq	L271
1122  0018 ae00dd        	ldw	x,#221
1123  001b cd00b4        	call	LC004
1124  001e               L271:
1125                     ; 222   assert_param(IS_TIM3_IC_SELECTION_OK(TIM3_ICSelection));
1127  001e 7b07          	ld	a,(OFST+5,sp)
1128  0020 a101          	cp	a,#1
1129  0022 270e          	jreq	L202
1130  0024 a102          	cp	a,#2
1131  0026 270a          	jreq	L202
1132  0028 a103          	cp	a,#3
1133  002a 2706          	jreq	L202
1134  002c ae00de        	ldw	x,#222
1135  002f cd00b4        	call	LC004
1136  0032               L202:
1137                     ; 223   assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_ICPrescaler));
1139  0032 7b08          	ld	a,(OFST+6,sp)
1140  0034 2711          	jreq	L212
1141  0036 a104          	cp	a,#4
1142  0038 270d          	jreq	L212
1143  003a a108          	cp	a,#8
1144  003c 2709          	jreq	L212
1145  003e a10c          	cp	a,#12
1146  0040 2705          	jreq	L212
1147  0042 ae00df        	ldw	x,#223
1148  0045 ad6d          	call	LC004
1149  0047               L212:
1150                     ; 226   if (TIM3_ICPolarity != TIM3_ICPOLARITY_FALLING)
1152  0047 7b04          	ld	a,(OFST+2,sp)
1153  0049 a144          	cp	a,#68
1154  004b 2706          	jreq	L104
1155                     ; 228     icpolarity = (uint8_t)TIM3_ICPOLARITY_FALLING;
1157  004d a644          	ld	a,#68
1158  004f 6b01          	ld	(OFST-1,sp),a
1161  0051 2002          	jra	L304
1162  0053               L104:
1163                     ; 232     icpolarity = (uint8_t)TIM3_ICPOLARITY_RISING;
1165  0053 0f01          	clr	(OFST-1,sp)
1167  0055               L304:
1168                     ; 236   if (TIM3_ICSelection == TIM3_ICSELECTION_DIRECTTI)
1170  0055 7b07          	ld	a,(OFST+5,sp)
1171  0057 4a            	dec	a
1172  0058 2604          	jrne	L504
1173                     ; 238     icselection = (uint8_t)TIM3_ICSELECTION_INDIRECTTI;
1175  005a a602          	ld	a,#2
1177  005c 2002          	jra	L704
1178  005e               L504:
1179                     ; 242     icselection = (uint8_t)TIM3_ICSELECTION_DIRECTTI;
1181  005e a601          	ld	a,#1
1182  0060               L704:
1183  0060 6b02          	ld	(OFST+0,sp),a
1185                     ; 245   if (TIM3_Channel != TIM3_CHANNEL_2)
1187  0062 7b03          	ld	a,(OFST+1,sp)
1188  0064 4a            	dec	a
1189  0065 2726          	jreq	L114
1190                     ; 248     TI1_Config((uint8_t)TIM3_ICPolarity, (uint8_t)TIM3_ICSelection,
1190                     ; 249                (uint8_t)TIM3_ICFilter);
1192  0067 7b09          	ld	a,(OFST+7,sp)
1193  0069 88            	push	a
1194  006a 7b08          	ld	a,(OFST+6,sp)
1195  006c 97            	ld	xl,a
1196  006d 7b05          	ld	a,(OFST+3,sp)
1197  006f 95            	ld	xh,a
1198  0070 cd0000        	call	L3_TI1_Config
1200  0073 84            	pop	a
1201                     ; 252     TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
1203  0074 7b08          	ld	a,(OFST+6,sp)
1204  0076 cd0000        	call	_TIM3_SetIC1Prescaler
1206                     ; 255     TI2_Config(icpolarity, icselection, TIM3_ICFilter);
1208  0079 7b09          	ld	a,(OFST+7,sp)
1209  007b 88            	push	a
1210  007c 7b03          	ld	a,(OFST+1,sp)
1211  007e 97            	ld	xl,a
1212  007f 7b02          	ld	a,(OFST+0,sp)
1213  0081 95            	ld	xh,a
1214  0082 cd0000        	call	L5_TI2_Config
1216  0085 84            	pop	a
1217                     ; 258     TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
1219  0086 7b08          	ld	a,(OFST+6,sp)
1220  0088 cd0000        	call	_TIM3_SetIC2Prescaler
1223  008b 2024          	jra	L314
1224  008d               L114:
1225                     ; 263     TI2_Config((uint8_t)TIM3_ICPolarity, (uint8_t)TIM3_ICSelection,
1225                     ; 264                (uint8_t)TIM3_ICFilter);
1227  008d 7b09          	ld	a,(OFST+7,sp)
1228  008f 88            	push	a
1229  0090 7b08          	ld	a,(OFST+6,sp)
1230  0092 97            	ld	xl,a
1231  0093 7b05          	ld	a,(OFST+3,sp)
1232  0095 95            	ld	xh,a
1233  0096 cd0000        	call	L5_TI2_Config
1235  0099 84            	pop	a
1236                     ; 267     TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
1238  009a 7b08          	ld	a,(OFST+6,sp)
1239  009c cd0000        	call	_TIM3_SetIC2Prescaler
1241                     ; 270     TI1_Config(icpolarity, icselection, TIM3_ICFilter);
1243  009f 7b09          	ld	a,(OFST+7,sp)
1244  00a1 88            	push	a
1245  00a2 7b03          	ld	a,(OFST+1,sp)
1246  00a4 97            	ld	xl,a
1247  00a5 7b02          	ld	a,(OFST+0,sp)
1248  00a7 95            	ld	xh,a
1249  00a8 cd0000        	call	L3_TI1_Config
1251  00ab 84            	pop	a
1252                     ; 273     TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
1254  00ac 7b08          	ld	a,(OFST+6,sp)
1255  00ae cd0000        	call	_TIM3_SetIC1Prescaler
1257  00b1               L314:
1258                     ; 275 }
1261  00b1 5b04          	addw	sp,#4
1262  00b3 81            	ret	
1263  00b4               LC004:
1264  00b4 89            	pushw	x
1265  00b5 5f            	clrw	x
1266  00b6 89            	pushw	x
1267  00b7 ae0000        	ldw	x,#L102
1268  00ba cd0000        	call	_assert_failed
1270  00bd 5b04          	addw	sp,#4
1271  00bf 81            	ret	
1327                     ; 283 void TIM3_Cmd(FunctionalState NewState)
1327                     ; 284 {
1328                     .text:	section	.text,new
1329  0000               _TIM3_Cmd:
1331  0000 88            	push	a
1332       00000000      OFST:	set	0
1335                     ; 286   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1337  0001 4d            	tnz	a
1338  0002 2711          	jreq	L442
1339  0004 4a            	dec	a
1340  0005 270e          	jreq	L442
1341  0007 ae011e        	ldw	x,#286
1342  000a 89            	pushw	x
1343  000b 5f            	clrw	x
1344  000c 89            	pushw	x
1345  000d ae0000        	ldw	x,#L102
1346  0010 cd0000        	call	_assert_failed
1348  0013 5b04          	addw	sp,#4
1349  0015               L442:
1350                     ; 289   if (NewState != DISABLE)
1352  0015 7b01          	ld	a,(OFST+1,sp)
1353  0017 2706          	jreq	L344
1354                     ; 291     TIM3->CR1 |= (uint8_t)TIM3_CR1_CEN;
1356  0019 72105320      	bset	21280,#0
1358  001d 2004          	jra	L544
1359  001f               L344:
1360                     ; 295     TIM3->CR1 &= (uint8_t)(~TIM3_CR1_CEN);
1362  001f 72115320      	bres	21280,#0
1363  0023               L544:
1364                     ; 297 }
1367  0023 84            	pop	a
1368  0024 81            	ret	
1441                     ; 311 void TIM3_ITConfig(TIM3_IT_TypeDef TIM3_IT, FunctionalState NewState)
1441                     ; 312 {
1442                     .text:	section	.text,new
1443  0000               _TIM3_ITConfig:
1445  0000 89            	pushw	x
1446       00000000      OFST:	set	0
1449                     ; 314   assert_param(IS_TIM3_IT_OK(TIM3_IT));
1451  0001 9e            	ld	a,xh
1452  0002 4d            	tnz	a
1453  0003 2705          	jreq	L252
1454  0005 9e            	ld	a,xh
1455  0006 a108          	cp	a,#8
1456  0008 2505          	jrult	L452
1457  000a               L252:
1458  000a ae013a        	ldw	x,#314
1459  000d ad22          	call	LC005
1460  000f               L452:
1461                     ; 315   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1463  000f 7b02          	ld	a,(OFST+2,sp)
1464  0011 2708          	jreq	L462
1465  0013 4a            	dec	a
1466  0014 2705          	jreq	L462
1467  0016 ae013b        	ldw	x,#315
1468  0019 ad16          	call	LC005
1469  001b               L462:
1470                     ; 317   if (NewState != DISABLE)
1472  001b 7b02          	ld	a,(OFST+2,sp)
1473  001d 2707          	jreq	L305
1474                     ; 320     TIM3->IER |= (uint8_t)TIM3_IT;
1476  001f c65321        	ld	a,21281
1477  0022 1a01          	or	a,(OFST+1,sp)
1479  0024 2006          	jra	L505
1480  0026               L305:
1481                     ; 325     TIM3->IER &= (uint8_t)(~TIM3_IT);
1483  0026 7b01          	ld	a,(OFST+1,sp)
1484  0028 43            	cpl	a
1485  0029 c45321        	and	a,21281
1486  002c               L505:
1487  002c c75321        	ld	21281,a
1488                     ; 327 }
1491  002f 85            	popw	x
1492  0030 81            	ret	
1493  0031               LC005:
1494  0031 89            	pushw	x
1495  0032 5f            	clrw	x
1496  0033 89            	pushw	x
1497  0034 ae0000        	ldw	x,#L102
1498  0037 cd0000        	call	_assert_failed
1500  003a 5b04          	addw	sp,#4
1501  003c 81            	ret	
1538                     ; 335 void TIM3_UpdateDisableConfig(FunctionalState NewState)
1538                     ; 336 {
1539                     .text:	section	.text,new
1540  0000               _TIM3_UpdateDisableConfig:
1542  0000 88            	push	a
1543       00000000      OFST:	set	0
1546                     ; 338   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1548  0001 4d            	tnz	a
1549  0002 2711          	jreq	L672
1550  0004 4a            	dec	a
1551  0005 270e          	jreq	L672
1552  0007 ae0152        	ldw	x,#338
1553  000a 89            	pushw	x
1554  000b 5f            	clrw	x
1555  000c 89            	pushw	x
1556  000d ae0000        	ldw	x,#L102
1557  0010 cd0000        	call	_assert_failed
1559  0013 5b04          	addw	sp,#4
1560  0015               L672:
1561                     ; 341   if (NewState != DISABLE)
1563  0015 7b01          	ld	a,(OFST+1,sp)
1564  0017 2706          	jreq	L525
1565                     ; 343     TIM3->CR1 |= TIM3_CR1_UDIS;
1567  0019 72125320      	bset	21280,#1
1569  001d 2004          	jra	L725
1570  001f               L525:
1571                     ; 347     TIM3->CR1 &= (uint8_t)(~TIM3_CR1_UDIS);
1573  001f 72135320      	bres	21280,#1
1574  0023               L725:
1575                     ; 349 }
1578  0023 84            	pop	a
1579  0024 81            	ret	
1638                     ; 359 void TIM3_UpdateRequestConfig(TIM3_UpdateSource_TypeDef TIM3_UpdateSource)
1638                     ; 360 {
1639                     .text:	section	.text,new
1640  0000               _TIM3_UpdateRequestConfig:
1642  0000 88            	push	a
1643       00000000      OFST:	set	0
1646                     ; 362   assert_param(IS_TIM3_UPDATE_SOURCE_OK(TIM3_UpdateSource));
1648  0001 4d            	tnz	a
1649  0002 2711          	jreq	L013
1650  0004 4a            	dec	a
1651  0005 270e          	jreq	L013
1652  0007 ae016a        	ldw	x,#362
1653  000a 89            	pushw	x
1654  000b 5f            	clrw	x
1655  000c 89            	pushw	x
1656  000d ae0000        	ldw	x,#L102
1657  0010 cd0000        	call	_assert_failed
1659  0013 5b04          	addw	sp,#4
1660  0015               L013:
1661                     ; 365   if (TIM3_UpdateSource != TIM3_UPDATESOURCE_GLOBAL)
1663  0015 7b01          	ld	a,(OFST+1,sp)
1664  0017 2706          	jreq	L755
1665                     ; 367     TIM3->CR1 |= TIM3_CR1_URS;
1667  0019 72145320      	bset	21280,#2
1669  001d 2004          	jra	L165
1670  001f               L755:
1671                     ; 371     TIM3->CR1 &= (uint8_t)(~TIM3_CR1_URS);
1673  001f 72155320      	bres	21280,#2
1674  0023               L165:
1675                     ; 373 }
1678  0023 84            	pop	a
1679  0024 81            	ret	
1737                     ; 383 void TIM3_SelectOnePulseMode(TIM3_OPMode_TypeDef TIM3_OPMode)
1737                     ; 384 {
1738                     .text:	section	.text,new
1739  0000               _TIM3_SelectOnePulseMode:
1741  0000 88            	push	a
1742       00000000      OFST:	set	0
1745                     ; 386   assert_param(IS_TIM3_OPM_MODE_OK(TIM3_OPMode));
1747  0001 a101          	cp	a,#1
1748  0003 2711          	jreq	L223
1749  0005 4d            	tnz	a
1750  0006 270e          	jreq	L223
1751  0008 ae0182        	ldw	x,#386
1752  000b 89            	pushw	x
1753  000c 5f            	clrw	x
1754  000d 89            	pushw	x
1755  000e ae0000        	ldw	x,#L102
1756  0011 cd0000        	call	_assert_failed
1758  0014 5b04          	addw	sp,#4
1759  0016               L223:
1760                     ; 389   if (TIM3_OPMode != TIM3_OPMODE_REPETITIVE)
1762  0016 7b01          	ld	a,(OFST+1,sp)
1763  0018 2706          	jreq	L116
1764                     ; 391     TIM3->CR1 |= TIM3_CR1_OPM;
1766  001a 72165320      	bset	21280,#3
1768  001e 2004          	jra	L316
1769  0020               L116:
1770                     ; 395     TIM3->CR1 &= (uint8_t)(~TIM3_CR1_OPM);
1772  0020 72175320      	bres	21280,#3
1773  0024               L316:
1774                     ; 397 }
1777  0024 84            	pop	a
1778  0025 81            	ret	
1847                     ; 427 void TIM3_PrescalerConfig(TIM3_Prescaler_TypeDef Prescaler,
1847                     ; 428                           TIM3_PSCReloadMode_TypeDef TIM3_PSCReloadMode)
1847                     ; 429 {
1848                     .text:	section	.text,new
1849  0000               _TIM3_PrescalerConfig:
1851  0000 89            	pushw	x
1852       00000000      OFST:	set	0
1855                     ; 431   assert_param(IS_TIM3_PRESCALER_RELOAD_OK(TIM3_PSCReloadMode));
1857  0001 9f            	ld	a,xl
1858  0002 4d            	tnz	a
1859  0003 2709          	jreq	L433
1860  0005 9f            	ld	a,xl
1861  0006 4a            	dec	a
1862  0007 2705          	jreq	L433
1863  0009 ae01af        	ldw	x,#431
1864  000c ad51          	call	LC006
1865  000e               L433:
1866                     ; 432   assert_param(IS_TIM3_PRESCALER_OK(Prescaler));
1868  000e 7b01          	ld	a,(OFST+1,sp)
1869  0010 2743          	jreq	L443
1870  0012 a101          	cp	a,#1
1871  0014 273f          	jreq	L443
1872  0016 a102          	cp	a,#2
1873  0018 273b          	jreq	L443
1874  001a a103          	cp	a,#3
1875  001c 2737          	jreq	L443
1876  001e a104          	cp	a,#4
1877  0020 2733          	jreq	L443
1878  0022 a105          	cp	a,#5
1879  0024 272f          	jreq	L443
1880  0026 a106          	cp	a,#6
1881  0028 272b          	jreq	L443
1882  002a a107          	cp	a,#7
1883  002c 2727          	jreq	L443
1884  002e a108          	cp	a,#8
1885  0030 2723          	jreq	L443
1886  0032 a109          	cp	a,#9
1887  0034 271f          	jreq	L443
1888  0036 a10a          	cp	a,#10
1889  0038 271b          	jreq	L443
1890  003a a10b          	cp	a,#11
1891  003c 2717          	jreq	L443
1892  003e a10c          	cp	a,#12
1893  0040 2713          	jreq	L443
1894  0042 a10d          	cp	a,#13
1895  0044 270f          	jreq	L443
1896  0046 a10e          	cp	a,#14
1897  0048 270b          	jreq	L443
1898  004a a10f          	cp	a,#15
1899  004c 2707          	jreq	L443
1900  004e ae01b0        	ldw	x,#432
1901  0051 ad0c          	call	LC006
1902  0053 7b01          	ld	a,(OFST+1,sp)
1903  0055               L443:
1904                     ; 435   TIM3->PSCR = (uint8_t)Prescaler;
1906  0055 c7532a        	ld	21290,a
1907                     ; 438   TIM3->EGR = (uint8_t)TIM3_PSCReloadMode;
1909  0058 7b02          	ld	a,(OFST+2,sp)
1910  005a c75324        	ld	21284,a
1911                     ; 439 }
1914  005d 85            	popw	x
1915  005e 81            	ret	
1916  005f               LC006:
1917  005f 89            	pushw	x
1918  0060 5f            	clrw	x
1919  0061 89            	pushw	x
1920  0062 ae0000        	ldw	x,#L102
1921  0065 cd0000        	call	_assert_failed
1923  0068 5b04          	addw	sp,#4
1924  006a 81            	ret	
1983                     ; 450 void TIM3_ForcedOC1Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
1983                     ; 451 {
1984                     .text:	section	.text,new
1985  0000               _TIM3_ForcedOC1Config:
1987  0000 88            	push	a
1988       00000000      OFST:	set	0
1991                     ; 453   assert_param(IS_TIM3_FORCED_ACTION_OK(TIM3_ForcedAction));
1993  0001 a150          	cp	a,#80
1994  0003 2712          	jreq	L653
1995  0005 a140          	cp	a,#64
1996  0007 270e          	jreq	L653
1997  0009 ae01c5        	ldw	x,#453
1998  000c 89            	pushw	x
1999  000d 5f            	clrw	x
2000  000e 89            	pushw	x
2001  000f ae0000        	ldw	x,#L102
2002  0012 cd0000        	call	_assert_failed
2004  0015 5b04          	addw	sp,#4
2005  0017               L653:
2006                     ; 456   TIM3->CCMR1 =  (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM))  | (uint8_t)TIM3_ForcedAction);
2008  0017 c65325        	ld	a,21285
2009  001a a48f          	and	a,#143
2010  001c 1a01          	or	a,(OFST+1,sp)
2011  001e c75325        	ld	21285,a
2012                     ; 457 }
2015  0021 84            	pop	a
2016  0022 81            	ret	
2053                     ; 468 void TIM3_ForcedOC2Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
2053                     ; 469 {
2054                     .text:	section	.text,new
2055  0000               _TIM3_ForcedOC2Config:
2057  0000 88            	push	a
2058       00000000      OFST:	set	0
2061                     ; 471   assert_param(IS_TIM3_FORCED_ACTION_OK(TIM3_ForcedAction));
2063  0001 a150          	cp	a,#80
2064  0003 2712          	jreq	L073
2065  0005 a140          	cp	a,#64
2066  0007 270e          	jreq	L073
2067  0009 ae01d7        	ldw	x,#471
2068  000c 89            	pushw	x
2069  000d 5f            	clrw	x
2070  000e 89            	pushw	x
2071  000f ae0000        	ldw	x,#L102
2072  0012 cd0000        	call	_assert_failed
2074  0015 5b04          	addw	sp,#4
2075  0017               L073:
2076                     ; 474   TIM3->CCMR2 =  (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_ForcedAction);
2078  0017 c65326        	ld	a,21286
2079  001a a48f          	and	a,#143
2080  001c 1a01          	or	a,(OFST+1,sp)
2081  001e c75326        	ld	21286,a
2082                     ; 475 }
2085  0021 84            	pop	a
2086  0022 81            	ret	
2123                     ; 483 void TIM3_ARRPreloadConfig(FunctionalState NewState)
2123                     ; 484 {
2124                     .text:	section	.text,new
2125  0000               _TIM3_ARRPreloadConfig:
2127  0000 88            	push	a
2128       00000000      OFST:	set	0
2131                     ; 486   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2133  0001 4d            	tnz	a
2134  0002 2711          	jreq	L204
2135  0004 4a            	dec	a
2136  0005 270e          	jreq	L204
2137  0007 ae01e6        	ldw	x,#486
2138  000a 89            	pushw	x
2139  000b 5f            	clrw	x
2140  000c 89            	pushw	x
2141  000d ae0000        	ldw	x,#L102
2142  0010 cd0000        	call	_assert_failed
2144  0013 5b04          	addw	sp,#4
2145  0015               L204:
2146                     ; 489   if (NewState != DISABLE)
2148  0015 7b01          	ld	a,(OFST+1,sp)
2149  0017 2706          	jreq	L137
2150                     ; 491     TIM3->CR1 |= TIM3_CR1_ARPE;
2152  0019 721e5320      	bset	21280,#7
2154  001d 2004          	jra	L337
2155  001f               L137:
2156                     ; 495     TIM3->CR1 &= (uint8_t)(~TIM3_CR1_ARPE);
2158  001f 721f5320      	bres	21280,#7
2159  0023               L337:
2160                     ; 497 }
2163  0023 84            	pop	a
2164  0024 81            	ret	
2201                     ; 505 void TIM3_OC1PreloadConfig(FunctionalState NewState)
2201                     ; 506 {
2202                     .text:	section	.text,new
2203  0000               _TIM3_OC1PreloadConfig:
2205  0000 88            	push	a
2206       00000000      OFST:	set	0
2209                     ; 508   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2211  0001 4d            	tnz	a
2212  0002 2711          	jreq	L414
2213  0004 4a            	dec	a
2214  0005 270e          	jreq	L414
2215  0007 ae01fc        	ldw	x,#508
2216  000a 89            	pushw	x
2217  000b 5f            	clrw	x
2218  000c 89            	pushw	x
2219  000d ae0000        	ldw	x,#L102
2220  0010 cd0000        	call	_assert_failed
2222  0013 5b04          	addw	sp,#4
2223  0015               L414:
2224                     ; 511   if (NewState != DISABLE)
2226  0015 7b01          	ld	a,(OFST+1,sp)
2227  0017 2706          	jreq	L357
2228                     ; 513     TIM3->CCMR1 |= TIM3_CCMR_OCxPE;
2230  0019 72165325      	bset	21285,#3
2232  001d 2004          	jra	L557
2233  001f               L357:
2234                     ; 517     TIM3->CCMR1 &= (uint8_t)(~TIM3_CCMR_OCxPE);
2236  001f 72175325      	bres	21285,#3
2237  0023               L557:
2238                     ; 519 }
2241  0023 84            	pop	a
2242  0024 81            	ret	
2279                     ; 527 void TIM3_OC2PreloadConfig(FunctionalState NewState)
2279                     ; 528 {
2280                     .text:	section	.text,new
2281  0000               _TIM3_OC2PreloadConfig:
2283  0000 88            	push	a
2284       00000000      OFST:	set	0
2287                     ; 530   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2289  0001 4d            	tnz	a
2290  0002 2711          	jreq	L624
2291  0004 4a            	dec	a
2292  0005 270e          	jreq	L624
2293  0007 ae0212        	ldw	x,#530
2294  000a 89            	pushw	x
2295  000b 5f            	clrw	x
2296  000c 89            	pushw	x
2297  000d ae0000        	ldw	x,#L102
2298  0010 cd0000        	call	_assert_failed
2300  0013 5b04          	addw	sp,#4
2301  0015               L624:
2302                     ; 533   if (NewState != DISABLE)
2304  0015 7b01          	ld	a,(OFST+1,sp)
2305  0017 2706          	jreq	L577
2306                     ; 535     TIM3->CCMR2 |= TIM3_CCMR_OCxPE;
2308  0019 72165326      	bset	21286,#3
2310  001d 2004          	jra	L777
2311  001f               L577:
2312                     ; 539     TIM3->CCMR2 &= (uint8_t)(~TIM3_CCMR_OCxPE);
2314  001f 72175326      	bres	21286,#3
2315  0023               L777:
2316                     ; 541 }
2319  0023 84            	pop	a
2320  0024 81            	ret	
2386                     ; 552 void TIM3_GenerateEvent(TIM3_EventSource_TypeDef TIM3_EventSource)
2386                     ; 553 {
2387                     .text:	section	.text,new
2388  0000               _TIM3_GenerateEvent:
2390  0000 88            	push	a
2391       00000000      OFST:	set	0
2394                     ; 555   assert_param(IS_TIM3_EVENT_SOURCE_OK(TIM3_EventSource));
2396  0001 4d            	tnz	a
2397  0002 260e          	jrne	L634
2398  0004 ae022b        	ldw	x,#555
2399  0007 89            	pushw	x
2400  0008 5f            	clrw	x
2401  0009 89            	pushw	x
2402  000a ae0000        	ldw	x,#L102
2403  000d cd0000        	call	_assert_failed
2405  0010 5b04          	addw	sp,#4
2406  0012               L634:
2407                     ; 558   TIM3->EGR = (uint8_t)TIM3_EventSource;
2409  0012 7b01          	ld	a,(OFST+1,sp)
2410  0014 c75324        	ld	21284,a
2411                     ; 559 }
2414  0017 84            	pop	a
2415  0018 81            	ret	
2452                     ; 569 void TIM3_OC1PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
2452                     ; 570 {
2453                     .text:	section	.text,new
2454  0000               _TIM3_OC1PolarityConfig:
2456  0000 88            	push	a
2457       00000000      OFST:	set	0
2460                     ; 572   assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
2462  0001 4d            	tnz	a
2463  0002 2712          	jreq	L054
2464  0004 a122          	cp	a,#34
2465  0006 270e          	jreq	L054
2466  0008 ae023c        	ldw	x,#572
2467  000b 89            	pushw	x
2468  000c 5f            	clrw	x
2469  000d 89            	pushw	x
2470  000e ae0000        	ldw	x,#L102
2471  0011 cd0000        	call	_assert_failed
2473  0014 5b04          	addw	sp,#4
2474  0016               L054:
2475                     ; 575   if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
2477  0016 7b01          	ld	a,(OFST+1,sp)
2478  0018 2706          	jreq	L7401
2479                     ; 577     TIM3->CCER1 |= TIM3_CCER1_CC1P;
2481  001a 72125327      	bset	21287,#1
2483  001e 2004          	jra	L1501
2484  0020               L7401:
2485                     ; 581     TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
2487  0020 72135327      	bres	21287,#1
2488  0024               L1501:
2489                     ; 583 }
2492  0024 84            	pop	a
2493  0025 81            	ret	
2530                     ; 593 void TIM3_OC2PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
2530                     ; 594 {
2531                     .text:	section	.text,new
2532  0000               _TIM3_OC2PolarityConfig:
2534  0000 88            	push	a
2535       00000000      OFST:	set	0
2538                     ; 596   assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
2540  0001 4d            	tnz	a
2541  0002 2712          	jreq	L264
2542  0004 a122          	cp	a,#34
2543  0006 270e          	jreq	L264
2544  0008 ae0254        	ldw	x,#596
2545  000b 89            	pushw	x
2546  000c 5f            	clrw	x
2547  000d 89            	pushw	x
2548  000e ae0000        	ldw	x,#L102
2549  0011 cd0000        	call	_assert_failed
2551  0014 5b04          	addw	sp,#4
2552  0016               L264:
2553                     ; 599   if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
2555  0016 7b01          	ld	a,(OFST+1,sp)
2556  0018 2706          	jreq	L1701
2557                     ; 601     TIM3->CCER1 |= TIM3_CCER1_CC2P;
2559  001a 721a5327      	bset	21287,#5
2561  001e 2004          	jra	L3701
2562  0020               L1701:
2563                     ; 605     TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
2565  0020 721b5327      	bres	21287,#5
2566  0024               L3701:
2567                     ; 607 }
2570  0024 84            	pop	a
2571  0025 81            	ret	
2617                     ; 619 void TIM3_CCxCmd(TIM3_Channel_TypeDef TIM3_Channel, FunctionalState NewState)
2617                     ; 620 {
2618                     .text:	section	.text,new
2619  0000               _TIM3_CCxCmd:
2621  0000 89            	pushw	x
2622       00000000      OFST:	set	0
2625                     ; 622   assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
2627  0001 9e            	ld	a,xh
2628  0002 4d            	tnz	a
2629  0003 2709          	jreq	L474
2630  0005 9e            	ld	a,xh
2631  0006 4a            	dec	a
2632  0007 2705          	jreq	L474
2633  0009 ae026e        	ldw	x,#622
2634  000c ad30          	call	LC007
2635  000e               L474:
2636                     ; 623   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2638  000e 7b02          	ld	a,(OFST+2,sp)
2639  0010 2708          	jreq	L405
2640  0012 4a            	dec	a
2641  0013 2705          	jreq	L405
2642  0015 ae026f        	ldw	x,#623
2643  0018 ad24          	call	LC007
2644  001a               L405:
2645                     ; 625   if (TIM3_Channel == TIM3_CHANNEL_1)
2647  001a 7b01          	ld	a,(OFST+1,sp)
2648  001c 2610          	jrne	L7111
2649                     ; 628     if (NewState != DISABLE)
2651  001e 7b02          	ld	a,(OFST+2,sp)
2652  0020 2706          	jreq	L1211
2653                     ; 630       TIM3->CCER1 |= TIM3_CCER1_CC1E;
2655  0022 72105327      	bset	21287,#0
2657  0026 2014          	jra	L5211
2658  0028               L1211:
2659                     ; 634       TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
2661  0028 72115327      	bres	21287,#0
2662  002c 200e          	jra	L5211
2663  002e               L7111:
2664                     ; 641     if (NewState != DISABLE)
2666  002e 7b02          	ld	a,(OFST+2,sp)
2667  0030 2706          	jreq	L7211
2668                     ; 643       TIM3->CCER1 |= TIM3_CCER1_CC2E;
2670  0032 72185327      	bset	21287,#4
2672  0036 2004          	jra	L5211
2673  0038               L7211:
2674                     ; 647       TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
2676  0038 72195327      	bres	21287,#4
2677  003c               L5211:
2678                     ; 650 }
2681  003c 85            	popw	x
2682  003d 81            	ret	
2683  003e               LC007:
2684  003e 89            	pushw	x
2685  003f 5f            	clrw	x
2686  0040 89            	pushw	x
2687  0041 ae0000        	ldw	x,#L102
2688  0044 cd0000        	call	_assert_failed
2690  0047 5b04          	addw	sp,#4
2691  0049 81            	ret	
2737                     ; 671 void TIM3_SelectOCxM(TIM3_Channel_TypeDef TIM3_Channel, TIM3_OCMode_TypeDef TIM3_OCMode)
2737                     ; 672 {
2738                     .text:	section	.text,new
2739  0000               _TIM3_SelectOCxM:
2741  0000 89            	pushw	x
2742       00000000      OFST:	set	0
2745                     ; 674   assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
2747  0001 9e            	ld	a,xh
2748  0002 4d            	tnz	a
2749  0003 2709          	jreq	L615
2750  0005 9e            	ld	a,xh
2751  0006 4a            	dec	a
2752  0007 2705          	jreq	L615
2753  0009 ae02a2        	ldw	x,#674
2754  000c ad49          	call	LC008
2755  000e               L615:
2756                     ; 675   assert_param(IS_TIM3_OCM_OK(TIM3_OCMode));
2758  000e 7b02          	ld	a,(OFST+2,sp)
2759  0010 2721          	jreq	L625
2760  0012 a110          	cp	a,#16
2761  0014 271d          	jreq	L625
2762  0016 a120          	cp	a,#32
2763  0018 2719          	jreq	L625
2764  001a a130          	cp	a,#48
2765  001c 2715          	jreq	L625
2766  001e a160          	cp	a,#96
2767  0020 2711          	jreq	L625
2768  0022 a170          	cp	a,#112
2769  0024 270d          	jreq	L625
2770  0026 a150          	cp	a,#80
2771  0028 2709          	jreq	L625
2772  002a a140          	cp	a,#64
2773  002c 2705          	jreq	L625
2774  002e ae02a3        	ldw	x,#675
2775  0031 ad24          	call	LC008
2776  0033               L625:
2777                     ; 677   if (TIM3_Channel == TIM3_CHANNEL_1)
2779  0033 7b01          	ld	a,(OFST+1,sp)
2780  0035 2610          	jrne	L5511
2781                     ; 680     TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
2783  0037 72115327      	bres	21287,#0
2784                     ; 683     TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
2786  003b c65325        	ld	a,21285
2787  003e a48f          	and	a,#143
2788  0040 1a02          	or	a,(OFST+2,sp)
2789  0042 c75325        	ld	21285,a
2791  0045 200e          	jra	L7511
2792  0047               L5511:
2793                     ; 688     TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
2795  0047 72195327      	bres	21287,#4
2796                     ; 691     TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
2798  004b c65326        	ld	a,21286
2799  004e a48f          	and	a,#143
2800  0050 1a02          	or	a,(OFST+2,sp)
2801  0052 c75326        	ld	21286,a
2802  0055               L7511:
2803                     ; 693 }
2806  0055 85            	popw	x
2807  0056 81            	ret	
2808  0057               LC008:
2809  0057 89            	pushw	x
2810  0058 5f            	clrw	x
2811  0059 89            	pushw	x
2812  005a ae0000        	ldw	x,#L102
2813  005d cd0000        	call	_assert_failed
2815  0060 5b04          	addw	sp,#4
2816  0062 81            	ret	
2848                     ; 701 void TIM3_SetCounter(uint16_t Counter)
2848                     ; 702 {
2849                     .text:	section	.text,new
2850  0000               _TIM3_SetCounter:
2854                     ; 704   TIM3->CNTRH = (uint8_t)(Counter >> 8);
2856  0000 9e            	ld	a,xh
2857  0001 c75328        	ld	21288,a
2858                     ; 705   TIM3->CNTRL = (uint8_t)(Counter);
2860  0004 9f            	ld	a,xl
2861  0005 c75329        	ld	21289,a
2862                     ; 706 }
2865  0008 81            	ret	
2897                     ; 714 void TIM3_SetAutoreload(uint16_t Autoreload)
2897                     ; 715 {
2898                     .text:	section	.text,new
2899  0000               _TIM3_SetAutoreload:
2903                     ; 717   TIM3->ARRH = (uint8_t)(Autoreload >> 8);
2905  0000 9e            	ld	a,xh
2906  0001 c7532b        	ld	21291,a
2907                     ; 718   TIM3->ARRL = (uint8_t)(Autoreload);
2909  0004 9f            	ld	a,xl
2910  0005 c7532c        	ld	21292,a
2911                     ; 719 }
2914  0008 81            	ret	
2946                     ; 727 void TIM3_SetCompare1(uint16_t Compare1)
2946                     ; 728 {
2947                     .text:	section	.text,new
2948  0000               _TIM3_SetCompare1:
2952                     ; 730   TIM3->CCR1H = (uint8_t)(Compare1 >> 8);
2954  0000 9e            	ld	a,xh
2955  0001 c7532d        	ld	21293,a
2956                     ; 731   TIM3->CCR1L = (uint8_t)(Compare1);
2958  0004 9f            	ld	a,xl
2959  0005 c7532e        	ld	21294,a
2960                     ; 732 }
2963  0008 81            	ret	
2995                     ; 740 void TIM3_SetCompare2(uint16_t Compare2)
2995                     ; 741 {
2996                     .text:	section	.text,new
2997  0000               _TIM3_SetCompare2:
3001                     ; 743   TIM3->CCR2H = (uint8_t)(Compare2 >> 8);
3003  0000 9e            	ld	a,xh
3004  0001 c7532f        	ld	21295,a
3005                     ; 744   TIM3->CCR2L = (uint8_t)(Compare2);
3007  0004 9f            	ld	a,xl
3008  0005 c75330        	ld	21296,a
3009                     ; 745 }
3012  0008 81            	ret	
3049                     ; 757 void TIM3_SetIC1Prescaler(TIM3_ICPSC_TypeDef TIM3_IC1Prescaler)
3049                     ; 758 {
3050                     .text:	section	.text,new
3051  0000               _TIM3_SetIC1Prescaler:
3053  0000 88            	push	a
3054       00000000      OFST:	set	0
3057                     ; 760   assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_IC1Prescaler));
3059  0001 4d            	tnz	a
3060  0002 271a          	jreq	L055
3061  0004 a104          	cp	a,#4
3062  0006 2716          	jreq	L055
3063  0008 a108          	cp	a,#8
3064  000a 2712          	jreq	L055
3065  000c a10c          	cp	a,#12
3066  000e 270e          	jreq	L055
3067  0010 ae02f8        	ldw	x,#760
3068  0013 89            	pushw	x
3069  0014 5f            	clrw	x
3070  0015 89            	pushw	x
3071  0016 ae0000        	ldw	x,#L102
3072  0019 cd0000        	call	_assert_failed
3074  001c 5b04          	addw	sp,#4
3075  001e               L055:
3076                     ; 763   TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_ICxPSC)) | (uint8_t)TIM3_IC1Prescaler);
3078  001e c65325        	ld	a,21285
3079  0021 a4f3          	and	a,#243
3080  0023 1a01          	or	a,(OFST+1,sp)
3081  0025 c75325        	ld	21285,a
3082                     ; 764 }
3085  0028 84            	pop	a
3086  0029 81            	ret	
3123                     ; 776 void TIM3_SetIC2Prescaler(TIM3_ICPSC_TypeDef TIM3_IC2Prescaler)
3123                     ; 777 {
3124                     .text:	section	.text,new
3125  0000               _TIM3_SetIC2Prescaler:
3127  0000 88            	push	a
3128       00000000      OFST:	set	0
3131                     ; 779   assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_IC2Prescaler));
3133  0001 4d            	tnz	a
3134  0002 271a          	jreq	L265
3135  0004 a104          	cp	a,#4
3136  0006 2716          	jreq	L265
3137  0008 a108          	cp	a,#8
3138  000a 2712          	jreq	L265
3139  000c a10c          	cp	a,#12
3140  000e 270e          	jreq	L265
3141  0010 ae030b        	ldw	x,#779
3142  0013 89            	pushw	x
3143  0014 5f            	clrw	x
3144  0015 89            	pushw	x
3145  0016 ae0000        	ldw	x,#L102
3146  0019 cd0000        	call	_assert_failed
3148  001c 5b04          	addw	sp,#4
3149  001e               L265:
3150                     ; 782   TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_ICxPSC)) | (uint8_t)TIM3_IC2Prescaler);
3152  001e c65326        	ld	a,21286
3153  0021 a4f3          	and	a,#243
3154  0023 1a01          	or	a,(OFST+1,sp)
3155  0025 c75326        	ld	21286,a
3156                     ; 783 }
3159  0028 84            	pop	a
3160  0029 81            	ret	
3206                     ; 790 uint16_t TIM3_GetCapture1(void)
3206                     ; 791 {
3207                     .text:	section	.text,new
3208  0000               _TIM3_GetCapture1:
3210  0000 5204          	subw	sp,#4
3211       00000004      OFST:	set	4
3214                     ; 793   uint16_t tmpccr1 = 0;
3216                     ; 794   uint8_t tmpccr1l=0, tmpccr1h=0;
3220                     ; 796   tmpccr1h = TIM3->CCR1H;
3222  0002 c6532d        	ld	a,21293
3223  0005 6b02          	ld	(OFST-2,sp),a
3225                     ; 797   tmpccr1l = TIM3->CCR1L;
3227  0007 c6532e        	ld	a,21294
3228  000a 6b01          	ld	(OFST-3,sp),a
3230                     ; 799   tmpccr1 = (uint16_t)(tmpccr1l);
3232  000c 5f            	clrw	x
3233  000d 97            	ld	xl,a
3234  000e 1f03          	ldw	(OFST-1,sp),x
3236                     ; 800   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
3238  0010 5f            	clrw	x
3239  0011 7b02          	ld	a,(OFST-2,sp)
3240  0013 97            	ld	xl,a
3241  0014 7b04          	ld	a,(OFST+0,sp)
3242  0016 01            	rrwa	x,a
3243  0017 1a03          	or	a,(OFST-1,sp)
3244  0019 01            	rrwa	x,a
3246                     ; 802   return (uint16_t)tmpccr1;
3250  001a 5b04          	addw	sp,#4
3251  001c 81            	ret	
3297                     ; 810 uint16_t TIM3_GetCapture2(void)
3297                     ; 811 {
3298                     .text:	section	.text,new
3299  0000               _TIM3_GetCapture2:
3301  0000 5204          	subw	sp,#4
3302       00000004      OFST:	set	4
3305                     ; 813   uint16_t tmpccr2 = 0;
3307                     ; 814   uint8_t tmpccr2l=0, tmpccr2h=0;
3311                     ; 816   tmpccr2h = TIM3->CCR2H;
3313  0002 c6532f        	ld	a,21295
3314  0005 6b02          	ld	(OFST-2,sp),a
3316                     ; 817   tmpccr2l = TIM3->CCR2L;
3318  0007 c65330        	ld	a,21296
3319  000a 6b01          	ld	(OFST-3,sp),a
3321                     ; 819   tmpccr2 = (uint16_t)(tmpccr2l);
3323  000c 5f            	clrw	x
3324  000d 97            	ld	xl,a
3325  000e 1f03          	ldw	(OFST-1,sp),x
3327                     ; 820   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
3329  0010 5f            	clrw	x
3330  0011 7b02          	ld	a,(OFST-2,sp)
3331  0013 97            	ld	xl,a
3332  0014 7b04          	ld	a,(OFST+0,sp)
3333  0016 01            	rrwa	x,a
3334  0017 1a03          	or	a,(OFST-1,sp)
3335  0019 01            	rrwa	x,a
3337                     ; 822   return (uint16_t)tmpccr2;
3341  001a 5b04          	addw	sp,#4
3342  001c 81            	ret	
3374                     ; 830 uint16_t TIM3_GetCounter(void)
3374                     ; 831 {
3375                     .text:	section	.text,new
3376  0000               _TIM3_GetCounter:
3378  0000 89            	pushw	x
3379       00000002      OFST:	set	2
3382                     ; 832   uint16_t tmpcntr = 0;
3384                     ; 834   tmpcntr = ((uint16_t)TIM3->CNTRH << 8);
3386  0001 c65328        	ld	a,21288
3387  0004 97            	ld	xl,a
3388  0005 4f            	clr	a
3389  0006 02            	rlwa	x,a
3390  0007 1f01          	ldw	(OFST-1,sp),x
3392                     ; 836   return (uint16_t)( tmpcntr| (uint16_t)(TIM3->CNTRL));
3394  0009 c65329        	ld	a,21289
3395  000c 5f            	clrw	x
3396  000d 97            	ld	xl,a
3397  000e 01            	rrwa	x,a
3398  000f 1a02          	or	a,(OFST+0,sp)
3399  0011 01            	rrwa	x,a
3400  0012 1a01          	or	a,(OFST-1,sp)
3401  0014 01            	rrwa	x,a
3404  0015 5b02          	addw	sp,#2
3405  0017 81            	ret	
3429                     ; 844 TIM3_Prescaler_TypeDef TIM3_GetPrescaler(void)
3429                     ; 845 {
3430                     .text:	section	.text,new
3431  0000               _TIM3_GetPrescaler:
3435                     ; 847   return (TIM3_Prescaler_TypeDef)(TIM3->PSCR);
3437  0000 c6532a        	ld	a,21290
3440  0003 81            	ret	
3562                     ; 861 FlagStatus TIM3_GetFlagStatus(TIM3_FLAG_TypeDef TIM3_FLAG)
3562                     ; 862 {
3563                     .text:	section	.text,new
3564  0000               _TIM3_GetFlagStatus:
3566  0000 89            	pushw	x
3567  0001 89            	pushw	x
3568       00000002      OFST:	set	2
3571                     ; 863   FlagStatus bitstatus = RESET;
3573                     ; 864   uint8_t tim3_flag_l = 0, tim3_flag_h = 0;
3577                     ; 867   assert_param(IS_TIM3_GET_FLAG_OK(TIM3_FLAG));
3579  0002 a30001        	cpw	x,#1
3580  0005 2722          	jreq	L406
3581  0007 a30002        	cpw	x,#2
3582  000a 271d          	jreq	L406
3583  000c a30004        	cpw	x,#4
3584  000f 2718          	jreq	L406
3585  0011 a30200        	cpw	x,#512
3586  0014 2713          	jreq	L406
3587  0016 a30400        	cpw	x,#1024
3588  0019 270e          	jreq	L406
3589  001b ae0363        	ldw	x,#867
3590  001e 89            	pushw	x
3591  001f 5f            	clrw	x
3592  0020 89            	pushw	x
3593  0021 ae0000        	ldw	x,#L102
3594  0024 cd0000        	call	_assert_failed
3596  0027 5b04          	addw	sp,#4
3597  0029               L406:
3598                     ; 869   tim3_flag_l = (uint8_t)(TIM3->SR1 & (uint8_t)TIM3_FLAG);
3600  0029 c65322        	ld	a,21282
3601  002c 1404          	and	a,(OFST+2,sp)
3602  002e 6b01          	ld	(OFST-1,sp),a
3604                     ; 870   tim3_flag_h = (uint8_t)((uint16_t)TIM3_FLAG >> 8);
3606  0030 7b03          	ld	a,(OFST+1,sp)
3607  0032 6b02          	ld	(OFST+0,sp),a
3609                     ; 872   if (((tim3_flag_l) | (uint8_t)(TIM3->SR2 & tim3_flag_h)) != (uint8_t)RESET )
3611  0034 c45323        	and	a,21283
3612  0037 1a01          	or	a,(OFST-1,sp)
3613  0039 2702          	jreq	L5341
3614                     ; 874     bitstatus = SET;
3616  003b a601          	ld	a,#1
3619  003d               L5341:
3620                     ; 878     bitstatus = RESET;
3623                     ; 880   return (FlagStatus)bitstatus;
3627  003d 5b04          	addw	sp,#4
3628  003f 81            	ret	
3664                     ; 894 void TIM3_ClearFlag(TIM3_FLAG_TypeDef TIM3_FLAG)
3664                     ; 895 {
3665                     .text:	section	.text,new
3666  0000               _TIM3_ClearFlag:
3668  0000 89            	pushw	x
3669       00000000      OFST:	set	0
3672                     ; 897   assert_param(IS_TIM3_CLEAR_FLAG_OK(TIM3_FLAG));
3674  0001 01            	rrwa	x,a
3675  0002 a4f8          	and	a,#248
3676  0004 01            	rrwa	x,a
3677  0005 a4f9          	and	a,#249
3678  0007 01            	rrwa	x,a
3679  0008 5d            	tnzw	x
3680  0009 2604          	jrne	L216
3681  000b 1e01          	ldw	x,(OFST+1,sp)
3682  000d 260e          	jrne	L416
3683  000f               L216:
3684  000f ae0381        	ldw	x,#897
3685  0012 89            	pushw	x
3686  0013 5f            	clrw	x
3687  0014 89            	pushw	x
3688  0015 ae0000        	ldw	x,#L102
3689  0018 cd0000        	call	_assert_failed
3691  001b 5b04          	addw	sp,#4
3692  001d               L416:
3693                     ; 900   TIM3->SR1 = (uint8_t)(~((uint8_t)(TIM3_FLAG)));
3695  001d 7b02          	ld	a,(OFST+2,sp)
3696  001f 43            	cpl	a
3697  0020 c75322        	ld	21282,a
3698                     ; 901   TIM3->SR2 = (uint8_t)(~((uint8_t)((uint16_t)TIM3_FLAG >> 8)));
3700  0023 7b01          	ld	a,(OFST+1,sp)
3701  0025 43            	cpl	a
3702  0026 c75323        	ld	21283,a
3703                     ; 902 }
3706  0029 85            	popw	x
3707  002a 81            	ret	
3768                     ; 913 ITStatus TIM3_GetITStatus(TIM3_IT_TypeDef TIM3_IT)
3768                     ; 914 {
3769                     .text:	section	.text,new
3770  0000               _TIM3_GetITStatus:
3772  0000 88            	push	a
3773  0001 89            	pushw	x
3774       00000002      OFST:	set	2
3777                     ; 915   ITStatus bitstatus = RESET;
3779                     ; 916   uint8_t TIM3_itStatus = 0, TIM3_itEnable = 0;
3783                     ; 919   assert_param(IS_TIM3_GET_IT_OK(TIM3_IT));
3785  0002 a101          	cp	a,#1
3786  0004 2716          	jreq	L626
3787  0006 a102          	cp	a,#2
3788  0008 2712          	jreq	L626
3789  000a a104          	cp	a,#4
3790  000c 270e          	jreq	L626
3791  000e ae0397        	ldw	x,#919
3792  0011 89            	pushw	x
3793  0012 5f            	clrw	x
3794  0013 89            	pushw	x
3795  0014 ae0000        	ldw	x,#L102
3796  0017 cd0000        	call	_assert_failed
3798  001a 5b04          	addw	sp,#4
3799  001c               L626:
3800                     ; 921   TIM3_itStatus = (uint8_t)(TIM3->SR1 & TIM3_IT);
3802  001c c65322        	ld	a,21282
3803  001f 1403          	and	a,(OFST+1,sp)
3804  0021 6b01          	ld	(OFST-1,sp),a
3806                     ; 923   TIM3_itEnable = (uint8_t)(TIM3->IER & TIM3_IT);
3808  0023 c65321        	ld	a,21281
3809  0026 1403          	and	a,(OFST+1,sp)
3810  0028 6b02          	ld	(OFST+0,sp),a
3812                     ; 925   if ((TIM3_itStatus != (uint8_t)RESET ) && (TIM3_itEnable != (uint8_t)RESET ))
3814  002a 7b01          	ld	a,(OFST-1,sp)
3815  002c 2708          	jreq	L5051
3817  002e 7b02          	ld	a,(OFST+0,sp)
3818  0030 2704          	jreq	L5051
3819                     ; 927     bitstatus = SET;
3821  0032 a601          	ld	a,#1
3824  0034 2001          	jra	L7051
3825  0036               L5051:
3826                     ; 931     bitstatus = RESET;
3828  0036 4f            	clr	a
3830  0037               L7051:
3831                     ; 933   return (ITStatus)(bitstatus);
3835  0037 5b03          	addw	sp,#3
3836  0039 81            	ret	
3873                     ; 945 void TIM3_ClearITPendingBit(TIM3_IT_TypeDef TIM3_IT)
3873                     ; 946 {
3874                     .text:	section	.text,new
3875  0000               _TIM3_ClearITPendingBit:
3877  0000 88            	push	a
3878       00000000      OFST:	set	0
3881                     ; 948   assert_param(IS_TIM3_IT_OK(TIM3_IT));
3883  0001 4d            	tnz	a
3884  0002 2704          	jreq	L436
3885  0004 a108          	cp	a,#8
3886  0006 250e          	jrult	L636
3887  0008               L436:
3888  0008 ae03b4        	ldw	x,#948
3889  000b 89            	pushw	x
3890  000c 5f            	clrw	x
3891  000d 89            	pushw	x
3892  000e ae0000        	ldw	x,#L102
3893  0011 cd0000        	call	_assert_failed
3895  0014 5b04          	addw	sp,#4
3896  0016               L636:
3897                     ; 951   TIM3->SR1 = (uint8_t)(~TIM3_IT);
3899  0016 7b01          	ld	a,(OFST+1,sp)
3900  0018 43            	cpl	a
3901  0019 c75322        	ld	21282,a
3902                     ; 952 }
3905  001c 84            	pop	a
3906  001d 81            	ret	
3952                     ; 970 static void TI1_Config(uint8_t TIM3_ICPolarity,
3952                     ; 971                        uint8_t TIM3_ICSelection,
3952                     ; 972                        uint8_t TIM3_ICFilter)
3952                     ; 973 {
3953                     .text:	section	.text,new
3954  0000               L3_TI1_Config:
3956  0000 89            	pushw	x
3957  0001 88            	push	a
3958       00000001      OFST:	set	1
3961                     ; 975   TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
3963  0002 72115327      	bres	21287,#0
3964                     ; 978   TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~( TIM3_CCMR_CCxS | TIM3_CCMR_ICxF))) | (uint8_t)(( (TIM3_ICSelection)) | ((uint8_t)( TIM3_ICFilter << 4))));
3966  0006 7b06          	ld	a,(OFST+5,sp)
3967  0008 97            	ld	xl,a
3968  0009 a610          	ld	a,#16
3969  000b 42            	mul	x,a
3970  000c 9f            	ld	a,xl
3971  000d 1a03          	or	a,(OFST+2,sp)
3972  000f 6b01          	ld	(OFST+0,sp),a
3974  0011 c65325        	ld	a,21285
3975  0014 a40c          	and	a,#12
3976  0016 1a01          	or	a,(OFST+0,sp)
3977  0018 c75325        	ld	21285,a
3978                     ; 981   if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
3980  001b 7b02          	ld	a,(OFST+1,sp)
3981  001d 2706          	jreq	L7451
3982                     ; 983     TIM3->CCER1 |= TIM3_CCER1_CC1P;
3984  001f 72125327      	bset	21287,#1
3986  0023 2004          	jra	L1551
3987  0025               L7451:
3988                     ; 987     TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
3990  0025 72135327      	bres	21287,#1
3991  0029               L1551:
3992                     ; 990   TIM3->CCER1 |= TIM3_CCER1_CC1E;
3994  0029 72105327      	bset	21287,#0
3995                     ; 991 }
3998  002d 5b03          	addw	sp,#3
3999  002f 81            	ret	
4045                     ; 1009 static void TI2_Config(uint8_t TIM3_ICPolarity,
4045                     ; 1010                        uint8_t TIM3_ICSelection,
4045                     ; 1011                        uint8_t TIM3_ICFilter)
4045                     ; 1012 {
4046                     .text:	section	.text,new
4047  0000               L5_TI2_Config:
4049  0000 89            	pushw	x
4050  0001 88            	push	a
4051       00000001      OFST:	set	1
4054                     ; 1014   TIM3->CCER1 &=  (uint8_t)(~TIM3_CCER1_CC2E);
4056  0002 72195327      	bres	21287,#4
4057                     ; 1017   TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~( TIM3_CCMR_CCxS |
4057                     ; 1018                                                               TIM3_CCMR_ICxF    ))) | (uint8_t)(( (TIM3_ICSelection)) | 
4057                     ; 1019                                                                                                 ((uint8_t)( TIM3_ICFilter << 4))));
4059  0006 7b06          	ld	a,(OFST+5,sp)
4060  0008 97            	ld	xl,a
4061  0009 a610          	ld	a,#16
4062  000b 42            	mul	x,a
4063  000c 9f            	ld	a,xl
4064  000d 1a03          	or	a,(OFST+2,sp)
4065  000f 6b01          	ld	(OFST+0,sp),a
4067  0011 c65326        	ld	a,21286
4068  0014 a40c          	and	a,#12
4069  0016 1a01          	or	a,(OFST+0,sp)
4070  0018 c75326        	ld	21286,a
4071                     ; 1022   if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
4073  001b 7b02          	ld	a,(OFST+1,sp)
4074  001d 2706          	jreq	L3751
4075                     ; 1024     TIM3->CCER1 |= TIM3_CCER1_CC2P;
4077  001f 721a5327      	bset	21287,#5
4079  0023 2004          	jra	L5751
4080  0025               L3751:
4081                     ; 1028     TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
4083  0025 721b5327      	bres	21287,#5
4084  0029               L5751:
4085                     ; 1032   TIM3->CCER1 |= TIM3_CCER1_CC2E;
4087  0029 72185327      	bset	21287,#4
4088                     ; 1033 }
4091  002d 5b03          	addw	sp,#3
4092  002f 81            	ret	
4105                     	xdef	_TIM3_ClearITPendingBit
4106                     	xdef	_TIM3_GetITStatus
4107                     	xdef	_TIM3_ClearFlag
4108                     	xdef	_TIM3_GetFlagStatus
4109                     	xdef	_TIM3_GetPrescaler
4110                     	xdef	_TIM3_GetCounter
4111                     	xdef	_TIM3_GetCapture2
4112                     	xdef	_TIM3_GetCapture1
4113                     	xdef	_TIM3_SetIC2Prescaler
4114                     	xdef	_TIM3_SetIC1Prescaler
4115                     	xdef	_TIM3_SetCompare2
4116                     	xdef	_TIM3_SetCompare1
4117                     	xdef	_TIM3_SetAutoreload
4118                     	xdef	_TIM3_SetCounter
4119                     	xdef	_TIM3_SelectOCxM
4120                     	xdef	_TIM3_CCxCmd
4121                     	xdef	_TIM3_OC2PolarityConfig
4122                     	xdef	_TIM3_OC1PolarityConfig
4123                     	xdef	_TIM3_GenerateEvent
4124                     	xdef	_TIM3_OC2PreloadConfig
4125                     	xdef	_TIM3_OC1PreloadConfig
4126                     	xdef	_TIM3_ARRPreloadConfig
4127                     	xdef	_TIM3_ForcedOC2Config
4128                     	xdef	_TIM3_ForcedOC1Config
4129                     	xdef	_TIM3_PrescalerConfig
4130                     	xdef	_TIM3_SelectOnePulseMode
4131                     	xdef	_TIM3_UpdateRequestConfig
4132                     	xdef	_TIM3_UpdateDisableConfig
4133                     	xdef	_TIM3_ITConfig
4134                     	xdef	_TIM3_Cmd
4135                     	xdef	_TIM3_PWMIConfig
4136                     	xdef	_TIM3_ICInit
4137                     	xdef	_TIM3_OC2Init
4138                     	xdef	_TIM3_OC1Init
4139                     	xdef	_TIM3_TimeBaseInit
4140                     	xdef	_TIM3_DeInit
4141                     	xref	_assert_failed
4142                     .const:	section	.text
4143  0000               L102:
4144  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
4145  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
4146  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
4147  0036 5f74696d332e  	dc.b	"_tim3.c",0
4167                     	end
