   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
   4                     ; Optimizer V4.5.6 - 18 Jul 2023
  50                     ; 58 void TIM1_DeInit(void)
  50                     ; 59 {
  52                     .text:	section	.text,new
  53  0000               _TIM1_DeInit:
  57                     ; 60   TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  59  0000 725f5250      	clr	21072
  60                     ; 61   TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  62  0004 725f5251      	clr	21073
  63                     ; 62   TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  65  0008 725f5252      	clr	21074
  66                     ; 63   TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  68  000c 725f5253      	clr	21075
  69                     ; 64   TIM1->IER  = TIM1_IER_RESET_VALUE;
  71  0010 725f5254      	clr	21076
  72                     ; 65   TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  74  0014 725f5256      	clr	21078
  75                     ; 67   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  77  0018 725f525c      	clr	21084
  78                     ; 68   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  80  001c 725f525d      	clr	21085
  81                     ; 70   TIM1->CCMR1 = 0x01;
  83  0020 35015258      	mov	21080,#1
  84                     ; 71   TIM1->CCMR2 = 0x01;
  86  0024 35015259      	mov	21081,#1
  87                     ; 72   TIM1->CCMR3 = 0x01;
  89  0028 3501525a      	mov	21082,#1
  90                     ; 73   TIM1->CCMR4 = 0x01;
  92  002c 3501525b      	mov	21083,#1
  93                     ; 75   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  95  0030 725f525c      	clr	21084
  96                     ; 76   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  98  0034 725f525d      	clr	21085
  99                     ; 77   TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
 101  0038 725f5258      	clr	21080
 102                     ; 78   TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
 104  003c 725f5259      	clr	21081
 105                     ; 79   TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
 107  0040 725f525a      	clr	21082
 108                     ; 80   TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
 110  0044 725f525b      	clr	21083
 111                     ; 81   TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
 113  0048 725f525e      	clr	21086
 114                     ; 82   TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
 116  004c 725f525f      	clr	21087
 117                     ; 83   TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 119  0050 725f5260      	clr	21088
 120                     ; 84   TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 122  0054 725f5261      	clr	21089
 123                     ; 85   TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 125  0058 35ff5262      	mov	21090,#255
 126                     ; 86   TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 128  005c 35ff5263      	mov	21091,#255
 129                     ; 87   TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 131  0060 725f5265      	clr	21093
 132                     ; 88   TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 134  0064 725f5266      	clr	21094
 135                     ; 89   TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 137  0068 725f5267      	clr	21095
 138                     ; 90   TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 140  006c 725f5268      	clr	21096
 141                     ; 91   TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 143  0070 725f5269      	clr	21097
 144                     ; 92   TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 146  0074 725f526a      	clr	21098
 147                     ; 93   TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 149  0078 725f526b      	clr	21099
 150                     ; 94   TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 152  007c 725f526c      	clr	21100
 153                     ; 95   TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 155  0080 725f526f      	clr	21103
 156                     ; 96   TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 158  0084 35015257      	mov	21079,#1
 159                     ; 97   TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 161  0088 725f526e      	clr	21102
 162                     ; 98   TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 164  008c 725f526d      	clr	21101
 165                     ; 99   TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 167  0090 725f5264      	clr	21092
 168                     ; 100   TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 170  0094 725f5255      	clr	21077
 171                     ; 101 }
 174  0098 81            	ret	
 278                     ; 111 void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
 278                     ; 112                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 278                     ; 113                        uint16_t TIM1_Period,
 278                     ; 114                        uint8_t TIM1_RepetitionCounter)
 278                     ; 115 {
 279                     .text:	section	.text,new
 280  0000               _TIM1_TimeBaseInit:
 282  0000 89            	pushw	x
 283       00000000      OFST:	set	0
 286                     ; 117   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 288  0001 7b05          	ld	a,(OFST+5,sp)
 289  0003 271e          	jreq	L41
 290  0005 a110          	cp	a,#16
 291  0007 271a          	jreq	L41
 292  0009 a120          	cp	a,#32
 293  000b 2716          	jreq	L41
 294  000d a140          	cp	a,#64
 295  000f 2712          	jreq	L41
 296  0011 a160          	cp	a,#96
 297  0013 270e          	jreq	L41
 298  0015 ae0075        	ldw	x,#117
 299  0018 89            	pushw	x
 300  0019 5f            	clrw	x
 301  001a 89            	pushw	x
 302  001b ae0000        	ldw	x,#L37
 303  001e cd0000        	call	_assert_failed
 305  0021 5b04          	addw	sp,#4
 306  0023               L41:
 307                     ; 120   TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
 309  0023 7b06          	ld	a,(OFST+6,sp)
 310  0025 c75262        	ld	21090,a
 311                     ; 121   TIM1->ARRL = (uint8_t)(TIM1_Period);
 313  0028 7b07          	ld	a,(OFST+7,sp)
 314  002a c75263        	ld	21091,a
 315                     ; 124   TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
 317  002d 7b01          	ld	a,(OFST+1,sp)
 318  002f c75260        	ld	21088,a
 319                     ; 125   TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
 321  0032 7b02          	ld	a,(OFST+2,sp)
 322  0034 c75261        	ld	21089,a
 323                     ; 128   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
 323                     ; 129                         | (uint8_t)(TIM1_CounterMode));
 325  0037 c65250        	ld	a,21072
 326  003a a48f          	and	a,#143
 327  003c 1a05          	or	a,(OFST+5,sp)
 328  003e c75250        	ld	21072,a
 329                     ; 132   TIM1->RCR = TIM1_RepetitionCounter;
 331  0041 7b08          	ld	a,(OFST+8,sp)
 332  0043 c75264        	ld	21092,a
 333                     ; 133 }
 336  0046 85            	popw	x
 337  0047 81            	ret	
 621                     ; 154 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 621                     ; 155                   TIM1_OutputState_TypeDef TIM1_OutputState,
 621                     ; 156                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 621                     ; 157                   uint16_t TIM1_Pulse,
 621                     ; 158                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 621                     ; 159                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 621                     ; 160                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 621                     ; 161                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 621                     ; 162 {
 622                     .text:	section	.text,new
 623  0000               _TIM1_OC1Init:
 625  0000 89            	pushw	x
 626  0001 5203          	subw	sp,#3
 627       00000003      OFST:	set	3
 630                     ; 164   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 632  0003 9e            	ld	a,xh
 633  0004 4d            	tnz	a
 634  0005 271f          	jreq	L62
 635  0007 9e            	ld	a,xh
 636  0008 a110          	cp	a,#16
 637  000a 271a          	jreq	L62
 638  000c 9e            	ld	a,xh
 639  000d a120          	cp	a,#32
 640  000f 2715          	jreq	L62
 641  0011 9e            	ld	a,xh
 642  0012 a130          	cp	a,#48
 643  0014 2710          	jreq	L62
 644  0016 9e            	ld	a,xh
 645  0017 a160          	cp	a,#96
 646  0019 270b          	jreq	L62
 647  001b 9e            	ld	a,xh
 648  001c a170          	cp	a,#112
 649  001e 2706          	jreq	L62
 650  0020 ae00a4        	ldw	x,#164
 651  0023 cd00d4        	call	LC001
 652  0026               L62:
 653                     ; 165   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 655  0026 7b05          	ld	a,(OFST+2,sp)
 656  0028 270a          	jreq	L63
 657  002a a111          	cp	a,#17
 658  002c 2706          	jreq	L63
 659  002e ae00a5        	ldw	x,#165
 660  0031 cd00d4        	call	LC001
 661  0034               L63:
 662                     ; 166   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 664  0034 7b08          	ld	a,(OFST+5,sp)
 665  0036 270a          	jreq	L64
 666  0038 a144          	cp	a,#68
 667  003a 2706          	jreq	L64
 668  003c ae00a6        	ldw	x,#166
 669  003f cd00d4        	call	LC001
 670  0042               L64:
 671                     ; 167   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 673  0042 7b0b          	ld	a,(OFST+8,sp)
 674  0044 270a          	jreq	L65
 675  0046 a122          	cp	a,#34
 676  0048 2706          	jreq	L65
 677  004a ae00a7        	ldw	x,#167
 678  004d cd00d4        	call	LC001
 679  0050               L65:
 680                     ; 168   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 682  0050 7b0c          	ld	a,(OFST+9,sp)
 683  0052 2709          	jreq	L66
 684  0054 a188          	cp	a,#136
 685  0056 2705          	jreq	L66
 686  0058 ae00a8        	ldw	x,#168
 687  005b ad77          	call	LC001
 688  005d               L66:
 689                     ; 169   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 691  005d 7b0d          	ld	a,(OFST+10,sp)
 692  005f a155          	cp	a,#85
 693  0061 2708          	jreq	L67
 694  0063 4d            	tnz	a
 695  0064 2705          	jreq	L67
 696  0066 ae00a9        	ldw	x,#169
 697  0069 ad69          	call	LC001
 698  006b               L67:
 699                     ; 170   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 701  006b 7b0e          	ld	a,(OFST+11,sp)
 702  006d a12a          	cp	a,#42
 703  006f 2708          	jreq	L601
 704  0071 4d            	tnz	a
 705  0072 2705          	jreq	L601
 706  0074 ae00aa        	ldw	x,#170
 707  0077 ad5b          	call	LC001
 708  0079               L601:
 709                     ; 174   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
 709                     ; 175                              | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 711  0079 c6525c        	ld	a,21084
 712  007c a4f0          	and	a,#240
 713  007e c7525c        	ld	21084,a
 714                     ; 178   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
 714                     ; 179                                      | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
 714                     ; 180                            | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
 714                     ; 181                                        | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
 716  0081 7b0c          	ld	a,(OFST+9,sp)
 717  0083 a408          	and	a,#8
 718  0085 6b03          	ld	(OFST+0,sp),a
 720  0087 7b0b          	ld	a,(OFST+8,sp)
 721  0089 a402          	and	a,#2
 722  008b 1a03          	or	a,(OFST+0,sp)
 723  008d 6b02          	ld	(OFST-1,sp),a
 725  008f 7b08          	ld	a,(OFST+5,sp)
 726  0091 a404          	and	a,#4
 727  0093 6b01          	ld	(OFST-2,sp),a
 729  0095 7b05          	ld	a,(OFST+2,sp)
 730  0097 a401          	and	a,#1
 731  0099 1a01          	or	a,(OFST-2,sp)
 732  009b 1a02          	or	a,(OFST-1,sp)
 733  009d ca525c        	or	a,21084
 734  00a0 c7525c        	ld	21084,a
 735                     ; 184   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 735                     ; 185                           (uint8_t)TIM1_OCMode);
 737  00a3 c65258        	ld	a,21080
 738  00a6 a48f          	and	a,#143
 739  00a8 1a04          	or	a,(OFST+1,sp)
 740  00aa c75258        	ld	21080,a
 741                     ; 188   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 743  00ad c6526f        	ld	a,21103
 744  00b0 a4fc          	and	a,#252
 745  00b2 c7526f        	ld	21103,a
 746                     ; 190   TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
 746                     ; 191                           (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 748  00b5 7b0e          	ld	a,(OFST+11,sp)
 749  00b7 a402          	and	a,#2
 750  00b9 6b03          	ld	(OFST+0,sp),a
 752  00bb 7b0d          	ld	a,(OFST+10,sp)
 753  00bd a401          	and	a,#1
 754  00bf 1a03          	or	a,(OFST+0,sp)
 755  00c1 ca526f        	or	a,21103
 756  00c4 c7526f        	ld	21103,a
 757                     ; 194   TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
 759  00c7 7b09          	ld	a,(OFST+6,sp)
 760  00c9 c75265        	ld	21093,a
 761                     ; 195   TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
 763  00cc 7b0a          	ld	a,(OFST+7,sp)
 764  00ce c75266        	ld	21094,a
 765                     ; 196 }
 768  00d1 5b05          	addw	sp,#5
 769  00d3 81            	ret	
 770  00d4               LC001:
 771  00d4 89            	pushw	x
 772  00d5 5f            	clrw	x
 773  00d6 89            	pushw	x
 774  00d7 ae0000        	ldw	x,#L37
 775  00da cd0000        	call	_assert_failed
 777  00dd 5b04          	addw	sp,#4
 778  00df 81            	ret	
 881                     ; 217 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 881                     ; 218                   TIM1_OutputState_TypeDef TIM1_OutputState,
 881                     ; 219                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 881                     ; 220                   uint16_t TIM1_Pulse,
 881                     ; 221                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 881                     ; 222                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 881                     ; 223                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 881                     ; 224                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 881                     ; 225 {
 882                     .text:	section	.text,new
 883  0000               _TIM1_OC2Init:
 885  0000 89            	pushw	x
 886  0001 5203          	subw	sp,#3
 887       00000003      OFST:	set	3
 890                     ; 227   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 892  0003 9e            	ld	a,xh
 893  0004 4d            	tnz	a
 894  0005 271f          	jreq	L021
 895  0007 9e            	ld	a,xh
 896  0008 a110          	cp	a,#16
 897  000a 271a          	jreq	L021
 898  000c 9e            	ld	a,xh
 899  000d a120          	cp	a,#32
 900  000f 2715          	jreq	L021
 901  0011 9e            	ld	a,xh
 902  0012 a130          	cp	a,#48
 903  0014 2710          	jreq	L021
 904  0016 9e            	ld	a,xh
 905  0017 a160          	cp	a,#96
 906  0019 270b          	jreq	L021
 907  001b 9e            	ld	a,xh
 908  001c a170          	cp	a,#112
 909  001e 2706          	jreq	L021
 910  0020 ae00e3        	ldw	x,#227
 911  0023 cd00d4        	call	LC002
 912  0026               L021:
 913                     ; 228   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 915  0026 7b05          	ld	a,(OFST+2,sp)
 916  0028 270a          	jreq	L031
 917  002a a111          	cp	a,#17
 918  002c 2706          	jreq	L031
 919  002e ae00e4        	ldw	x,#228
 920  0031 cd00d4        	call	LC002
 921  0034               L031:
 922                     ; 229   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 924  0034 7b08          	ld	a,(OFST+5,sp)
 925  0036 270a          	jreq	L041
 926  0038 a144          	cp	a,#68
 927  003a 2706          	jreq	L041
 928  003c ae00e5        	ldw	x,#229
 929  003f cd00d4        	call	LC002
 930  0042               L041:
 931                     ; 230   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 933  0042 7b0b          	ld	a,(OFST+8,sp)
 934  0044 270a          	jreq	L051
 935  0046 a122          	cp	a,#34
 936  0048 2706          	jreq	L051
 937  004a ae00e6        	ldw	x,#230
 938  004d cd00d4        	call	LC002
 939  0050               L051:
 940                     ; 231   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 942  0050 7b0c          	ld	a,(OFST+9,sp)
 943  0052 2709          	jreq	L061
 944  0054 a188          	cp	a,#136
 945  0056 2705          	jreq	L061
 946  0058 ae00e7        	ldw	x,#231
 947  005b ad77          	call	LC002
 948  005d               L061:
 949                     ; 232   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 951  005d 7b0d          	ld	a,(OFST+10,sp)
 952  005f a155          	cp	a,#85
 953  0061 2708          	jreq	L071
 954  0063 4d            	tnz	a
 955  0064 2705          	jreq	L071
 956  0066 ae00e8        	ldw	x,#232
 957  0069 ad69          	call	LC002
 958  006b               L071:
 959                     ; 233   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 961  006b 7b0e          	ld	a,(OFST+11,sp)
 962  006d a12a          	cp	a,#42
 963  006f 2708          	jreq	L002
 964  0071 4d            	tnz	a
 965  0072 2705          	jreq	L002
 966  0074 ae00e9        	ldw	x,#233
 967  0077 ad5b          	call	LC002
 968  0079               L002:
 969                     ; 237   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
 969                     ; 238                              TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
 971  0079 c6525c        	ld	a,21084
 972  007c a40f          	and	a,#15
 973  007e c7525c        	ld	21084,a
 974                     ; 242   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
 974                     ; 243                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
 974                     ; 244                            (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
 974                     ; 245                                      (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
 976  0081 7b0c          	ld	a,(OFST+9,sp)
 977  0083 a480          	and	a,#128
 978  0085 6b03          	ld	(OFST+0,sp),a
 980  0087 7b0b          	ld	a,(OFST+8,sp)
 981  0089 a420          	and	a,#32
 982  008b 1a03          	or	a,(OFST+0,sp)
 983  008d 6b02          	ld	(OFST-1,sp),a
 985  008f 7b08          	ld	a,(OFST+5,sp)
 986  0091 a440          	and	a,#64
 987  0093 6b01          	ld	(OFST-2,sp),a
 989  0095 7b05          	ld	a,(OFST+2,sp)
 990  0097 a410          	and	a,#16
 991  0099 1a01          	or	a,(OFST-2,sp)
 992  009b 1a02          	or	a,(OFST-1,sp)
 993  009d ca525c        	or	a,21084
 994  00a0 c7525c        	ld	21084,a
 995                     ; 248   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 995                     ; 249                           (uint8_t)TIM1_OCMode);
 997  00a3 c65259        	ld	a,21081
 998  00a6 a48f          	and	a,#143
 999  00a8 1a04          	or	a,(OFST+1,sp)
1000  00aa c75259        	ld	21081,a
1001                     ; 252   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
1003  00ad c6526f        	ld	a,21103
1004  00b0 a4f3          	and	a,#243
1005  00b2 c7526f        	ld	21103,a
1006                     ; 254   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
1006                     ; 255                           (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
1008  00b5 7b0e          	ld	a,(OFST+11,sp)
1009  00b7 a408          	and	a,#8
1010  00b9 6b03          	ld	(OFST+0,sp),a
1012  00bb 7b0d          	ld	a,(OFST+10,sp)
1013  00bd a404          	and	a,#4
1014  00bf 1a03          	or	a,(OFST+0,sp)
1015  00c1 ca526f        	or	a,21103
1016  00c4 c7526f        	ld	21103,a
1017                     ; 258   TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
1019  00c7 7b09          	ld	a,(OFST+6,sp)
1020  00c9 c75267        	ld	21095,a
1021                     ; 259   TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
1023  00cc 7b0a          	ld	a,(OFST+7,sp)
1024  00ce c75268        	ld	21096,a
1025                     ; 260 }
1028  00d1 5b05          	addw	sp,#5
1029  00d3 81            	ret	
1030  00d4               LC002:
1031  00d4 89            	pushw	x
1032  00d5 5f            	clrw	x
1033  00d6 89            	pushw	x
1034  00d7 ae0000        	ldw	x,#L37
1035  00da cd0000        	call	_assert_failed
1037  00dd 5b04          	addw	sp,#4
1038  00df 81            	ret	
1141                     ; 281 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1141                     ; 282                   TIM1_OutputState_TypeDef TIM1_OutputState,
1141                     ; 283                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
1141                     ; 284                   uint16_t TIM1_Pulse,
1141                     ; 285                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1141                     ; 286                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
1141                     ; 287                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
1141                     ; 288                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
1141                     ; 289 {
1142                     .text:	section	.text,new
1143  0000               _TIM1_OC3Init:
1145  0000 89            	pushw	x
1146  0001 5203          	subw	sp,#3
1147       00000003      OFST:	set	3
1150                     ; 291   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1152  0003 9e            	ld	a,xh
1153  0004 4d            	tnz	a
1154  0005 271f          	jreq	L212
1155  0007 9e            	ld	a,xh
1156  0008 a110          	cp	a,#16
1157  000a 271a          	jreq	L212
1158  000c 9e            	ld	a,xh
1159  000d a120          	cp	a,#32
1160  000f 2715          	jreq	L212
1161  0011 9e            	ld	a,xh
1162  0012 a130          	cp	a,#48
1163  0014 2710          	jreq	L212
1164  0016 9e            	ld	a,xh
1165  0017 a160          	cp	a,#96
1166  0019 270b          	jreq	L212
1167  001b 9e            	ld	a,xh
1168  001c a170          	cp	a,#112
1169  001e 2706          	jreq	L212
1170  0020 ae0123        	ldw	x,#291
1171  0023 cd00d4        	call	LC003
1172  0026               L212:
1173                     ; 292   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1175  0026 7b05          	ld	a,(OFST+2,sp)
1176  0028 270a          	jreq	L222
1177  002a a111          	cp	a,#17
1178  002c 2706          	jreq	L222
1179  002e ae0124        	ldw	x,#292
1180  0031 cd00d4        	call	LC003
1181  0034               L222:
1182                     ; 293   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
1184  0034 7b08          	ld	a,(OFST+5,sp)
1185  0036 270a          	jreq	L232
1186  0038 a144          	cp	a,#68
1187  003a 2706          	jreq	L232
1188  003c ae0125        	ldw	x,#293
1189  003f cd00d4        	call	LC003
1190  0042               L232:
1191                     ; 294   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1193  0042 7b0b          	ld	a,(OFST+8,sp)
1194  0044 270a          	jreq	L242
1195  0046 a122          	cp	a,#34
1196  0048 2706          	jreq	L242
1197  004a ae0126        	ldw	x,#294
1198  004d cd00d4        	call	LC003
1199  0050               L242:
1200                     ; 295   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1202  0050 7b0c          	ld	a,(OFST+9,sp)
1203  0052 2709          	jreq	L252
1204  0054 a188          	cp	a,#136
1205  0056 2705          	jreq	L252
1206  0058 ae0127        	ldw	x,#295
1207  005b ad77          	call	LC003
1208  005d               L252:
1209                     ; 296   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1211  005d 7b0d          	ld	a,(OFST+10,sp)
1212  005f a155          	cp	a,#85
1213  0061 2708          	jreq	L262
1214  0063 4d            	tnz	a
1215  0064 2705          	jreq	L262
1216  0066 ae0128        	ldw	x,#296
1217  0069 ad69          	call	LC003
1218  006b               L262:
1219                     ; 297   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1221  006b 7b0e          	ld	a,(OFST+11,sp)
1222  006d a12a          	cp	a,#42
1223  006f 2708          	jreq	L272
1224  0071 4d            	tnz	a
1225  0072 2705          	jreq	L272
1226  0074 ae0129        	ldw	x,#297
1227  0077 ad5b          	call	LC003
1228  0079               L272:
1229                     ; 301   TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
1229                     ; 302                              TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
1231  0079 c6525d        	ld	a,21085
1232  007c a4f0          	and	a,#240
1233  007e c7525d        	ld	21085,a
1234                     ; 305   TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
1234                     ; 306                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
1234                     ; 307                            (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
1234                     ; 308                                      (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
1236  0081 7b0c          	ld	a,(OFST+9,sp)
1237  0083 a408          	and	a,#8
1238  0085 6b03          	ld	(OFST+0,sp),a
1240  0087 7b0b          	ld	a,(OFST+8,sp)
1241  0089 a402          	and	a,#2
1242  008b 1a03          	or	a,(OFST+0,sp)
1243  008d 6b02          	ld	(OFST-1,sp),a
1245  008f 7b08          	ld	a,(OFST+5,sp)
1246  0091 a404          	and	a,#4
1247  0093 6b01          	ld	(OFST-2,sp),a
1249  0095 7b05          	ld	a,(OFST+2,sp)
1250  0097 a401          	and	a,#1
1251  0099 1a01          	or	a,(OFST-2,sp)
1252  009b 1a02          	or	a,(OFST-1,sp)
1253  009d ca525d        	or	a,21085
1254  00a0 c7525d        	ld	21085,a
1255                     ; 311   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1255                     ; 312                           (uint8_t)TIM1_OCMode);
1257  00a3 c6525a        	ld	a,21082
1258  00a6 a48f          	and	a,#143
1259  00a8 1a04          	or	a,(OFST+1,sp)
1260  00aa c7525a        	ld	21082,a
1261                     ; 315   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1263  00ad c6526f        	ld	a,21103
1264  00b0 a4cf          	and	a,#207
1265  00b2 c7526f        	ld	21103,a
1266                     ; 317   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
1266                     ; 318                           (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1268  00b5 7b0e          	ld	a,(OFST+11,sp)
1269  00b7 a420          	and	a,#32
1270  00b9 6b03          	ld	(OFST+0,sp),a
1272  00bb 7b0d          	ld	a,(OFST+10,sp)
1273  00bd a410          	and	a,#16
1274  00bf 1a03          	or	a,(OFST+0,sp)
1275  00c1 ca526f        	or	a,21103
1276  00c4 c7526f        	ld	21103,a
1277                     ; 321   TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
1279  00c7 7b09          	ld	a,(OFST+6,sp)
1280  00c9 c75269        	ld	21097,a
1281                     ; 322   TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
1283  00cc 7b0a          	ld	a,(OFST+7,sp)
1284  00ce c7526a        	ld	21098,a
1285                     ; 323 }
1288  00d1 5b05          	addw	sp,#5
1289  00d3 81            	ret	
1290  00d4               LC003:
1291  00d4 89            	pushw	x
1292  00d5 5f            	clrw	x
1293  00d6 89            	pushw	x
1294  00d7 ae0000        	ldw	x,#L37
1295  00da cd0000        	call	_assert_failed
1297  00dd 5b04          	addw	sp,#4
1298  00df 81            	ret	
1371                     ; 338 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1371                     ; 339                   TIM1_OutputState_TypeDef TIM1_OutputState,
1371                     ; 340                   uint16_t TIM1_Pulse,
1371                     ; 341                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1371                     ; 342                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
1371                     ; 343 {
1372                     .text:	section	.text,new
1373  0000               _TIM1_OC4Init:
1375  0000 89            	pushw	x
1376  0001 88            	push	a
1377       00000001      OFST:	set	1
1380                     ; 345   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1382  0002 9e            	ld	a,xh
1383  0003 4d            	tnz	a
1384  0004 271e          	jreq	L403
1385  0006 9e            	ld	a,xh
1386  0007 a110          	cp	a,#16
1387  0009 2719          	jreq	L403
1388  000b 9e            	ld	a,xh
1389  000c a120          	cp	a,#32
1390  000e 2714          	jreq	L403
1391  0010 9e            	ld	a,xh
1392  0011 a130          	cp	a,#48
1393  0013 270f          	jreq	L403
1394  0015 9e            	ld	a,xh
1395  0016 a160          	cp	a,#96
1396  0018 270a          	jreq	L403
1397  001a 9e            	ld	a,xh
1398  001b a170          	cp	a,#112
1399  001d 2705          	jreq	L403
1400  001f ae0159        	ldw	x,#345
1401  0022 ad6b          	call	LC004
1402  0024               L403:
1403                     ; 346   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1405  0024 7b03          	ld	a,(OFST+2,sp)
1406  0026 2709          	jreq	L413
1407  0028 a111          	cp	a,#17
1408  002a 2705          	jreq	L413
1409  002c ae015a        	ldw	x,#346
1410  002f ad5e          	call	LC004
1411  0031               L413:
1412                     ; 347   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1414  0031 7b08          	ld	a,(OFST+7,sp)
1415  0033 2709          	jreq	L423
1416  0035 a122          	cp	a,#34
1417  0037 2705          	jreq	L423
1418  0039 ae015b        	ldw	x,#347
1419  003c ad51          	call	LC004
1420  003e               L423:
1421                     ; 348   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1423  003e 7b09          	ld	a,(OFST+8,sp)
1424  0040 a155          	cp	a,#85
1425  0042 2708          	jreq	L433
1426  0044 4d            	tnz	a
1427  0045 2705          	jreq	L433
1428  0047 ae015c        	ldw	x,#348
1429  004a ad43          	call	LC004
1430  004c               L433:
1431                     ; 351   TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
1433  004c c6525d        	ld	a,21085
1434  004f a4cf          	and	a,#207
1435  0051 c7525d        	ld	21085,a
1436                     ; 353   TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
1436                     ; 354                            (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
1438  0054 7b08          	ld	a,(OFST+7,sp)
1439  0056 a420          	and	a,#32
1440  0058 6b01          	ld	(OFST+0,sp),a
1442  005a 7b03          	ld	a,(OFST+2,sp)
1443  005c a410          	and	a,#16
1444  005e 1a01          	or	a,(OFST+0,sp)
1445  0060 ca525d        	or	a,21085
1446  0063 c7525d        	ld	21085,a
1447                     ; 357   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1447                     ; 358                           TIM1_OCMode);
1449  0066 c6525b        	ld	a,21083
1450  0069 a48f          	and	a,#143
1451  006b 1a02          	or	a,(OFST+1,sp)
1452  006d c7525b        	ld	21083,a
1453                     ; 361   if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
1455  0070 7b09          	ld	a,(OFST+8,sp)
1456  0072 270a          	jreq	L124
1457                     ; 363     TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
1459  0074 c6526f        	ld	a,21103
1460  0077 aadf          	or	a,#223
1461  0079 c7526f        	ld	21103,a
1463  007c 2004          	jra	L324
1464  007e               L124:
1465                     ; 367     TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
1467  007e 721d526f      	bres	21103,#6
1468  0082               L324:
1469                     ; 371   TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
1471  0082 7b06          	ld	a,(OFST+5,sp)
1472  0084 c7526b        	ld	21099,a
1473                     ; 372   TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
1475  0087 7b07          	ld	a,(OFST+6,sp)
1476  0089 c7526c        	ld	21100,a
1477                     ; 373 }
1480  008c 5b03          	addw	sp,#3
1481  008e 81            	ret	
1482  008f               LC004:
1483  008f 89            	pushw	x
1484  0090 5f            	clrw	x
1485  0091 89            	pushw	x
1486  0092 ae0000        	ldw	x,#L37
1487  0095 cd0000        	call	_assert_failed
1489  0098 5b04          	addw	sp,#4
1490  009a 81            	ret	
1694                     ; 388 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1694                     ; 389                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1694                     ; 390                      uint8_t TIM1_DeadTime,
1694                     ; 391                      TIM1_BreakState_TypeDef TIM1_Break,
1694                     ; 392                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1694                     ; 393                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1694                     ; 394 {
1695                     .text:	section	.text,new
1696  0000               _TIM1_BDTRConfig:
1698  0000 89            	pushw	x
1699  0001 88            	push	a
1700       00000001      OFST:	set	1
1703                     ; 396   assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
1705  0002 9e            	ld	a,xh
1706  0003 a104          	cp	a,#4
1707  0005 2709          	jreq	L643
1708  0007 9e            	ld	a,xh
1709  0008 4d            	tnz	a
1710  0009 2705          	jreq	L643
1711  000b ae018c        	ldw	x,#396
1712  000e ad57          	call	LC005
1713  0010               L643:
1714                     ; 397   assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
1716  0010 7b03          	ld	a,(OFST+2,sp)
1717  0012 2711          	jreq	L653
1718  0014 a101          	cp	a,#1
1719  0016 270d          	jreq	L653
1720  0018 a102          	cp	a,#2
1721  001a 2709          	jreq	L653
1722  001c a103          	cp	a,#3
1723  001e 2705          	jreq	L653
1724  0020 ae018d        	ldw	x,#397
1725  0023 ad42          	call	LC005
1726  0025               L653:
1727                     ; 398   assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
1729  0025 7b07          	ld	a,(OFST+6,sp)
1730  0027 a110          	cp	a,#16
1731  0029 2708          	jreq	L663
1732  002b 4d            	tnz	a
1733  002c 2705          	jreq	L663
1734  002e ae018e        	ldw	x,#398
1735  0031 ad34          	call	LC005
1736  0033               L663:
1737                     ; 399   assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
1739  0033 7b08          	ld	a,(OFST+7,sp)
1740  0035 2709          	jreq	L673
1741  0037 a120          	cp	a,#32
1742  0039 2705          	jreq	L673
1743  003b ae018f        	ldw	x,#399
1744  003e ad27          	call	LC005
1745  0040               L673:
1746                     ; 400   assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
1748  0040 7b09          	ld	a,(OFST+8,sp)
1749  0042 a140          	cp	a,#64
1750  0044 2708          	jreq	L604
1751  0046 4d            	tnz	a
1752  0047 2705          	jreq	L604
1753  0049 ae0190        	ldw	x,#400
1754  004c ad19          	call	LC005
1755  004e               L604:
1756                     ; 402   TIM1->DTR = (uint8_t)(TIM1_DeadTime);
1758  004e 7b06          	ld	a,(OFST+5,sp)
1759  0050 c7526e        	ld	21102,a
1760                     ; 406   TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
1760                     ; 407                           (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
1760                     ; 408                           (uint8_t)TIM1_AutomaticOutput));
1762  0053 7b07          	ld	a,(OFST+6,sp)
1763  0055 1a08          	or	a,(OFST+7,sp)
1764  0057 1a09          	or	a,(OFST+8,sp)
1765  0059 6b01          	ld	(OFST+0,sp),a
1767  005b 7b02          	ld	a,(OFST+1,sp)
1768  005d 1a03          	or	a,(OFST+2,sp)
1769  005f 1a01          	or	a,(OFST+0,sp)
1770  0061 c7526d        	ld	21101,a
1771                     ; 409 }
1774  0064 5b03          	addw	sp,#3
1775  0066 81            	ret	
1776  0067               LC005:
1777  0067 89            	pushw	x
1778  0068 5f            	clrw	x
1779  0069 89            	pushw	x
1780  006a ae0000        	ldw	x,#L37
1781  006d cd0000        	call	_assert_failed
1783  0070 5b04          	addw	sp,#4
1784  0072 81            	ret	
1985                     ; 423 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
1985                     ; 424                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1985                     ; 425                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
1985                     ; 426                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
1985                     ; 427                  uint8_t TIM1_ICFilter)
1985                     ; 428 {
1986                     .text:	section	.text,new
1987  0000               _TIM1_ICInit:
1989  0000 89            	pushw	x
1990       00000000      OFST:	set	0
1993                     ; 430   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
1995  0001 9e            	ld	a,xh
1996  0002 4d            	tnz	a
1997  0003 2714          	jreq	L024
1998  0005 9e            	ld	a,xh
1999  0006 4a            	dec	a
2000  0007 2710          	jreq	L024
2001  0009 9e            	ld	a,xh
2002  000a a102          	cp	a,#2
2003  000c 270b          	jreq	L024
2004  000e 9e            	ld	a,xh
2005  000f a103          	cp	a,#3
2006  0011 2706          	jreq	L024
2007  0013 ae01ae        	ldw	x,#430
2008  0016 cd00b5        	call	LC006
2009  0019               L024:
2010                     ; 431   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2012  0019 7b02          	ld	a,(OFST+2,sp)
2013  001b 2709          	jreq	L034
2014  001d 4a            	dec	a
2015  001e 2706          	jreq	L034
2016  0020 ae01af        	ldw	x,#431
2017  0023 cd00b5        	call	LC006
2018  0026               L034:
2019                     ; 432   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2021  0026 7b05          	ld	a,(OFST+5,sp)
2022  0028 a101          	cp	a,#1
2023  002a 270d          	jreq	L044
2024  002c a102          	cp	a,#2
2025  002e 2709          	jreq	L044
2026  0030 a103          	cp	a,#3
2027  0032 2705          	jreq	L044
2028  0034 ae01b0        	ldw	x,#432
2029  0037 ad7c          	call	LC006
2030  0039               L044:
2031                     ; 433   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2033  0039 7b06          	ld	a,(OFST+6,sp)
2034  003b 2711          	jreq	L054
2035  003d a104          	cp	a,#4
2036  003f 270d          	jreq	L054
2037  0041 a108          	cp	a,#8
2038  0043 2709          	jreq	L054
2039  0045 a10c          	cp	a,#12
2040  0047 2705          	jreq	L054
2041  0049 ae01b1        	ldw	x,#433
2042  004c ad67          	call	LC006
2043  004e               L054:
2044                     ; 434   assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
2046  004e 7b07          	ld	a,(OFST+7,sp)
2047  0050 a110          	cp	a,#16
2048  0052 2505          	jrult	L654
2049  0054 ae01b2        	ldw	x,#434
2050  0057 ad5c          	call	LC006
2051  0059               L654:
2052                     ; 436   if (TIM1_Channel == TIM1_CHANNEL_1)
2054  0059 7b01          	ld	a,(OFST+1,sp)
2055  005b 2614          	jrne	L746
2056                     ; 439     TI1_Config((uint8_t)TIM1_ICPolarity,
2056                     ; 440                (uint8_t)TIM1_ICSelection,
2056                     ; 441                (uint8_t)TIM1_ICFilter);
2058  005d 7b07          	ld	a,(OFST+7,sp)
2059  005f 88            	push	a
2060  0060 7b06          	ld	a,(OFST+6,sp)
2061  0062 97            	ld	xl,a
2062  0063 7b03          	ld	a,(OFST+3,sp)
2063  0065 95            	ld	xh,a
2064  0066 cd0000        	call	L3_TI1_Config
2066  0069 84            	pop	a
2067                     ; 443     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2069  006a 7b06          	ld	a,(OFST+6,sp)
2070  006c cd0000        	call	_TIM1_SetIC1Prescaler
2073  006f 2042          	jra	L156
2074  0071               L746:
2075                     ; 445   else if (TIM1_Channel == TIM1_CHANNEL_2)
2077  0071 a101          	cp	a,#1
2078  0073 2614          	jrne	L356
2079                     ; 448     TI2_Config((uint8_t)TIM1_ICPolarity,
2079                     ; 449                (uint8_t)TIM1_ICSelection,
2079                     ; 450                (uint8_t)TIM1_ICFilter);
2081  0075 7b07          	ld	a,(OFST+7,sp)
2082  0077 88            	push	a
2083  0078 7b06          	ld	a,(OFST+6,sp)
2084  007a 97            	ld	xl,a
2085  007b 7b03          	ld	a,(OFST+3,sp)
2086  007d 95            	ld	xh,a
2087  007e cd0000        	call	L5_TI2_Config
2089  0081 84            	pop	a
2090                     ; 452     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2092  0082 7b06          	ld	a,(OFST+6,sp)
2093  0084 cd0000        	call	_TIM1_SetIC2Prescaler
2096  0087 202a          	jra	L156
2097  0089               L356:
2098                     ; 454   else if (TIM1_Channel == TIM1_CHANNEL_3)
2100  0089 a102          	cp	a,#2
2101  008b 2614          	jrne	L756
2102                     ; 457     TI3_Config((uint8_t)TIM1_ICPolarity,
2102                     ; 458                (uint8_t)TIM1_ICSelection,
2102                     ; 459                (uint8_t)TIM1_ICFilter);
2104  008d 7b07          	ld	a,(OFST+7,sp)
2105  008f 88            	push	a
2106  0090 7b06          	ld	a,(OFST+6,sp)
2107  0092 97            	ld	xl,a
2108  0093 7b03          	ld	a,(OFST+3,sp)
2109  0095 95            	ld	xh,a
2110  0096 cd0000        	call	L7_TI3_Config
2112  0099 84            	pop	a
2113                     ; 461     TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
2115  009a 7b06          	ld	a,(OFST+6,sp)
2116  009c cd0000        	call	_TIM1_SetIC3Prescaler
2119  009f 2012          	jra	L156
2120  00a1               L756:
2121                     ; 466     TI4_Config((uint8_t)TIM1_ICPolarity,
2121                     ; 467                (uint8_t)TIM1_ICSelection,
2121                     ; 468                (uint8_t)TIM1_ICFilter);
2123  00a1 7b07          	ld	a,(OFST+7,sp)
2124  00a3 88            	push	a
2125  00a4 7b06          	ld	a,(OFST+6,sp)
2126  00a6 97            	ld	xl,a
2127  00a7 7b03          	ld	a,(OFST+3,sp)
2128  00a9 95            	ld	xh,a
2129  00aa cd0000        	call	L11_TI4_Config
2131  00ad 84            	pop	a
2132                     ; 470     TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
2134  00ae 7b06          	ld	a,(OFST+6,sp)
2135  00b0 cd0000        	call	_TIM1_SetIC4Prescaler
2137  00b3               L156:
2138                     ; 472 }
2141  00b3 85            	popw	x
2142  00b4 81            	ret	
2143  00b5               LC006:
2144  00b5 89            	pushw	x
2145  00b6 5f            	clrw	x
2146  00b7 89            	pushw	x
2147  00b8 ae0000        	ldw	x,#L37
2148  00bb cd0000        	call	_assert_failed
2150  00be 5b04          	addw	sp,#4
2151  00c0 81            	ret	
2242                     ; 488 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
2242                     ; 489                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2242                     ; 490                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
2242                     ; 491                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2242                     ; 492                      uint8_t TIM1_ICFilter)
2242                     ; 493 {
2243                     .text:	section	.text,new
2244  0000               _TIM1_PWMIConfig:
2246  0000 89            	pushw	x
2247  0001 89            	pushw	x
2248       00000002      OFST:	set	2
2251                     ; 494   uint8_t icpolarity = TIM1_ICPOLARITY_RISING;
2253                     ; 495   uint8_t icselection = TIM1_ICSELECTION_DIRECTTI;
2255                     ; 498   assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
2257  0002 9e            	ld	a,xh
2258  0003 4d            	tnz	a
2259  0004 270a          	jreq	L015
2260  0006 9e            	ld	a,xh
2261  0007 4a            	dec	a
2262  0008 2706          	jreq	L015
2263  000a ae01f2        	ldw	x,#498
2264  000d cd00ac        	call	LC007
2265  0010               L015:
2266                     ; 499   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2268  0010 7b04          	ld	a,(OFST+2,sp)
2269  0012 2709          	jreq	L025
2270  0014 4a            	dec	a
2271  0015 2706          	jreq	L025
2272  0017 ae01f3        	ldw	x,#499
2273  001a cd00ac        	call	LC007
2274  001d               L025:
2275                     ; 500   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2277  001d 7b07          	ld	a,(OFST+5,sp)
2278  001f a101          	cp	a,#1
2279  0021 270d          	jreq	L035
2280  0023 a102          	cp	a,#2
2281  0025 2709          	jreq	L035
2282  0027 a103          	cp	a,#3
2283  0029 2705          	jreq	L035
2284  002b ae01f4        	ldw	x,#500
2285  002e ad7c          	call	LC007
2286  0030               L035:
2287                     ; 501   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2289  0030 7b08          	ld	a,(OFST+6,sp)
2290  0032 2711          	jreq	L045
2291  0034 a104          	cp	a,#4
2292  0036 270d          	jreq	L045
2293  0038 a108          	cp	a,#8
2294  003a 2709          	jreq	L045
2295  003c a10c          	cp	a,#12
2296  003e 2705          	jreq	L045
2297  0040 ae01f5        	ldw	x,#501
2298  0043 ad67          	call	LC007
2299  0045               L045:
2300                     ; 504   if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
2302  0045 7b04          	ld	a,(OFST+2,sp)
2303  0047 4a            	dec	a
2304  0048 2702          	jreq	L327
2305                     ; 506     icpolarity = TIM1_ICPOLARITY_FALLING;
2307  004a a601          	ld	a,#1
2309  004c               L327:
2310                     ; 510     icpolarity = TIM1_ICPOLARITY_RISING;
2312  004c 6b01          	ld	(OFST-1,sp),a
2314                     ; 514   if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
2316  004e 7b07          	ld	a,(OFST+5,sp)
2317  0050 4a            	dec	a
2318  0051 2604          	jrne	L727
2319                     ; 516     icselection = TIM1_ICSELECTION_INDIRECTTI;
2321  0053 a602          	ld	a,#2
2323  0055 2002          	jra	L137
2324  0057               L727:
2325                     ; 520     icselection = TIM1_ICSELECTION_DIRECTTI;
2327  0057 a601          	ld	a,#1
2328  0059               L137:
2329  0059 6b02          	ld	(OFST+0,sp),a
2331                     ; 523   if (TIM1_Channel == TIM1_CHANNEL_1)
2333  005b 7b03          	ld	a,(OFST+1,sp)
2334  005d 2626          	jrne	L337
2335                     ; 526     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2335                     ; 527                (uint8_t)TIM1_ICFilter);
2337  005f 7b09          	ld	a,(OFST+7,sp)
2338  0061 88            	push	a
2339  0062 7b08          	ld	a,(OFST+6,sp)
2340  0064 97            	ld	xl,a
2341  0065 7b05          	ld	a,(OFST+3,sp)
2342  0067 95            	ld	xh,a
2343  0068 cd0000        	call	L3_TI1_Config
2345  006b 84            	pop	a
2346                     ; 530     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2348  006c 7b08          	ld	a,(OFST+6,sp)
2349  006e cd0000        	call	_TIM1_SetIC1Prescaler
2351                     ; 533     TI2_Config(icpolarity, icselection, TIM1_ICFilter);
2353  0071 7b09          	ld	a,(OFST+7,sp)
2354  0073 88            	push	a
2355  0074 7b03          	ld	a,(OFST+1,sp)
2356  0076 97            	ld	xl,a
2357  0077 7b02          	ld	a,(OFST+0,sp)
2358  0079 95            	ld	xh,a
2359  007a cd0000        	call	L5_TI2_Config
2361  007d 84            	pop	a
2362                     ; 536     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2364  007e 7b08          	ld	a,(OFST+6,sp)
2365  0080 cd0000        	call	_TIM1_SetIC2Prescaler
2368  0083 2024          	jra	L537
2369  0085               L337:
2370                     ; 541     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2370                     ; 542                (uint8_t)TIM1_ICFilter);
2372  0085 7b09          	ld	a,(OFST+7,sp)
2373  0087 88            	push	a
2374  0088 7b08          	ld	a,(OFST+6,sp)
2375  008a 97            	ld	xl,a
2376  008b 7b05          	ld	a,(OFST+3,sp)
2377  008d 95            	ld	xh,a
2378  008e cd0000        	call	L5_TI2_Config
2380  0091 84            	pop	a
2381                     ; 545     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2383  0092 7b08          	ld	a,(OFST+6,sp)
2384  0094 cd0000        	call	_TIM1_SetIC2Prescaler
2386                     ; 548     TI1_Config(icpolarity, icselection, TIM1_ICFilter);
2388  0097 7b09          	ld	a,(OFST+7,sp)
2389  0099 88            	push	a
2390  009a 7b03          	ld	a,(OFST+1,sp)
2391  009c 97            	ld	xl,a
2392  009d 7b02          	ld	a,(OFST+0,sp)
2393  009f 95            	ld	xh,a
2394  00a0 cd0000        	call	L3_TI1_Config
2396  00a3 84            	pop	a
2397                     ; 551     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2399  00a4 7b08          	ld	a,(OFST+6,sp)
2400  00a6 cd0000        	call	_TIM1_SetIC1Prescaler
2402  00a9               L537:
2403                     ; 553 }
2406  00a9 5b04          	addw	sp,#4
2407  00ab 81            	ret	
2408  00ac               LC007:
2409  00ac 89            	pushw	x
2410  00ad 5f            	clrw	x
2411  00ae 89            	pushw	x
2412  00af ae0000        	ldw	x,#L37
2413  00b2 cd0000        	call	_assert_failed
2415  00b5 5b04          	addw	sp,#4
2416  00b7 81            	ret	
2472                     ; 561 void TIM1_Cmd(FunctionalState NewState)
2472                     ; 562 {
2473                     .text:	section	.text,new
2474  0000               _TIM1_Cmd:
2476  0000 88            	push	a
2477       00000000      OFST:	set	0
2480                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2482  0001 4d            	tnz	a
2483  0002 2711          	jreq	L275
2484  0004 4a            	dec	a
2485  0005 270e          	jreq	L275
2486  0007 ae0234        	ldw	x,#564
2487  000a 89            	pushw	x
2488  000b 5f            	clrw	x
2489  000c 89            	pushw	x
2490  000d ae0000        	ldw	x,#L37
2491  0010 cd0000        	call	_assert_failed
2493  0013 5b04          	addw	sp,#4
2494  0015               L275:
2495                     ; 567   if (NewState != DISABLE)
2497  0015 7b01          	ld	a,(OFST+1,sp)
2498  0017 2706          	jreq	L567
2499                     ; 569     TIM1->CR1 |= TIM1_CR1_CEN;
2501  0019 72105250      	bset	21072,#0
2503  001d 2004          	jra	L767
2504  001f               L567:
2505                     ; 573     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
2507  001f 72115250      	bres	21072,#0
2508  0023               L767:
2509                     ; 575 }
2512  0023 84            	pop	a
2513  0024 81            	ret	
2550                     ; 583 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
2550                     ; 584 {
2551                     .text:	section	.text,new
2552  0000               _TIM1_CtrlPWMOutputs:
2554  0000 88            	push	a
2555       00000000      OFST:	set	0
2558                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2560  0001 4d            	tnz	a
2561  0002 2711          	jreq	L406
2562  0004 4a            	dec	a
2563  0005 270e          	jreq	L406
2564  0007 ae024a        	ldw	x,#586
2565  000a 89            	pushw	x
2566  000b 5f            	clrw	x
2567  000c 89            	pushw	x
2568  000d ae0000        	ldw	x,#L37
2569  0010 cd0000        	call	_assert_failed
2571  0013 5b04          	addw	sp,#4
2572  0015               L406:
2573                     ; 590   if (NewState != DISABLE)
2575  0015 7b01          	ld	a,(OFST+1,sp)
2576  0017 2706          	jreq	L7001
2577                     ; 592     TIM1->BKR |= TIM1_BKR_MOE;
2579  0019 721e526d      	bset	21101,#7
2581  001d 2004          	jra	L1101
2582  001f               L7001:
2583                     ; 596     TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
2585  001f 721f526d      	bres	21101,#7
2586  0023               L1101:
2587                     ; 598 }
2590  0023 84            	pop	a
2591  0024 81            	ret	
2699                     ; 617 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
2699                     ; 618 {
2700                     .text:	section	.text,new
2701  0000               _TIM1_ITConfig:
2703  0000 89            	pushw	x
2704       00000000      OFST:	set	0
2707                     ; 620   assert_param(IS_TIM1_IT_OK(TIM1_IT));
2709  0001 9e            	ld	a,xh
2710  0002 4d            	tnz	a
2711  0003 2605          	jrne	L416
2712  0005 ae026c        	ldw	x,#620
2713  0008 ad22          	call	LC008
2714  000a               L416:
2715                     ; 621   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2717  000a 7b02          	ld	a,(OFST+2,sp)
2718  000c 2708          	jreq	L426
2719  000e 4a            	dec	a
2720  000f 2705          	jreq	L426
2721  0011 ae026d        	ldw	x,#621
2722  0014 ad16          	call	LC008
2723  0016               L426:
2724                     ; 623   if (NewState != DISABLE)
2726  0016 7b02          	ld	a,(OFST+2,sp)
2727  0018 2707          	jreq	L1601
2728                     ; 626     TIM1->IER |= (uint8_t)TIM1_IT;
2730  001a c65254        	ld	a,21076
2731  001d 1a01          	or	a,(OFST+1,sp)
2733  001f 2006          	jra	L3601
2734  0021               L1601:
2735                     ; 631     TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
2737  0021 7b01          	ld	a,(OFST+1,sp)
2738  0023 43            	cpl	a
2739  0024 c45254        	and	a,21076
2740  0027               L3601:
2741  0027 c75254        	ld	21076,a
2742                     ; 633 }
2745  002a 85            	popw	x
2746  002b 81            	ret	
2747  002c               LC008:
2748  002c 89            	pushw	x
2749  002d 5f            	clrw	x
2750  002e 89            	pushw	x
2751  002f ae0000        	ldw	x,#L37
2752  0032 cd0000        	call	_assert_failed
2754  0035 5b04          	addw	sp,#4
2755  0037 81            	ret	
2779                     ; 640 void TIM1_InternalClockConfig(void)
2779                     ; 641 {
2780                     .text:	section	.text,new
2781  0000               _TIM1_InternalClockConfig:
2785                     ; 643   TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
2787  0000 c65252        	ld	a,21074
2788  0003 a4f8          	and	a,#248
2789  0005 c75252        	ld	21074,a
2790                     ; 644 }
2793  0008 81            	ret	
2909                     ; 662 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2909                     ; 663                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2909                     ; 664                               uint8_t ExtTRGFilter)
2909                     ; 665 {
2910                     .text:	section	.text,new
2911  0000               _TIM1_ETRClockMode1Config:
2913  0000 89            	pushw	x
2914       00000000      OFST:	set	0
2917                     ; 667   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
2919  0001 9e            	ld	a,xh
2920  0002 4d            	tnz	a
2921  0003 2714          	jreq	L046
2922  0005 9e            	ld	a,xh
2923  0006 a110          	cp	a,#16
2924  0008 270f          	jreq	L046
2925  000a 9e            	ld	a,xh
2926  000b a120          	cp	a,#32
2927  000d 270a          	jreq	L046
2928  000f 9e            	ld	a,xh
2929  0010 a130          	cp	a,#48
2930  0012 2705          	jreq	L046
2931  0014 ae029b        	ldw	x,#667
2932  0017 ad25          	call	LC009
2933  0019               L046:
2934                     ; 668   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
2936  0019 7b02          	ld	a,(OFST+2,sp)
2937  001b a180          	cp	a,#128
2938  001d 2708          	jreq	L056
2939  001f 4d            	tnz	a
2940  0020 2705          	jreq	L056
2941  0022 ae029c        	ldw	x,#668
2942  0025 ad17          	call	LC009
2943  0027               L056:
2944                     ; 671   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
2946  0027 7b05          	ld	a,(OFST+5,sp)
2947  0029 88            	push	a
2948  002a 7b03          	ld	a,(OFST+3,sp)
2949  002c 97            	ld	xl,a
2950  002d 7b02          	ld	a,(OFST+2,sp)
2951  002f 95            	ld	xh,a
2952  0030 cd0000        	call	_TIM1_ETRConfig
2954  0033 84            	pop	a
2955                     ; 674   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
2955                     ; 675                          | (uint8_t)((uint8_t)TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
2957  0034 c65252        	ld	a,21074
2958  0037 aa77          	or	a,#119
2959  0039 c75252        	ld	21074,a
2960                     ; 676 }
2963  003c 85            	popw	x
2964  003d 81            	ret	
2965  003e               LC009:
2966  003e 89            	pushw	x
2967  003f 5f            	clrw	x
2968  0040 89            	pushw	x
2969  0041 ae0000        	ldw	x,#L37
2970  0044 cd0000        	call	_assert_failed
2972  0047 5b04          	addw	sp,#4
2973  0049 81            	ret	
3030                     ; 694 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3030                     ; 695                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3030                     ; 696                               uint8_t ExtTRGFilter)
3030                     ; 697 {
3031                     .text:	section	.text,new
3032  0000               _TIM1_ETRClockMode2Config:
3034  0000 89            	pushw	x
3035       00000000      OFST:	set	0
3038                     ; 699   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3040  0001 9e            	ld	a,xh
3041  0002 4d            	tnz	a
3042  0003 2714          	jreq	L466
3043  0005 9e            	ld	a,xh
3044  0006 a110          	cp	a,#16
3045  0008 270f          	jreq	L466
3046  000a 9e            	ld	a,xh
3047  000b a120          	cp	a,#32
3048  000d 270a          	jreq	L466
3049  000f 9e            	ld	a,xh
3050  0010 a130          	cp	a,#48
3051  0012 2705          	jreq	L466
3052  0014 ae02bb        	ldw	x,#699
3053  0017 ad21          	call	LC010
3054  0019               L466:
3055                     ; 700   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3057  0019 7b02          	ld	a,(OFST+2,sp)
3058  001b a180          	cp	a,#128
3059  001d 2708          	jreq	L476
3060  001f 4d            	tnz	a
3061  0020 2705          	jreq	L476
3062  0022 ae02bc        	ldw	x,#700
3063  0025 ad13          	call	LC010
3064  0027               L476:
3065                     ; 703   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3067  0027 7b05          	ld	a,(OFST+5,sp)
3068  0029 88            	push	a
3069  002a 7b03          	ld	a,(OFST+3,sp)
3070  002c 97            	ld	xl,a
3071  002d 7b02          	ld	a,(OFST+2,sp)
3072  002f 95            	ld	xh,a
3073  0030 cd0000        	call	_TIM1_ETRConfig
3075  0033 721c5253      	bset	21075,#6
3076                     ; 706   TIM1->ETR |= TIM1_ETR_ECE;
3078                     ; 707 }
3081  0037 5b03          	addw	sp,#3
3082  0039 81            	ret	
3083  003a               LC010:
3084  003a 89            	pushw	x
3085  003b 5f            	clrw	x
3086  003c 89            	pushw	x
3087  003d ae0000        	ldw	x,#L37
3088  0040 cd0000        	call	_assert_failed
3090  0043 5b04          	addw	sp,#4
3091  0045 81            	ret	
3146                     ; 725 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3146                     ; 726                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3146                     ; 727                     uint8_t ExtTRGFilter)
3146                     ; 728 {
3147                     .text:	section	.text,new
3148  0000               _TIM1_ETRConfig:
3150  0000 89            	pushw	x
3151       00000000      OFST:	set	0
3154                     ; 730   assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
3156  0001 7b05          	ld	a,(OFST+5,sp)
3157  0003 a110          	cp	a,#16
3158  0005 250e          	jrult	L607
3159  0007 ae02da        	ldw	x,#730
3160  000a 89            	pushw	x
3161  000b 5f            	clrw	x
3162  000c 89            	pushw	x
3163  000d ae0000        	ldw	x,#L37
3164  0010 cd0000        	call	_assert_failed
3166  0013 5b04          	addw	sp,#4
3167  0015               L607:
3168                     ; 732   TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
3168                     ; 733                          (uint8_t)ExtTRGFilter );
3170  0015 7b01          	ld	a,(OFST+1,sp)
3171  0017 1a02          	or	a,(OFST+2,sp)
3172  0019 1a05          	or	a,(OFST+5,sp)
3173  001b ca5253        	or	a,21075
3174  001e c75253        	ld	21075,a
3175                     ; 734 }
3178  0021 85            	popw	x
3179  0022 81            	ret	
3267                     ; 751 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
3267                     ; 752                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
3267                     ; 753                                  uint8_t ICFilter)
3267                     ; 754 {
3268                     .text:	section	.text,new
3269  0000               _TIM1_TIxExternalClockConfig:
3271  0000 89            	pushw	x
3272       00000000      OFST:	set	0
3275                     ; 756   assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
3277  0001 9e            	ld	a,xh
3278  0002 a140          	cp	a,#64
3279  0004 270f          	jreq	L027
3280  0006 9e            	ld	a,xh
3281  0007 a160          	cp	a,#96
3282  0009 270a          	jreq	L027
3283  000b 9e            	ld	a,xh
3284  000c a150          	cp	a,#80
3285  000e 2705          	jreq	L027
3286  0010 ae02f4        	ldw	x,#756
3287  0013 ad47          	call	LC011
3288  0015               L027:
3289                     ; 757   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
3291  0015 7b02          	ld	a,(OFST+2,sp)
3292  0017 2708          	jreq	L037
3293  0019 4a            	dec	a
3294  001a 2705          	jreq	L037
3295  001c ae02f5        	ldw	x,#757
3296  001f ad3b          	call	LC011
3297  0021               L037:
3298                     ; 758   assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
3300  0021 7b05          	ld	a,(OFST+5,sp)
3301  0023 a110          	cp	a,#16
3302  0025 2505          	jrult	L637
3303  0027 ae02f6        	ldw	x,#758
3304  002a ad30          	call	LC011
3305  002c               L637:
3306                     ; 761   if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
3308  002c 7b01          	ld	a,(OFST+1,sp)
3309  002e a160          	cp	a,#96
3310  0030 260e          	jrne	L3521
3311                     ; 763     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3313  0032 7b05          	ld	a,(OFST+5,sp)
3314  0034 88            	push	a
3315  0035 7b03          	ld	a,(OFST+3,sp)
3316  0037 ae0001        	ldw	x,#1
3317  003a 95            	ld	xh,a
3318  003b cd0000        	call	L5_TI2_Config
3321  003e 200c          	jra	L5521
3322  0040               L3521:
3323                     ; 767     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3325  0040 7b05          	ld	a,(OFST+5,sp)
3326  0042 88            	push	a
3327  0043 7b03          	ld	a,(OFST+3,sp)
3328  0045 ae0001        	ldw	x,#1
3329  0048 95            	ld	xh,a
3330  0049 cd0000        	call	L3_TI1_Config
3332  004c               L5521:
3333  004c 84            	pop	a
3334                     ; 771   TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
3336  004d 7b01          	ld	a,(OFST+1,sp)
3337  004f cd0000        	call	_TIM1_SelectInputTrigger
3339                     ; 774   TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
3341  0052 c65252        	ld	a,21074
3342  0055 aa07          	or	a,#7
3343  0057 c75252        	ld	21074,a
3344                     ; 775 }
3347  005a 85            	popw	x
3348  005b 81            	ret	
3349  005c               LC011:
3350  005c 89            	pushw	x
3351  005d 5f            	clrw	x
3352  005e 89            	pushw	x
3353  005f ae0000        	ldw	x,#L37
3354  0062 cd0000        	call	_assert_failed
3356  0065 5b04          	addw	sp,#4
3357  0067 81            	ret	
3443                     ; 787 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
3443                     ; 788 {
3444                     .text:	section	.text,new
3445  0000               _TIM1_SelectInputTrigger:
3447  0000 88            	push	a
3448       00000000      OFST:	set	0
3451                     ; 790   assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
3453  0001 a140          	cp	a,#64
3454  0003 2721          	jreq	L657
3455  0005 a150          	cp	a,#80
3456  0007 271d          	jreq	L657
3457  0009 a160          	cp	a,#96
3458  000b 2719          	jreq	L657
3459  000d a170          	cp	a,#112
3460  000f 2715          	jreq	L657
3461  0011 a130          	cp	a,#48
3462  0013 2711          	jreq	L657
3463  0015 4d            	tnz	a
3464  0016 270e          	jreq	L657
3465  0018 ae0316        	ldw	x,#790
3466  001b 89            	pushw	x
3467  001c 5f            	clrw	x
3468  001d 89            	pushw	x
3469  001e ae0000        	ldw	x,#L37
3470  0021 cd0000        	call	_assert_failed
3472  0024 5b04          	addw	sp,#4
3473  0026               L657:
3474                     ; 793   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
3476  0026 c65252        	ld	a,21074
3477  0029 a48f          	and	a,#143
3478  002b 1a01          	or	a,(OFST+1,sp)
3479  002d c75252        	ld	21074,a
3480                     ; 794 }
3483  0030 84            	pop	a
3484  0031 81            	ret	
3521                     ; 803 void TIM1_UpdateDisableConfig(FunctionalState NewState)
3521                     ; 804 {
3522                     .text:	section	.text,new
3523  0000               _TIM1_UpdateDisableConfig:
3525  0000 88            	push	a
3526       00000000      OFST:	set	0
3529                     ; 806   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3531  0001 4d            	tnz	a
3532  0002 2711          	jreq	L077
3533  0004 4a            	dec	a
3534  0005 270e          	jreq	L077
3535  0007 ae0326        	ldw	x,#806
3536  000a 89            	pushw	x
3537  000b 5f            	clrw	x
3538  000c 89            	pushw	x
3539  000d ae0000        	ldw	x,#L37
3540  0010 cd0000        	call	_assert_failed
3542  0013 5b04          	addw	sp,#4
3543  0015               L077:
3544                     ; 809   if (NewState != DISABLE)
3546  0015 7b01          	ld	a,(OFST+1,sp)
3547  0017 2706          	jreq	L3331
3548                     ; 811     TIM1->CR1 |= TIM1_CR1_UDIS;
3550  0019 72125250      	bset	21072,#1
3552  001d 2004          	jra	L5331
3553  001f               L3331:
3554                     ; 815     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
3556  001f 72135250      	bres	21072,#1
3557  0023               L5331:
3558                     ; 817 }
3561  0023 84            	pop	a
3562  0024 81            	ret	
3621                     ; 827 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
3621                     ; 828 {
3622                     .text:	section	.text,new
3623  0000               _TIM1_UpdateRequestConfig:
3625  0000 88            	push	a
3626       00000000      OFST:	set	0
3629                     ; 830   assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
3631  0001 4d            	tnz	a
3632  0002 2711          	jreq	L2001
3633  0004 4a            	dec	a
3634  0005 270e          	jreq	L2001
3635  0007 ae033e        	ldw	x,#830
3636  000a 89            	pushw	x
3637  000b 5f            	clrw	x
3638  000c 89            	pushw	x
3639  000d ae0000        	ldw	x,#L37
3640  0010 cd0000        	call	_assert_failed
3642  0013 5b04          	addw	sp,#4
3643  0015               L2001:
3644                     ; 833   if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
3646  0015 7b01          	ld	a,(OFST+1,sp)
3647  0017 2706          	jreq	L5631
3648                     ; 835     TIM1->CR1 |= TIM1_CR1_URS;
3650  0019 72145250      	bset	21072,#2
3652  001d 2004          	jra	L7631
3653  001f               L5631:
3654                     ; 839     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
3656  001f 72155250      	bres	21072,#2
3657  0023               L7631:
3658                     ; 841 }
3661  0023 84            	pop	a
3662  0024 81            	ret	
3699                     ; 849 void TIM1_SelectHallSensor(FunctionalState NewState)
3699                     ; 850 {
3700                     .text:	section	.text,new
3701  0000               _TIM1_SelectHallSensor:
3703  0000 88            	push	a
3704       00000000      OFST:	set	0
3707                     ; 852   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3709  0001 4d            	tnz	a
3710  0002 2711          	jreq	L4101
3711  0004 4a            	dec	a
3712  0005 270e          	jreq	L4101
3713  0007 ae0354        	ldw	x,#852
3714  000a 89            	pushw	x
3715  000b 5f            	clrw	x
3716  000c 89            	pushw	x
3717  000d ae0000        	ldw	x,#L37
3718  0010 cd0000        	call	_assert_failed
3720  0013 5b04          	addw	sp,#4
3721  0015               L4101:
3722                     ; 855   if (NewState != DISABLE)
3724  0015 7b01          	ld	a,(OFST+1,sp)
3725  0017 2706          	jreq	L7041
3726                     ; 857     TIM1->CR2 |= TIM1_CR2_TI1S;
3728  0019 721e5251      	bset	21073,#7
3730  001d 2004          	jra	L1141
3731  001f               L7041:
3732                     ; 861     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
3734  001f 721f5251      	bres	21073,#7
3735  0023               L1141:
3736                     ; 863 }
3739  0023 84            	pop	a
3740  0024 81            	ret	
3798                     ; 873 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
3798                     ; 874 {
3799                     .text:	section	.text,new
3800  0000               _TIM1_SelectOnePulseMode:
3802  0000 88            	push	a
3803       00000000      OFST:	set	0
3806                     ; 876   assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
3808  0001 a101          	cp	a,#1
3809  0003 2711          	jreq	L6201
3810  0005 4d            	tnz	a
3811  0006 270e          	jreq	L6201
3812  0008 ae036c        	ldw	x,#876
3813  000b 89            	pushw	x
3814  000c 5f            	clrw	x
3815  000d 89            	pushw	x
3816  000e ae0000        	ldw	x,#L37
3817  0011 cd0000        	call	_assert_failed
3819  0014 5b04          	addw	sp,#4
3820  0016               L6201:
3821                     ; 879   if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
3823  0016 7b01          	ld	a,(OFST+1,sp)
3824  0018 2706          	jreq	L1441
3825                     ; 881     TIM1->CR1 |= TIM1_CR1_OPM;
3827  001a 72165250      	bset	21072,#3
3829  001e 2004          	jra	L3441
3830  0020               L1441:
3831                     ; 885     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
3833  0020 72175250      	bres	21072,#3
3834  0024               L3441:
3835                     ; 888 }
3838  0024 84            	pop	a
3839  0025 81            	ret	
3938                     ; 903 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
3938                     ; 904 {
3939                     .text:	section	.text,new
3940  0000               _TIM1_SelectOutputTrigger:
3942  0000 88            	push	a
3943       00000000      OFST:	set	0
3946                     ; 906   assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
3948  0001 4d            	tnz	a
3949  0002 2726          	jreq	L0401
3950  0004 a110          	cp	a,#16
3951  0006 2722          	jreq	L0401
3952  0008 a120          	cp	a,#32
3953  000a 271e          	jreq	L0401
3954  000c a130          	cp	a,#48
3955  000e 271a          	jreq	L0401
3956  0010 a140          	cp	a,#64
3957  0012 2716          	jreq	L0401
3958  0014 a150          	cp	a,#80
3959  0016 2712          	jreq	L0401
3960  0018 a160          	cp	a,#96
3961  001a 270e          	jreq	L0401
3962  001c ae038a        	ldw	x,#906
3963  001f 89            	pushw	x
3964  0020 5f            	clrw	x
3965  0021 89            	pushw	x
3966  0022 ae0000        	ldw	x,#L37
3967  0025 cd0000        	call	_assert_failed
3969  0028 5b04          	addw	sp,#4
3970  002a               L0401:
3971                     ; 909   TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
3971                     ; 910                         (uint8_t) TIM1_TRGOSource);
3973  002a c65251        	ld	a,21073
3974  002d a48f          	and	a,#143
3975  002f 1a01          	or	a,(OFST+1,sp)
3976  0031 c75251        	ld	21073,a
3977                     ; 911 }
3980  0034 84            	pop	a
3981  0035 81            	ret	
4056                     ; 923 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
4056                     ; 924 {
4057                     .text:	section	.text,new
4058  0000               _TIM1_SelectSlaveMode:
4060  0000 88            	push	a
4061       00000000      OFST:	set	0
4064                     ; 926   assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
4066  0001 a104          	cp	a,#4
4067  0003 271a          	jreq	L2501
4068  0005 a105          	cp	a,#5
4069  0007 2716          	jreq	L2501
4070  0009 a106          	cp	a,#6
4071  000b 2712          	jreq	L2501
4072  000d a107          	cp	a,#7
4073  000f 270e          	jreq	L2501
4074  0011 ae039e        	ldw	x,#926
4075  0014 89            	pushw	x
4076  0015 5f            	clrw	x
4077  0016 89            	pushw	x
4078  0017 ae0000        	ldw	x,#L37
4079  001a cd0000        	call	_assert_failed
4081  001d 5b04          	addw	sp,#4
4082  001f               L2501:
4083                     ; 929   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
4083                     ; 930                          (uint8_t)TIM1_SlaveMode);
4085  001f c65252        	ld	a,21074
4086  0022 a4f8          	and	a,#248
4087  0024 1a01          	or	a,(OFST+1,sp)
4088  0026 c75252        	ld	21074,a
4089                     ; 931 }
4092  0029 84            	pop	a
4093  002a 81            	ret	
4130                     ; 939 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
4130                     ; 940 {
4131                     .text:	section	.text,new
4132  0000               _TIM1_SelectMasterSlaveMode:
4134  0000 88            	push	a
4135       00000000      OFST:	set	0
4138                     ; 942   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4140  0001 4d            	tnz	a
4141  0002 2711          	jreq	L4601
4142  0004 4a            	dec	a
4143  0005 270e          	jreq	L4601
4144  0007 ae03ae        	ldw	x,#942
4145  000a 89            	pushw	x
4146  000b 5f            	clrw	x
4147  000c 89            	pushw	x
4148  000d ae0000        	ldw	x,#L37
4149  0010 cd0000        	call	_assert_failed
4151  0013 5b04          	addw	sp,#4
4152  0015               L4601:
4153                     ; 945   if (NewState != DISABLE)
4155  0015 7b01          	ld	a,(OFST+1,sp)
4156  0017 2706          	jreq	L5551
4157                     ; 947     TIM1->SMCR |= TIM1_SMCR_MSM;
4159  0019 721e5252      	bset	21074,#7
4161  001d 2004          	jra	L7551
4162  001f               L5551:
4163                     ; 951     TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
4165  001f 721f5252      	bres	21074,#7
4166  0023               L7551:
4167                     ; 953 }
4170  0023 84            	pop	a
4171  0024 81            	ret	
4258                     ; 975 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
4258                     ; 976                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
4258                     ; 977                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
4258                     ; 978 {
4259                     .text:	section	.text,new
4260  0000               _TIM1_EncoderInterfaceConfig:
4262  0000 89            	pushw	x
4263       00000000      OFST:	set	0
4266                     ; 980   assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
4268  0001 9e            	ld	a,xh
4269  0002 4a            	dec	a
4270  0003 270f          	jreq	L6701
4271  0005 9e            	ld	a,xh
4272  0006 a102          	cp	a,#2
4273  0008 270a          	jreq	L6701
4274  000a 9e            	ld	a,xh
4275  000b a103          	cp	a,#3
4276  000d 2705          	jreq	L6701
4277  000f ae03d4        	ldw	x,#980
4278  0012 ad54          	call	LC012
4279  0014               L6701:
4280                     ; 981   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
4282  0014 7b02          	ld	a,(OFST+2,sp)
4283  0016 2708          	jreq	L6011
4284  0018 4a            	dec	a
4285  0019 2705          	jreq	L6011
4286  001b ae03d5        	ldw	x,#981
4287  001e ad48          	call	LC012
4288  0020               L6011:
4289                     ; 982   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
4291  0020 7b05          	ld	a,(OFST+5,sp)
4292  0022 2708          	jreq	L6111
4293  0024 4a            	dec	a
4294  0025 2705          	jreq	L6111
4295  0027 ae03d6        	ldw	x,#982
4296  002a ad3c          	call	LC012
4297  002c               L6111:
4298                     ; 985   if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
4300  002c 7b02          	ld	a,(OFST+2,sp)
4301  002e 2706          	jreq	L1261
4302                     ; 987     TIM1->CCER1 |= TIM1_CCER1_CC1P;
4304  0030 7212525c      	bset	21084,#1
4306  0034 2004          	jra	L3261
4307  0036               L1261:
4308                     ; 991     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
4310  0036 7213525c      	bres	21084,#1
4311  003a               L3261:
4312                     ; 994   if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
4314  003a 7b05          	ld	a,(OFST+5,sp)
4315  003c 2706          	jreq	L5261
4316                     ; 996     TIM1->CCER1 |= TIM1_CCER1_CC2P;
4318  003e 721a525c      	bset	21084,#5
4320  0042 2004          	jra	L7261
4321  0044               L5261:
4322                     ; 1000     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
4324  0044 721b525c      	bres	21084,#5
4325  0048               L7261:
4326                     ; 1003   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
4326                     ; 1004                          | (uint8_t) TIM1_EncoderMode);
4328  0048 c65252        	ld	a,21074
4329  004b a4f0          	and	a,#240
4330  004d 1a01          	or	a,(OFST+1,sp)
4331  004f c75252        	ld	21074,a
4332                     ; 1007   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
4332                     ; 1008                           | (uint8_t) CCMR_TIxDirect_Set);
4334  0052 c65258        	ld	a,21080
4335  0055 a4fc          	and	a,#252
4336  0057 aa01          	or	a,#1
4337  0059 c75258        	ld	21080,a
4338                     ; 1009   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
4338                     ; 1010                           | (uint8_t) CCMR_TIxDirect_Set);
4340  005c c65259        	ld	a,21081
4341  005f a4fc          	and	a,#252
4342  0061 aa01          	or	a,#1
4343  0063 c75259        	ld	21081,a
4344                     ; 1011 }
4347  0066 85            	popw	x
4348  0067 81            	ret	
4349  0068               LC012:
4350  0068 89            	pushw	x
4351  0069 5f            	clrw	x
4352  006a 89            	pushw	x
4353  006b ae0000        	ldw	x,#L37
4354  006e cd0000        	call	_assert_failed
4356  0071 5b04          	addw	sp,#4
4357  0073 81            	ret	
4423                     ; 1023 void TIM1_PrescalerConfig(uint16_t Prescaler,
4423                     ; 1024                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
4423                     ; 1025 {
4424                     .text:	section	.text,new
4425  0000               _TIM1_PrescalerConfig:
4427  0000 89            	pushw	x
4428       00000000      OFST:	set	0
4431                     ; 1027   assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
4433  0001 7b05          	ld	a,(OFST+5,sp)
4434  0003 2711          	jreq	L0311
4435  0005 4a            	dec	a
4436  0006 270e          	jreq	L0311
4437  0008 ae0403        	ldw	x,#1027
4438  000b 89            	pushw	x
4439  000c 5f            	clrw	x
4440  000d 89            	pushw	x
4441  000e ae0000        	ldw	x,#L37
4442  0011 cd0000        	call	_assert_failed
4444  0014 5b04          	addw	sp,#4
4445  0016               L0311:
4446                     ; 1030   TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
4448  0016 7b01          	ld	a,(OFST+1,sp)
4449  0018 c75260        	ld	21088,a
4450                     ; 1031   TIM1->PSCRL = (uint8_t)(Prescaler);
4452  001b 7b02          	ld	a,(OFST+2,sp)
4453  001d c75261        	ld	21089,a
4454                     ; 1034   TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
4456  0020 7b05          	ld	a,(OFST+5,sp)
4457  0022 c75257        	ld	21079,a
4458                     ; 1035 }
4461  0025 85            	popw	x
4462  0026 81            	ret	
4499                     ; 1048 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
4499                     ; 1049 {
4500                     .text:	section	.text,new
4501  0000               _TIM1_CounterModeConfig:
4503  0000 88            	push	a
4504       00000000      OFST:	set	0
4507                     ; 1051   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
4509  0001 4d            	tnz	a
4510  0002 271e          	jreq	L2411
4511  0004 a110          	cp	a,#16
4512  0006 271a          	jreq	L2411
4513  0008 a120          	cp	a,#32
4514  000a 2716          	jreq	L2411
4515  000c a140          	cp	a,#64
4516  000e 2712          	jreq	L2411
4517  0010 a160          	cp	a,#96
4518  0012 270e          	jreq	L2411
4519  0014 ae041b        	ldw	x,#1051
4520  0017 89            	pushw	x
4521  0018 5f            	clrw	x
4522  0019 89            	pushw	x
4523  001a ae0000        	ldw	x,#L37
4524  001d cd0000        	call	_assert_failed
4526  0020 5b04          	addw	sp,#4
4527  0022               L2411:
4528                     ; 1055   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
4528                     ; 1056                         | (uint8_t)TIM1_CounterMode);
4530  0022 c65250        	ld	a,21072
4531  0025 a48f          	and	a,#143
4532  0027 1a01          	or	a,(OFST+1,sp)
4533  0029 c75250        	ld	21072,a
4534                     ; 1057 }
4537  002c 84            	pop	a
4538  002d 81            	ret	
4597                     ; 1067 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4597                     ; 1068 {
4598                     .text:	section	.text,new
4599  0000               _TIM1_ForcedOC1Config:
4601  0000 88            	push	a
4602       00000000      OFST:	set	0
4605                     ; 1070   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4607  0001 a150          	cp	a,#80
4608  0003 2712          	jreq	L4511
4609  0005 a140          	cp	a,#64
4610  0007 270e          	jreq	L4511
4611  0009 ae042e        	ldw	x,#1070
4612  000c 89            	pushw	x
4613  000d 5f            	clrw	x
4614  000e 89            	pushw	x
4615  000f ae0000        	ldw	x,#L37
4616  0012 cd0000        	call	_assert_failed
4618  0015 5b04          	addw	sp,#4
4619  0017               L4511:
4620                     ; 1073   TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
4620                     ; 1074                            (uint8_t)TIM1_ForcedAction);
4622  0017 c65258        	ld	a,21080
4623  001a a48f          	and	a,#143
4624  001c 1a01          	or	a,(OFST+1,sp)
4625  001e c75258        	ld	21080,a
4626                     ; 1075 }
4629  0021 84            	pop	a
4630  0022 81            	ret	
4667                     ; 1085 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4667                     ; 1086 {
4668                     .text:	section	.text,new
4669  0000               _TIM1_ForcedOC2Config:
4671  0000 88            	push	a
4672       00000000      OFST:	set	0
4675                     ; 1088   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4677  0001 a150          	cp	a,#80
4678  0003 2712          	jreq	L6611
4679  0005 a140          	cp	a,#64
4680  0007 270e          	jreq	L6611
4681  0009 ae0440        	ldw	x,#1088
4682  000c 89            	pushw	x
4683  000d 5f            	clrw	x
4684  000e 89            	pushw	x
4685  000f ae0000        	ldw	x,#L37
4686  0012 cd0000        	call	_assert_failed
4688  0015 5b04          	addw	sp,#4
4689  0017               L6611:
4690                     ; 1091   TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
4690                     ; 1092                             | (uint8_t)TIM1_ForcedAction);
4692  0017 c65259        	ld	a,21081
4693  001a a48f          	and	a,#143
4694  001c 1a01          	or	a,(OFST+1,sp)
4695  001e c75259        	ld	21081,a
4696                     ; 1093 }
4699  0021 84            	pop	a
4700  0022 81            	ret	
4737                     ; 1104 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4737                     ; 1105 {
4738                     .text:	section	.text,new
4739  0000               _TIM1_ForcedOC3Config:
4741  0000 88            	push	a
4742       00000000      OFST:	set	0
4745                     ; 1107   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4747  0001 a150          	cp	a,#80
4748  0003 2712          	jreq	L0021
4749  0005 a140          	cp	a,#64
4750  0007 270e          	jreq	L0021
4751  0009 ae0453        	ldw	x,#1107
4752  000c 89            	pushw	x
4753  000d 5f            	clrw	x
4754  000e 89            	pushw	x
4755  000f ae0000        	ldw	x,#L37
4756  0012 cd0000        	call	_assert_failed
4758  0015 5b04          	addw	sp,#4
4759  0017               L0021:
4760                     ; 1110   TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
4760                     ; 1111                             | (uint8_t)TIM1_ForcedAction);
4762  0017 c6525a        	ld	a,21082
4763  001a a48f          	and	a,#143
4764  001c 1a01          	or	a,(OFST+1,sp)
4765  001e c7525a        	ld	21082,a
4766                     ; 1112 }
4769  0021 84            	pop	a
4770  0022 81            	ret	
4807                     ; 1123 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4807                     ; 1124 {
4808                     .text:	section	.text,new
4809  0000               _TIM1_ForcedOC4Config:
4811  0000 88            	push	a
4812       00000000      OFST:	set	0
4815                     ; 1126   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4817  0001 a150          	cp	a,#80
4818  0003 2712          	jreq	L2121
4819  0005 a140          	cp	a,#64
4820  0007 270e          	jreq	L2121
4821  0009 ae0466        	ldw	x,#1126
4822  000c 89            	pushw	x
4823  000d 5f            	clrw	x
4824  000e 89            	pushw	x
4825  000f ae0000        	ldw	x,#L37
4826  0012 cd0000        	call	_assert_failed
4828  0015 5b04          	addw	sp,#4
4829  0017               L2121:
4830                     ; 1129   TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
4830                     ; 1130                             | (uint8_t)TIM1_ForcedAction);
4832  0017 c6525b        	ld	a,21083
4833  001a a48f          	and	a,#143
4834  001c 1a01          	or	a,(OFST+1,sp)
4835  001e c7525b        	ld	21083,a
4836                     ; 1131 }
4839  0021 84            	pop	a
4840  0022 81            	ret	
4877                     ; 1139 void TIM1_ARRPreloadConfig(FunctionalState NewState)
4877                     ; 1140 {
4878                     .text:	section	.text,new
4879  0000               _TIM1_ARRPreloadConfig:
4881  0000 88            	push	a
4882       00000000      OFST:	set	0
4885                     ; 1142   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4887  0001 4d            	tnz	a
4888  0002 2711          	jreq	L4221
4889  0004 4a            	dec	a
4890  0005 270e          	jreq	L4221
4891  0007 ae0476        	ldw	x,#1142
4892  000a 89            	pushw	x
4893  000b 5f            	clrw	x
4894  000c 89            	pushw	x
4895  000d ae0000        	ldw	x,#L37
4896  0010 cd0000        	call	_assert_failed
4898  0013 5b04          	addw	sp,#4
4899  0015               L4221:
4900                     ; 1145   if (NewState != DISABLE)
4902  0015 7b01          	ld	a,(OFST+1,sp)
4903  0017 2706          	jreq	L5102
4904                     ; 1147     TIM1->CR1 |= TIM1_CR1_ARPE;
4906  0019 721e5250      	bset	21072,#7
4908  001d 2004          	jra	L7102
4909  001f               L5102:
4910                     ; 1151     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
4912  001f 721f5250      	bres	21072,#7
4913  0023               L7102:
4914                     ; 1153 }
4917  0023 84            	pop	a
4918  0024 81            	ret	
4954                     ; 1161 void TIM1_SelectCOM(FunctionalState NewState)
4954                     ; 1162 {
4955                     .text:	section	.text,new
4956  0000               _TIM1_SelectCOM:
4958  0000 88            	push	a
4959       00000000      OFST:	set	0
4962                     ; 1164   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4964  0001 4d            	tnz	a
4965  0002 2711          	jreq	L6321
4966  0004 4a            	dec	a
4967  0005 270e          	jreq	L6321
4968  0007 ae048c        	ldw	x,#1164
4969  000a 89            	pushw	x
4970  000b 5f            	clrw	x
4971  000c 89            	pushw	x
4972  000d ae0000        	ldw	x,#L37
4973  0010 cd0000        	call	_assert_failed
4975  0013 5b04          	addw	sp,#4
4976  0015               L6321:
4977                     ; 1167   if (NewState != DISABLE)
4979  0015 7b01          	ld	a,(OFST+1,sp)
4980  0017 2706          	jreq	L7302
4981                     ; 1169     TIM1->CR2 |= TIM1_CR2_COMS;
4983  0019 72145251      	bset	21073,#2
4985  001d 2004          	jra	L1402
4986  001f               L7302:
4987                     ; 1173     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
4989  001f 72155251      	bres	21073,#2
4990  0023               L1402:
4991                     ; 1175 }
4994  0023 84            	pop	a
4995  0024 81            	ret	
5032                     ; 1183 void TIM1_CCPreloadControl(FunctionalState NewState)
5032                     ; 1184 {
5033                     .text:	section	.text,new
5034  0000               _TIM1_CCPreloadControl:
5036  0000 88            	push	a
5037       00000000      OFST:	set	0
5040                     ; 1186   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5042  0001 4d            	tnz	a
5043  0002 2711          	jreq	L0521
5044  0004 4a            	dec	a
5045  0005 270e          	jreq	L0521
5046  0007 ae04a2        	ldw	x,#1186
5047  000a 89            	pushw	x
5048  000b 5f            	clrw	x
5049  000c 89            	pushw	x
5050  000d ae0000        	ldw	x,#L37
5051  0010 cd0000        	call	_assert_failed
5053  0013 5b04          	addw	sp,#4
5054  0015               L0521:
5055                     ; 1189   if (NewState != DISABLE)
5057  0015 7b01          	ld	a,(OFST+1,sp)
5058  0017 2706          	jreq	L1602
5059                     ; 1191     TIM1->CR2 |= TIM1_CR2_CCPC;
5061  0019 72105251      	bset	21073,#0
5063  001d 2004          	jra	L3602
5064  001f               L1602:
5065                     ; 1195     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
5067  001f 72115251      	bres	21073,#0
5068  0023               L3602:
5069                     ; 1197 }
5072  0023 84            	pop	a
5073  0024 81            	ret	
5110                     ; 1205 void TIM1_OC1PreloadConfig(FunctionalState NewState)
5110                     ; 1206 {
5111                     .text:	section	.text,new
5112  0000               _TIM1_OC1PreloadConfig:
5114  0000 88            	push	a
5115       00000000      OFST:	set	0
5118                     ; 1208   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5120  0001 4d            	tnz	a
5121  0002 2711          	jreq	L2621
5122  0004 4a            	dec	a
5123  0005 270e          	jreq	L2621
5124  0007 ae04b8        	ldw	x,#1208
5125  000a 89            	pushw	x
5126  000b 5f            	clrw	x
5127  000c 89            	pushw	x
5128  000d ae0000        	ldw	x,#L37
5129  0010 cd0000        	call	_assert_failed
5131  0013 5b04          	addw	sp,#4
5132  0015               L2621:
5133                     ; 1211   if (NewState != DISABLE)
5135  0015 7b01          	ld	a,(OFST+1,sp)
5136  0017 2706          	jreq	L3012
5137                     ; 1213     TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
5139  0019 72165258      	bset	21080,#3
5141  001d 2004          	jra	L5012
5142  001f               L3012:
5143                     ; 1217     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5145  001f 72175258      	bres	21080,#3
5146  0023               L5012:
5147                     ; 1219 }
5150  0023 84            	pop	a
5151  0024 81            	ret	
5188                     ; 1227 void TIM1_OC2PreloadConfig(FunctionalState NewState)
5188                     ; 1228 {
5189                     .text:	section	.text,new
5190  0000               _TIM1_OC2PreloadConfig:
5192  0000 88            	push	a
5193       00000000      OFST:	set	0
5196                     ; 1230   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5198  0001 4d            	tnz	a
5199  0002 2711          	jreq	L4721
5200  0004 4a            	dec	a
5201  0005 270e          	jreq	L4721
5202  0007 ae04ce        	ldw	x,#1230
5203  000a 89            	pushw	x
5204  000b 5f            	clrw	x
5205  000c 89            	pushw	x
5206  000d ae0000        	ldw	x,#L37
5207  0010 cd0000        	call	_assert_failed
5209  0013 5b04          	addw	sp,#4
5210  0015               L4721:
5211                     ; 1233   if (NewState != DISABLE)
5213  0015 7b01          	ld	a,(OFST+1,sp)
5214  0017 2706          	jreq	L5212
5215                     ; 1235     TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
5217  0019 72165259      	bset	21081,#3
5219  001d 2004          	jra	L7212
5220  001f               L5212:
5221                     ; 1239     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5223  001f 72175259      	bres	21081,#3
5224  0023               L7212:
5225                     ; 1241 }
5228  0023 84            	pop	a
5229  0024 81            	ret	
5266                     ; 1249 void TIM1_OC3PreloadConfig(FunctionalState NewState)
5266                     ; 1250 {
5267                     .text:	section	.text,new
5268  0000               _TIM1_OC3PreloadConfig:
5270  0000 88            	push	a
5271       00000000      OFST:	set	0
5274                     ; 1252   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5276  0001 4d            	tnz	a
5277  0002 2711          	jreq	L6031
5278  0004 4a            	dec	a
5279  0005 270e          	jreq	L6031
5280  0007 ae04e4        	ldw	x,#1252
5281  000a 89            	pushw	x
5282  000b 5f            	clrw	x
5283  000c 89            	pushw	x
5284  000d ae0000        	ldw	x,#L37
5285  0010 cd0000        	call	_assert_failed
5287  0013 5b04          	addw	sp,#4
5288  0015               L6031:
5289                     ; 1255   if (NewState != DISABLE)
5291  0015 7b01          	ld	a,(OFST+1,sp)
5292  0017 2706          	jreq	L7412
5293                     ; 1257     TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
5295  0019 7216525a      	bset	21082,#3
5297  001d 2004          	jra	L1512
5298  001f               L7412:
5299                     ; 1261     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5301  001f 7217525a      	bres	21082,#3
5302  0023               L1512:
5303                     ; 1263 }
5306  0023 84            	pop	a
5307  0024 81            	ret	
5344                     ; 1271 void TIM1_OC4PreloadConfig(FunctionalState NewState)
5344                     ; 1272 {
5345                     .text:	section	.text,new
5346  0000               _TIM1_OC4PreloadConfig:
5348  0000 88            	push	a
5349       00000000      OFST:	set	0
5352                     ; 1274   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5354  0001 4d            	tnz	a
5355  0002 2711          	jreq	L0231
5356  0004 4a            	dec	a
5357  0005 270e          	jreq	L0231
5358  0007 ae04fa        	ldw	x,#1274
5359  000a 89            	pushw	x
5360  000b 5f            	clrw	x
5361  000c 89            	pushw	x
5362  000d ae0000        	ldw	x,#L37
5363  0010 cd0000        	call	_assert_failed
5365  0013 5b04          	addw	sp,#4
5366  0015               L0231:
5367                     ; 1277   if (NewState != DISABLE)
5369  0015 7b01          	ld	a,(OFST+1,sp)
5370  0017 2706          	jreq	L1712
5371                     ; 1279     TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
5373  0019 7216525b      	bset	21083,#3
5375  001d 2004          	jra	L3712
5376  001f               L1712:
5377                     ; 1283     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5379  001f 7217525b      	bres	21083,#3
5380  0023               L3712:
5381                     ; 1285 }
5384  0023 84            	pop	a
5385  0024 81            	ret	
5421                     ; 1293 void TIM1_OC1FastConfig(FunctionalState NewState)
5421                     ; 1294 {
5422                     .text:	section	.text,new
5423  0000               _TIM1_OC1FastConfig:
5425  0000 88            	push	a
5426       00000000      OFST:	set	0
5429                     ; 1296   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5431  0001 4d            	tnz	a
5432  0002 2711          	jreq	L2331
5433  0004 4a            	dec	a
5434  0005 270e          	jreq	L2331
5435  0007 ae0510        	ldw	x,#1296
5436  000a 89            	pushw	x
5437  000b 5f            	clrw	x
5438  000c 89            	pushw	x
5439  000d ae0000        	ldw	x,#L37
5440  0010 cd0000        	call	_assert_failed
5442  0013 5b04          	addw	sp,#4
5443  0015               L2331:
5444                     ; 1299   if (NewState != DISABLE)
5446  0015 7b01          	ld	a,(OFST+1,sp)
5447  0017 2706          	jreq	L3122
5448                     ; 1301     TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
5450  0019 72145258      	bset	21080,#2
5452  001d 2004          	jra	L5122
5453  001f               L3122:
5454                     ; 1305     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5456  001f 72155258      	bres	21080,#2
5457  0023               L5122:
5458                     ; 1307 }
5461  0023 84            	pop	a
5462  0024 81            	ret	
5498                     ; 1315 void TIM1_OC2FastConfig(FunctionalState NewState)
5498                     ; 1316 {
5499                     .text:	section	.text,new
5500  0000               _TIM1_OC2FastConfig:
5502  0000 88            	push	a
5503       00000000      OFST:	set	0
5506                     ; 1318   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5508  0001 4d            	tnz	a
5509  0002 2711          	jreq	L4431
5510  0004 4a            	dec	a
5511  0005 270e          	jreq	L4431
5512  0007 ae0526        	ldw	x,#1318
5513  000a 89            	pushw	x
5514  000b 5f            	clrw	x
5515  000c 89            	pushw	x
5516  000d ae0000        	ldw	x,#L37
5517  0010 cd0000        	call	_assert_failed
5519  0013 5b04          	addw	sp,#4
5520  0015               L4431:
5521                     ; 1321   if (NewState != DISABLE)
5523  0015 7b01          	ld	a,(OFST+1,sp)
5524  0017 2706          	jreq	L5322
5525                     ; 1323     TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
5527  0019 72145259      	bset	21081,#2
5529  001d 2004          	jra	L7322
5530  001f               L5322:
5531                     ; 1327     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5533  001f 72155259      	bres	21081,#2
5534  0023               L7322:
5535                     ; 1329 }
5538  0023 84            	pop	a
5539  0024 81            	ret	
5575                     ; 1337 void TIM1_OC3FastConfig(FunctionalState NewState)
5575                     ; 1338 {
5576                     .text:	section	.text,new
5577  0000               _TIM1_OC3FastConfig:
5579  0000 88            	push	a
5580       00000000      OFST:	set	0
5583                     ; 1340   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5585  0001 4d            	tnz	a
5586  0002 2711          	jreq	L6531
5587  0004 4a            	dec	a
5588  0005 270e          	jreq	L6531
5589  0007 ae053c        	ldw	x,#1340
5590  000a 89            	pushw	x
5591  000b 5f            	clrw	x
5592  000c 89            	pushw	x
5593  000d ae0000        	ldw	x,#L37
5594  0010 cd0000        	call	_assert_failed
5596  0013 5b04          	addw	sp,#4
5597  0015               L6531:
5598                     ; 1343   if (NewState != DISABLE)
5600  0015 7b01          	ld	a,(OFST+1,sp)
5601  0017 2706          	jreq	L7522
5602                     ; 1345     TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
5604  0019 7214525a      	bset	21082,#2
5606  001d 2004          	jra	L1622
5607  001f               L7522:
5608                     ; 1349     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5610  001f 7215525a      	bres	21082,#2
5611  0023               L1622:
5612                     ; 1351 }
5615  0023 84            	pop	a
5616  0024 81            	ret	
5652                     ; 1359 void TIM1_OC4FastConfig(FunctionalState NewState)
5652                     ; 1360 {
5653                     .text:	section	.text,new
5654  0000               _TIM1_OC4FastConfig:
5656  0000 88            	push	a
5657       00000000      OFST:	set	0
5660                     ; 1362   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5662  0001 4d            	tnz	a
5663  0002 2711          	jreq	L0731
5664  0004 4a            	dec	a
5665  0005 270e          	jreq	L0731
5666  0007 ae0552        	ldw	x,#1362
5667  000a 89            	pushw	x
5668  000b 5f            	clrw	x
5669  000c 89            	pushw	x
5670  000d ae0000        	ldw	x,#L37
5671  0010 cd0000        	call	_assert_failed
5673  0013 5b04          	addw	sp,#4
5674  0015               L0731:
5675                     ; 1365   if (NewState != DISABLE)
5677  0015 7b01          	ld	a,(OFST+1,sp)
5678  0017 2706          	jreq	L1032
5679                     ; 1367     TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
5681  0019 7214525b      	bset	21083,#2
5683  001d 2004          	jra	L3032
5684  001f               L1032:
5685                     ; 1371     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5687  001f 7215525b      	bres	21083,#2
5688  0023               L3032:
5689                     ; 1373 }
5692  0023 84            	pop	a
5693  0024 81            	ret	
5799                     ; 1389 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
5799                     ; 1390 {
5800                     .text:	section	.text,new
5801  0000               _TIM1_GenerateEvent:
5803  0000 88            	push	a
5804       00000000      OFST:	set	0
5807                     ; 1392   assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
5809  0001 4d            	tnz	a
5810  0002 260e          	jrne	L0041
5811  0004 ae0570        	ldw	x,#1392
5812  0007 89            	pushw	x
5813  0008 5f            	clrw	x
5814  0009 89            	pushw	x
5815  000a ae0000        	ldw	x,#L37
5816  000d cd0000        	call	_assert_failed
5818  0010 5b04          	addw	sp,#4
5819  0012               L0041:
5820                     ; 1395   TIM1->EGR = (uint8_t)TIM1_EventSource;
5822  0012 7b01          	ld	a,(OFST+1,sp)
5823  0014 c75257        	ld	21079,a
5824                     ; 1396 }
5827  0017 84            	pop	a
5828  0018 81            	ret	
5865                     ; 1406 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5865                     ; 1407 {
5866                     .text:	section	.text,new
5867  0000               _TIM1_OC1PolarityConfig:
5869  0000 88            	push	a
5870       00000000      OFST:	set	0
5873                     ; 1409   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
5875  0001 4d            	tnz	a
5876  0002 2712          	jreq	L2141
5877  0004 a122          	cp	a,#34
5878  0006 270e          	jreq	L2141
5879  0008 ae0581        	ldw	x,#1409
5880  000b 89            	pushw	x
5881  000c 5f            	clrw	x
5882  000d 89            	pushw	x
5883  000e ae0000        	ldw	x,#L37
5884  0011 cd0000        	call	_assert_failed
5886  0014 5b04          	addw	sp,#4
5887  0016               L2141:
5888                     ; 1412   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
5890  0016 7b01          	ld	a,(OFST+1,sp)
5891  0018 2706          	jreq	L5632
5892                     ; 1414     TIM1->CCER1 |= TIM1_CCER1_CC1P;
5894  001a 7212525c      	bset	21084,#1
5896  001e 2004          	jra	L7632
5897  0020               L5632:
5898                     ; 1418     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
5900  0020 7213525c      	bres	21084,#1
5901  0024               L7632:
5902                     ; 1420 }
5905  0024 84            	pop	a
5906  0025 81            	ret	
5943                     ; 1430 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
5943                     ; 1431 {
5944                     .text:	section	.text,new
5945  0000               _TIM1_OC1NPolarityConfig:
5947  0000 88            	push	a
5948       00000000      OFST:	set	0
5951                     ; 1433   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
5953  0001 4d            	tnz	a
5954  0002 2712          	jreq	L4241
5955  0004 a188          	cp	a,#136
5956  0006 270e          	jreq	L4241
5957  0008 ae0599        	ldw	x,#1433
5958  000b 89            	pushw	x
5959  000c 5f            	clrw	x
5960  000d 89            	pushw	x
5961  000e ae0000        	ldw	x,#L37
5962  0011 cd0000        	call	_assert_failed
5964  0014 5b04          	addw	sp,#4
5965  0016               L4241:
5966                     ; 1436   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
5968  0016 7b01          	ld	a,(OFST+1,sp)
5969  0018 2706          	jreq	L7042
5970                     ; 1438     TIM1->CCER1 |= TIM1_CCER1_CC1NP;
5972  001a 7216525c      	bset	21084,#3
5974  001e 2004          	jra	L1142
5975  0020               L7042:
5976                     ; 1442     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
5978  0020 7217525c      	bres	21084,#3
5979  0024               L1142:
5980                     ; 1444 }
5983  0024 84            	pop	a
5984  0025 81            	ret	
6021                     ; 1454 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6021                     ; 1455 {
6022                     .text:	section	.text,new
6023  0000               _TIM1_OC2PolarityConfig:
6025  0000 88            	push	a
6026       00000000      OFST:	set	0
6029                     ; 1457   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6031  0001 4d            	tnz	a
6032  0002 2712          	jreq	L6341
6033  0004 a122          	cp	a,#34
6034  0006 270e          	jreq	L6341
6035  0008 ae05b1        	ldw	x,#1457
6036  000b 89            	pushw	x
6037  000c 5f            	clrw	x
6038  000d 89            	pushw	x
6039  000e ae0000        	ldw	x,#L37
6040  0011 cd0000        	call	_assert_failed
6042  0014 5b04          	addw	sp,#4
6043  0016               L6341:
6044                     ; 1460   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6046  0016 7b01          	ld	a,(OFST+1,sp)
6047  0018 2706          	jreq	L1342
6048                     ; 1462     TIM1->CCER1 |= TIM1_CCER1_CC2P;
6050  001a 721a525c      	bset	21084,#5
6052  001e 2004          	jra	L3342
6053  0020               L1342:
6054                     ; 1466     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
6056  0020 721b525c      	bres	21084,#5
6057  0024               L3342:
6058                     ; 1468 }
6061  0024 84            	pop	a
6062  0025 81            	ret	
6099                     ; 1478 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6099                     ; 1479 {
6100                     .text:	section	.text,new
6101  0000               _TIM1_OC2NPolarityConfig:
6103  0000 88            	push	a
6104       00000000      OFST:	set	0
6107                     ; 1481   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6109  0001 4d            	tnz	a
6110  0002 2712          	jreq	L0541
6111  0004 a188          	cp	a,#136
6112  0006 270e          	jreq	L0541
6113  0008 ae05c9        	ldw	x,#1481
6114  000b 89            	pushw	x
6115  000c 5f            	clrw	x
6116  000d 89            	pushw	x
6117  000e ae0000        	ldw	x,#L37
6118  0011 cd0000        	call	_assert_failed
6120  0014 5b04          	addw	sp,#4
6121  0016               L0541:
6122                     ; 1484   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6124  0016 7b01          	ld	a,(OFST+1,sp)
6125  0018 2706          	jreq	L3542
6126                     ; 1486     TIM1->CCER1 |= TIM1_CCER1_CC2NP;
6128  001a 721e525c      	bset	21084,#7
6130  001e 2004          	jra	L5542
6131  0020               L3542:
6132                     ; 1490     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
6134  0020 721f525c      	bres	21084,#7
6135  0024               L5542:
6136                     ; 1492 }
6139  0024 84            	pop	a
6140  0025 81            	ret	
6177                     ; 1502 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6177                     ; 1503 {
6178                     .text:	section	.text,new
6179  0000               _TIM1_OC3PolarityConfig:
6181  0000 88            	push	a
6182       00000000      OFST:	set	0
6185                     ; 1505   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6187  0001 4d            	tnz	a
6188  0002 2712          	jreq	L2641
6189  0004 a122          	cp	a,#34
6190  0006 270e          	jreq	L2641
6191  0008 ae05e1        	ldw	x,#1505
6192  000b 89            	pushw	x
6193  000c 5f            	clrw	x
6194  000d 89            	pushw	x
6195  000e ae0000        	ldw	x,#L37
6196  0011 cd0000        	call	_assert_failed
6198  0014 5b04          	addw	sp,#4
6199  0016               L2641:
6200                     ; 1508   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6202  0016 7b01          	ld	a,(OFST+1,sp)
6203  0018 2706          	jreq	L5742
6204                     ; 1510     TIM1->CCER2 |= TIM1_CCER2_CC3P;
6206  001a 7212525d      	bset	21085,#1
6208  001e 2004          	jra	L7742
6209  0020               L5742:
6210                     ; 1514     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
6212  0020 7213525d      	bres	21085,#1
6213  0024               L7742:
6214                     ; 1516 }
6217  0024 84            	pop	a
6218  0025 81            	ret	
6255                     ; 1527 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6255                     ; 1528 {
6256                     .text:	section	.text,new
6257  0000               _TIM1_OC3NPolarityConfig:
6259  0000 88            	push	a
6260       00000000      OFST:	set	0
6263                     ; 1530   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6265  0001 4d            	tnz	a
6266  0002 2712          	jreq	L4741
6267  0004 a188          	cp	a,#136
6268  0006 270e          	jreq	L4741
6269  0008 ae05fa        	ldw	x,#1530
6270  000b 89            	pushw	x
6271  000c 5f            	clrw	x
6272  000d 89            	pushw	x
6273  000e ae0000        	ldw	x,#L37
6274  0011 cd0000        	call	_assert_failed
6276  0014 5b04          	addw	sp,#4
6277  0016               L4741:
6278                     ; 1533   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6280  0016 7b01          	ld	a,(OFST+1,sp)
6281  0018 2706          	jreq	L7152
6282                     ; 1535     TIM1->CCER2 |= TIM1_CCER2_CC3NP;
6284  001a 7216525d      	bset	21085,#3
6286  001e 2004          	jra	L1252
6287  0020               L7152:
6288                     ; 1539     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
6290  0020 7217525d      	bres	21085,#3
6291  0024               L1252:
6292                     ; 1541 }
6295  0024 84            	pop	a
6296  0025 81            	ret	
6333                     ; 1551 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6333                     ; 1552 {
6334                     .text:	section	.text,new
6335  0000               _TIM1_OC4PolarityConfig:
6337  0000 88            	push	a
6338       00000000      OFST:	set	0
6341                     ; 1554   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6343  0001 4d            	tnz	a
6344  0002 2712          	jreq	L6051
6345  0004 a122          	cp	a,#34
6346  0006 270e          	jreq	L6051
6347  0008 ae0612        	ldw	x,#1554
6348  000b 89            	pushw	x
6349  000c 5f            	clrw	x
6350  000d 89            	pushw	x
6351  000e ae0000        	ldw	x,#L37
6352  0011 cd0000        	call	_assert_failed
6354  0014 5b04          	addw	sp,#4
6355  0016               L6051:
6356                     ; 1557   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6358  0016 7b01          	ld	a,(OFST+1,sp)
6359  0018 2706          	jreq	L1452
6360                     ; 1559     TIM1->CCER2 |= TIM1_CCER2_CC4P;
6362  001a 721a525d      	bset	21085,#5
6364  001e 2004          	jra	L3452
6365  0020               L1452:
6366                     ; 1563     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
6368  0020 721b525d      	bres	21085,#5
6369  0024               L3452:
6370                     ; 1565 }
6373  0024 84            	pop	a
6374  0025 81            	ret	
6420                     ; 1579 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
6420                     ; 1580 {
6421                     .text:	section	.text,new
6422  0000               _TIM1_CCxCmd:
6424  0000 89            	pushw	x
6425       00000000      OFST:	set	0
6428                     ; 1582   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
6430  0001 9e            	ld	a,xh
6431  0002 4d            	tnz	a
6432  0003 2713          	jreq	L0251
6433  0005 9e            	ld	a,xh
6434  0006 4a            	dec	a
6435  0007 270f          	jreq	L0251
6436  0009 9e            	ld	a,xh
6437  000a a102          	cp	a,#2
6438  000c 270a          	jreq	L0251
6439  000e 9e            	ld	a,xh
6440  000f a103          	cp	a,#3
6441  0011 2705          	jreq	L0251
6442  0013 ae062e        	ldw	x,#1582
6443  0016 ad58          	call	LC013
6444  0018               L0251:
6445                     ; 1583   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6447  0018 7b02          	ld	a,(OFST+2,sp)
6448  001a 2708          	jreq	L0351
6449  001c 4a            	dec	a
6450  001d 2705          	jreq	L0351
6451  001f ae062f        	ldw	x,#1583
6452  0022 ad4c          	call	LC013
6453  0024               L0351:
6454                     ; 1585   if (TIM1_Channel == TIM1_CHANNEL_1)
6456  0024 7b01          	ld	a,(OFST+1,sp)
6457  0026 2610          	jrne	L7652
6458                     ; 1588     if (NewState != DISABLE)
6460  0028 7b02          	ld	a,(OFST+2,sp)
6461  002a 2706          	jreq	L1752
6462                     ; 1590       TIM1->CCER1 |= TIM1_CCER1_CC1E;
6464  002c 7210525c      	bset	21084,#0
6466  0030 203c          	jra	L5752
6467  0032               L1752:
6468                     ; 1594       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
6470  0032 7211525c      	bres	21084,#0
6471  0036 2036          	jra	L5752
6472  0038               L7652:
6473                     ; 1598   else if (TIM1_Channel == TIM1_CHANNEL_2)
6475  0038 a101          	cp	a,#1
6476  003a 2610          	jrne	L7752
6477                     ; 1601     if (NewState != DISABLE)
6479  003c 7b02          	ld	a,(OFST+2,sp)
6480  003e 2706          	jreq	L1062
6481                     ; 1603       TIM1->CCER1 |= TIM1_CCER1_CC2E;
6483  0040 7218525c      	bset	21084,#4
6485  0044 2028          	jra	L5752
6486  0046               L1062:
6487                     ; 1607       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
6489  0046 7219525c      	bres	21084,#4
6490  004a 2022          	jra	L5752
6491  004c               L7752:
6492                     ; 1610   else if (TIM1_Channel == TIM1_CHANNEL_3)
6494  004c a102          	cp	a,#2
6495  004e 2610          	jrne	L7062
6496                     ; 1613     if (NewState != DISABLE)
6498  0050 7b02          	ld	a,(OFST+2,sp)
6499  0052 2706          	jreq	L1162
6500                     ; 1615       TIM1->CCER2 |= TIM1_CCER2_CC3E;
6502  0054 7210525d      	bset	21085,#0
6504  0058 2014          	jra	L5752
6505  005a               L1162:
6506                     ; 1619       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
6508  005a 7211525d      	bres	21085,#0
6509  005e 200e          	jra	L5752
6510  0060               L7062:
6511                     ; 1625     if (NewState != DISABLE)
6513  0060 7b02          	ld	a,(OFST+2,sp)
6514  0062 2706          	jreq	L7162
6515                     ; 1627       TIM1->CCER2 |= TIM1_CCER2_CC4E;
6517  0064 7218525d      	bset	21085,#4
6519  0068 2004          	jra	L5752
6520  006a               L7162:
6521                     ; 1631       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
6523  006a 7219525d      	bres	21085,#4
6524  006e               L5752:
6525                     ; 1634 }
6528  006e 85            	popw	x
6529  006f 81            	ret	
6530  0070               LC013:
6531  0070 89            	pushw	x
6532  0071 5f            	clrw	x
6533  0072 89            	pushw	x
6534  0073 ae0000        	ldw	x,#L37
6535  0076 cd0000        	call	_assert_failed
6537  0079 5b04          	addw	sp,#4
6538  007b 81            	ret	
6584                     ; 1647 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
6584                     ; 1648 {
6585                     .text:	section	.text,new
6586  0000               _TIM1_CCxNCmd:
6588  0000 89            	pushw	x
6589       00000000      OFST:	set	0
6592                     ; 1650   assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
6594  0001 9e            	ld	a,xh
6595  0002 4d            	tnz	a
6596  0003 270e          	jreq	L2451
6597  0005 9e            	ld	a,xh
6598  0006 4a            	dec	a
6599  0007 270a          	jreq	L2451
6600  0009 9e            	ld	a,xh
6601  000a a102          	cp	a,#2
6602  000c 2705          	jreq	L2451
6603  000e ae0672        	ldw	x,#1650
6604  0011 ad43          	call	LC014
6605  0013               L2451:
6606                     ; 1651   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6608  0013 7b02          	ld	a,(OFST+2,sp)
6609  0015 2708          	jreq	L2551
6610  0017 4a            	dec	a
6611  0018 2705          	jreq	L2551
6612  001a ae0673        	ldw	x,#1651
6613  001d ad37          	call	LC014
6614  001f               L2551:
6615                     ; 1653   if (TIM1_Channel == TIM1_CHANNEL_1)
6617  001f 7b01          	ld	a,(OFST+1,sp)
6618  0021 2610          	jrne	L5462
6619                     ; 1656     if (NewState != DISABLE)
6621  0023 7b02          	ld	a,(OFST+2,sp)
6622  0025 2706          	jreq	L7462
6623                     ; 1658       TIM1->CCER1 |= TIM1_CCER1_CC1NE;
6625  0027 7214525c      	bset	21084,#2
6627  002b 2027          	jra	L3562
6628  002d               L7462:
6629                     ; 1662       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
6631  002d 7215525c      	bres	21084,#2
6632  0031 2021          	jra	L3562
6633  0033               L5462:
6634                     ; 1665   else if (TIM1_Channel == TIM1_CHANNEL_2)
6636  0033 4a            	dec	a
6637  0034 2610          	jrne	L5562
6638                     ; 1668     if (NewState != DISABLE)
6640  0036 7b02          	ld	a,(OFST+2,sp)
6641  0038 2706          	jreq	L7562
6642                     ; 1670       TIM1->CCER1 |= TIM1_CCER1_CC2NE;
6644  003a 721c525c      	bset	21084,#6
6646  003e 2014          	jra	L3562
6647  0040               L7562:
6648                     ; 1674       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
6650  0040 721d525c      	bres	21084,#6
6651  0044 200e          	jra	L3562
6652  0046               L5562:
6653                     ; 1680     if (NewState != DISABLE)
6655  0046 7b02          	ld	a,(OFST+2,sp)
6656  0048 2706          	jreq	L5662
6657                     ; 1682       TIM1->CCER2 |= TIM1_CCER2_CC3NE;
6659  004a 7214525d      	bset	21085,#2
6661  004e 2004          	jra	L3562
6662  0050               L5662:
6663                     ; 1686       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
6665  0050 7215525d      	bres	21085,#2
6666  0054               L3562:
6667                     ; 1689 }
6670  0054 85            	popw	x
6671  0055 81            	ret	
6672  0056               LC014:
6673  0056 89            	pushw	x
6674  0057 5f            	clrw	x
6675  0058 89            	pushw	x
6676  0059 ae0000        	ldw	x,#L37
6677  005c cd0000        	call	_assert_failed
6679  005f 5b04          	addw	sp,#4
6680  0061 81            	ret	
6726                     ; 1712 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
6726                     ; 1713 {
6727                     .text:	section	.text,new
6728  0000               _TIM1_SelectOCxM:
6730  0000 89            	pushw	x
6731       00000000      OFST:	set	0
6734                     ; 1715   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
6736  0001 9e            	ld	a,xh
6737  0002 4d            	tnz	a
6738  0003 2713          	jreq	L4651
6739  0005 9e            	ld	a,xh
6740  0006 4a            	dec	a
6741  0007 270f          	jreq	L4651
6742  0009 9e            	ld	a,xh
6743  000a a102          	cp	a,#2
6744  000c 270a          	jreq	L4651
6745  000e 9e            	ld	a,xh
6746  000f a103          	cp	a,#3
6747  0011 2705          	jreq	L4651
6748  0013 ae06b3        	ldw	x,#1715
6749  0016 ad71          	call	LC015
6750  0018               L4651:
6751                     ; 1716   assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
6753  0018 7b02          	ld	a,(OFST+2,sp)
6754  001a 2721          	jreq	L4751
6755  001c a110          	cp	a,#16
6756  001e 271d          	jreq	L4751
6757  0020 a120          	cp	a,#32
6758  0022 2719          	jreq	L4751
6759  0024 a130          	cp	a,#48
6760  0026 2715          	jreq	L4751
6761  0028 a160          	cp	a,#96
6762  002a 2711          	jreq	L4751
6763  002c a170          	cp	a,#112
6764  002e 270d          	jreq	L4751
6765  0030 a150          	cp	a,#80
6766  0032 2709          	jreq	L4751
6767  0034 a140          	cp	a,#64
6768  0036 2705          	jreq	L4751
6769  0038 ae06b4        	ldw	x,#1716
6770  003b ad4c          	call	LC015
6771  003d               L4751:
6772                     ; 1718   if (TIM1_Channel == TIM1_CHANNEL_1)
6774  003d 7b01          	ld	a,(OFST+1,sp)
6775  003f 2610          	jrne	L3172
6776                     ; 1721     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
6778  0041 7211525c      	bres	21084,#0
6779                     ; 1724     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
6779                     ; 1725                             | (uint8_t)TIM1_OCMode);
6781  0045 c65258        	ld	a,21080
6782  0048 a48f          	and	a,#143
6783  004a 1a02          	or	a,(OFST+2,sp)
6784  004c c75258        	ld	21080,a
6786  004f 2036          	jra	L5172
6787  0051               L3172:
6788                     ; 1727   else if (TIM1_Channel == TIM1_CHANNEL_2)
6790  0051 a101          	cp	a,#1
6791  0053 2610          	jrne	L7172
6792                     ; 1730     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
6794  0055 7219525c      	bres	21084,#4
6795                     ; 1733     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
6795                     ; 1734                             | (uint8_t)TIM1_OCMode);
6797  0059 c65259        	ld	a,21081
6798  005c a48f          	and	a,#143
6799  005e 1a02          	or	a,(OFST+2,sp)
6800  0060 c75259        	ld	21081,a
6802  0063 2022          	jra	L5172
6803  0065               L7172:
6804                     ; 1736   else if (TIM1_Channel == TIM1_CHANNEL_3)
6806  0065 a102          	cp	a,#2
6807  0067 2610          	jrne	L3272
6808                     ; 1739     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
6810  0069 7211525d      	bres	21085,#0
6811                     ; 1742     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
6811                     ; 1743                             | (uint8_t)TIM1_OCMode);
6813  006d c6525a        	ld	a,21082
6814  0070 a48f          	and	a,#143
6815  0072 1a02          	or	a,(OFST+2,sp)
6816  0074 c7525a        	ld	21082,a
6818  0077 200e          	jra	L5172
6819  0079               L3272:
6820                     ; 1748     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
6822  0079 7219525d      	bres	21085,#4
6823                     ; 1751     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
6823                     ; 1752                             | (uint8_t)TIM1_OCMode);
6825  007d c6525b        	ld	a,21083
6826  0080 a48f          	and	a,#143
6827  0082 1a02          	or	a,(OFST+2,sp)
6828  0084 c7525b        	ld	21083,a
6829  0087               L5172:
6830                     ; 1754 }
6833  0087 85            	popw	x
6834  0088 81            	ret	
6835  0089               LC015:
6836  0089 89            	pushw	x
6837  008a 5f            	clrw	x
6838  008b 89            	pushw	x
6839  008c ae0000        	ldw	x,#L37
6840  008f cd0000        	call	_assert_failed
6842  0092 5b04          	addw	sp,#4
6843  0094 81            	ret	
6875                     ; 1762 void TIM1_SetCounter(uint16_t Counter)
6875                     ; 1763 {
6876                     .text:	section	.text,new
6877  0000               _TIM1_SetCounter:
6881                     ; 1765   TIM1->CNTRH = (uint8_t)(Counter >> 8);
6883  0000 9e            	ld	a,xh
6884  0001 c7525e        	ld	21086,a
6885                     ; 1766   TIM1->CNTRL = (uint8_t)(Counter);
6887  0004 9f            	ld	a,xl
6888  0005 c7525f        	ld	21087,a
6889                     ; 1767 }
6892  0008 81            	ret	
6924                     ; 1775 void TIM1_SetAutoreload(uint16_t Autoreload)
6924                     ; 1776 {
6925                     .text:	section	.text,new
6926  0000               _TIM1_SetAutoreload:
6930                     ; 1778   TIM1->ARRH = (uint8_t)(Autoreload >> 8);
6932  0000 9e            	ld	a,xh
6933  0001 c75262        	ld	21090,a
6934                     ; 1779   TIM1->ARRL = (uint8_t)(Autoreload);
6936  0004 9f            	ld	a,xl
6937  0005 c75263        	ld	21091,a
6938                     ; 1780  }
6941  0008 81            	ret	
6973                     ; 1788 void TIM1_SetCompare1(uint16_t Compare1)
6973                     ; 1789 {
6974                     .text:	section	.text,new
6975  0000               _TIM1_SetCompare1:
6979                     ; 1791   TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
6981  0000 9e            	ld	a,xh
6982  0001 c75265        	ld	21093,a
6983                     ; 1792   TIM1->CCR1L = (uint8_t)(Compare1);
6985  0004 9f            	ld	a,xl
6986  0005 c75266        	ld	21094,a
6987                     ; 1793 }
6990  0008 81            	ret	
7022                     ; 1801 void TIM1_SetCompare2(uint16_t Compare2)
7022                     ; 1802 {
7023                     .text:	section	.text,new
7024  0000               _TIM1_SetCompare2:
7028                     ; 1804   TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
7030  0000 9e            	ld	a,xh
7031  0001 c75267        	ld	21095,a
7032                     ; 1805   TIM1->CCR2L = (uint8_t)(Compare2);
7034  0004 9f            	ld	a,xl
7035  0005 c75268        	ld	21096,a
7036                     ; 1806 }
7039  0008 81            	ret	
7071                     ; 1814 void TIM1_SetCompare3(uint16_t Compare3)
7071                     ; 1815 {
7072                     .text:	section	.text,new
7073  0000               _TIM1_SetCompare3:
7077                     ; 1817   TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
7079  0000 9e            	ld	a,xh
7080  0001 c75269        	ld	21097,a
7081                     ; 1818   TIM1->CCR3L = (uint8_t)(Compare3);
7083  0004 9f            	ld	a,xl
7084  0005 c7526a        	ld	21098,a
7085                     ; 1819 }
7088  0008 81            	ret	
7120                     ; 1827 void TIM1_SetCompare4(uint16_t Compare4)
7120                     ; 1828 {
7121                     .text:	section	.text,new
7122  0000               _TIM1_SetCompare4:
7126                     ; 1830   TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
7128  0000 9e            	ld	a,xh
7129  0001 c7526b        	ld	21099,a
7130                     ; 1831   TIM1->CCR4L = (uint8_t)(Compare4);
7132  0004 9f            	ld	a,xl
7133  0005 c7526c        	ld	21100,a
7134                     ; 1832 }
7137  0008 81            	ret	
7174                     ; 1844 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
7174                     ; 1845 {
7175                     .text:	section	.text,new
7176  0000               _TIM1_SetIC1Prescaler:
7178  0000 88            	push	a
7179       00000000      OFST:	set	0
7182                     ; 1847   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
7184  0001 4d            	tnz	a
7185  0002 271a          	jreq	L2261
7186  0004 a104          	cp	a,#4
7187  0006 2716          	jreq	L2261
7188  0008 a108          	cp	a,#8
7189  000a 2712          	jreq	L2261
7190  000c a10c          	cp	a,#12
7191  000e 270e          	jreq	L2261
7192  0010 ae0737        	ldw	x,#1847
7193  0013 89            	pushw	x
7194  0014 5f            	clrw	x
7195  0015 89            	pushw	x
7196  0016 ae0000        	ldw	x,#L37
7197  0019 cd0000        	call	_assert_failed
7199  001c 5b04          	addw	sp,#4
7200  001e               L2261:
7201                     ; 1850   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
7201                     ; 1851                           | (uint8_t)TIM1_IC1Prescaler);
7203  001e c65258        	ld	a,21080
7204  0021 a4f3          	and	a,#243
7205  0023 1a01          	or	a,(OFST+1,sp)
7206  0025 c75258        	ld	21080,a
7207                     ; 1852 }
7210  0028 84            	pop	a
7211  0029 81            	ret	
7248                     ; 1864 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
7248                     ; 1865 {
7249                     .text:	section	.text,new
7250  0000               _TIM1_SetIC2Prescaler:
7252  0000 88            	push	a
7253       00000000      OFST:	set	0
7256                     ; 1868   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
7258  0001 4d            	tnz	a
7259  0002 271a          	jreq	L4361
7260  0004 a104          	cp	a,#4
7261  0006 2716          	jreq	L4361
7262  0008 a108          	cp	a,#8
7263  000a 2712          	jreq	L4361
7264  000c a10c          	cp	a,#12
7265  000e 270e          	jreq	L4361
7266  0010 ae074c        	ldw	x,#1868
7267  0013 89            	pushw	x
7268  0014 5f            	clrw	x
7269  0015 89            	pushw	x
7270  0016 ae0000        	ldw	x,#L37
7271  0019 cd0000        	call	_assert_failed
7273  001c 5b04          	addw	sp,#4
7274  001e               L4361:
7275                     ; 1871   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
7275                     ; 1872                           | (uint8_t)TIM1_IC2Prescaler);
7277  001e c65259        	ld	a,21081
7278  0021 a4f3          	and	a,#243
7279  0023 1a01          	or	a,(OFST+1,sp)
7280  0025 c75259        	ld	21081,a
7281                     ; 1873 }
7284  0028 84            	pop	a
7285  0029 81            	ret	
7322                     ; 1885 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
7322                     ; 1886 {
7323                     .text:	section	.text,new
7324  0000               _TIM1_SetIC3Prescaler:
7326  0000 88            	push	a
7327       00000000      OFST:	set	0
7330                     ; 1889   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
7332  0001 4d            	tnz	a
7333  0002 271a          	jreq	L6461
7334  0004 a104          	cp	a,#4
7335  0006 2716          	jreq	L6461
7336  0008 a108          	cp	a,#8
7337  000a 2712          	jreq	L6461
7338  000c a10c          	cp	a,#12
7339  000e 270e          	jreq	L6461
7340  0010 ae0761        	ldw	x,#1889
7341  0013 89            	pushw	x
7342  0014 5f            	clrw	x
7343  0015 89            	pushw	x
7344  0016 ae0000        	ldw	x,#L37
7345  0019 cd0000        	call	_assert_failed
7347  001c 5b04          	addw	sp,#4
7348  001e               L6461:
7349                     ; 1892   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
7349                     ; 1893                           (uint8_t)TIM1_IC3Prescaler);
7351  001e c6525a        	ld	a,21082
7352  0021 a4f3          	and	a,#243
7353  0023 1a01          	or	a,(OFST+1,sp)
7354  0025 c7525a        	ld	21082,a
7355                     ; 1894 }
7358  0028 84            	pop	a
7359  0029 81            	ret	
7396                     ; 1906 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
7396                     ; 1907 {
7397                     .text:	section	.text,new
7398  0000               _TIM1_SetIC4Prescaler:
7400  0000 88            	push	a
7401       00000000      OFST:	set	0
7404                     ; 1910   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
7406  0001 4d            	tnz	a
7407  0002 271a          	jreq	L0661
7408  0004 a104          	cp	a,#4
7409  0006 2716          	jreq	L0661
7410  0008 a108          	cp	a,#8
7411  000a 2712          	jreq	L0661
7412  000c a10c          	cp	a,#12
7413  000e 270e          	jreq	L0661
7414  0010 ae0776        	ldw	x,#1910
7415  0013 89            	pushw	x
7416  0014 5f            	clrw	x
7417  0015 89            	pushw	x
7418  0016 ae0000        	ldw	x,#L37
7419  0019 cd0000        	call	_assert_failed
7421  001c 5b04          	addw	sp,#4
7422  001e               L0661:
7423                     ; 1913   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
7423                     ; 1914                           (uint8_t)TIM1_IC4Prescaler);
7425  001e c6525b        	ld	a,21083
7426  0021 a4f3          	and	a,#243
7427  0023 1a01          	or	a,(OFST+1,sp)
7428  0025 c7525b        	ld	21083,a
7429                     ; 1915 }
7432  0028 84            	pop	a
7433  0029 81            	ret	
7479                     ; 1922 uint16_t TIM1_GetCapture1(void)
7479                     ; 1923 {
7480                     .text:	section	.text,new
7481  0000               _TIM1_GetCapture1:
7483  0000 5204          	subw	sp,#4
7484       00000004      OFST:	set	4
7487                     ; 1926   uint16_t tmpccr1 = 0;
7489                     ; 1927   uint8_t tmpccr1l=0, tmpccr1h=0;
7493                     ; 1929   tmpccr1h = TIM1->CCR1H;
7495  0002 c65265        	ld	a,21093
7496  0005 6b02          	ld	(OFST-2,sp),a
7498                     ; 1930   tmpccr1l = TIM1->CCR1L;
7500  0007 c65266        	ld	a,21094
7501  000a 6b01          	ld	(OFST-3,sp),a
7503                     ; 1932   tmpccr1 = (uint16_t)(tmpccr1l);
7505  000c 5f            	clrw	x
7506  000d 97            	ld	xl,a
7507  000e 1f03          	ldw	(OFST-1,sp),x
7509                     ; 1933   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
7511  0010 5f            	clrw	x
7512  0011 7b02          	ld	a,(OFST-2,sp)
7513  0013 97            	ld	xl,a
7514  0014 7b04          	ld	a,(OFST+0,sp)
7515  0016 01            	rrwa	x,a
7516  0017 1a03          	or	a,(OFST-1,sp)
7517  0019 01            	rrwa	x,a
7519                     ; 1935   return (uint16_t)tmpccr1;
7523  001a 5b04          	addw	sp,#4
7524  001c 81            	ret	
7570                     ; 1943 uint16_t TIM1_GetCapture2(void)
7570                     ; 1944 {
7571                     .text:	section	.text,new
7572  0000               _TIM1_GetCapture2:
7574  0000 5204          	subw	sp,#4
7575       00000004      OFST:	set	4
7578                     ; 1947   uint16_t tmpccr2 = 0;
7580                     ; 1948   uint8_t tmpccr2l=0, tmpccr2h=0;
7584                     ; 1950   tmpccr2h = TIM1->CCR2H;
7586  0002 c65267        	ld	a,21095
7587  0005 6b02          	ld	(OFST-2,sp),a
7589                     ; 1951   tmpccr2l = TIM1->CCR2L;
7591  0007 c65268        	ld	a,21096
7592  000a 6b01          	ld	(OFST-3,sp),a
7594                     ; 1953   tmpccr2 = (uint16_t)(tmpccr2l);
7596  000c 5f            	clrw	x
7597  000d 97            	ld	xl,a
7598  000e 1f03          	ldw	(OFST-1,sp),x
7600                     ; 1954   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
7602  0010 5f            	clrw	x
7603  0011 7b02          	ld	a,(OFST-2,sp)
7604  0013 97            	ld	xl,a
7605  0014 7b04          	ld	a,(OFST+0,sp)
7606  0016 01            	rrwa	x,a
7607  0017 1a03          	or	a,(OFST-1,sp)
7608  0019 01            	rrwa	x,a
7610                     ; 1956   return (uint16_t)tmpccr2;
7614  001a 5b04          	addw	sp,#4
7615  001c 81            	ret	
7661                     ; 1964 uint16_t TIM1_GetCapture3(void)
7661                     ; 1965 {
7662                     .text:	section	.text,new
7663  0000               _TIM1_GetCapture3:
7665  0000 5204          	subw	sp,#4
7666       00000004      OFST:	set	4
7669                     ; 1967   uint16_t tmpccr3 = 0;
7671                     ; 1968   uint8_t tmpccr3l=0, tmpccr3h=0;
7675                     ; 1970   tmpccr3h = TIM1->CCR3H;
7677  0002 c65269        	ld	a,21097
7678  0005 6b02          	ld	(OFST-2,sp),a
7680                     ; 1971   tmpccr3l = TIM1->CCR3L;
7682  0007 c6526a        	ld	a,21098
7683  000a 6b01          	ld	(OFST-3,sp),a
7685                     ; 1973   tmpccr3 = (uint16_t)(tmpccr3l);
7687  000c 5f            	clrw	x
7688  000d 97            	ld	xl,a
7689  000e 1f03          	ldw	(OFST-1,sp),x
7691                     ; 1974   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
7693  0010 5f            	clrw	x
7694  0011 7b02          	ld	a,(OFST-2,sp)
7695  0013 97            	ld	xl,a
7696  0014 7b04          	ld	a,(OFST+0,sp)
7697  0016 01            	rrwa	x,a
7698  0017 1a03          	or	a,(OFST-1,sp)
7699  0019 01            	rrwa	x,a
7701                     ; 1976   return (uint16_t)tmpccr3;
7705  001a 5b04          	addw	sp,#4
7706  001c 81            	ret	
7752                     ; 1984 uint16_t TIM1_GetCapture4(void)
7752                     ; 1985 {
7753                     .text:	section	.text,new
7754  0000               _TIM1_GetCapture4:
7756  0000 5204          	subw	sp,#4
7757       00000004      OFST:	set	4
7760                     ; 1987   uint16_t tmpccr4 = 0;
7762                     ; 1988   uint8_t tmpccr4l=0, tmpccr4h=0;
7766                     ; 1990   tmpccr4h = TIM1->CCR4H;
7768  0002 c6526b        	ld	a,21099
7769  0005 6b02          	ld	(OFST-2,sp),a
7771                     ; 1991   tmpccr4l = TIM1->CCR4L;
7773  0007 c6526c        	ld	a,21100
7774  000a 6b01          	ld	(OFST-3,sp),a
7776                     ; 1993   tmpccr4 = (uint16_t)(tmpccr4l);
7778  000c 5f            	clrw	x
7779  000d 97            	ld	xl,a
7780  000e 1f03          	ldw	(OFST-1,sp),x
7782                     ; 1994   tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
7784  0010 5f            	clrw	x
7785  0011 7b02          	ld	a,(OFST-2,sp)
7786  0013 97            	ld	xl,a
7787  0014 7b04          	ld	a,(OFST+0,sp)
7788  0016 01            	rrwa	x,a
7789  0017 1a03          	or	a,(OFST-1,sp)
7790  0019 01            	rrwa	x,a
7792                     ; 1996   return (uint16_t)tmpccr4;
7796  001a 5b04          	addw	sp,#4
7797  001c 81            	ret	
7829                     ; 2004 uint16_t TIM1_GetCounter(void)
7829                     ; 2005 {
7830                     .text:	section	.text,new
7831  0000               _TIM1_GetCounter:
7833  0000 89            	pushw	x
7834       00000002      OFST:	set	2
7837                     ; 2006   uint16_t tmpcntr = 0;
7839                     ; 2008   tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
7841  0001 c6525e        	ld	a,21086
7842  0004 97            	ld	xl,a
7843  0005 4f            	clr	a
7844  0006 02            	rlwa	x,a
7845  0007 1f01          	ldw	(OFST-1,sp),x
7847                     ; 2011   return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
7849  0009 c6525f        	ld	a,21087
7850  000c 5f            	clrw	x
7851  000d 97            	ld	xl,a
7852  000e 01            	rrwa	x,a
7853  000f 1a02          	or	a,(OFST+0,sp)
7854  0011 01            	rrwa	x,a
7855  0012 1a01          	or	a,(OFST-1,sp)
7856  0014 01            	rrwa	x,a
7859  0015 5b02          	addw	sp,#2
7860  0017 81            	ret	
7892                     ; 2019 uint16_t TIM1_GetPrescaler(void)
7892                     ; 2020 {
7893                     .text:	section	.text,new
7894  0000               _TIM1_GetPrescaler:
7896  0000 89            	pushw	x
7897       00000002      OFST:	set	2
7900                     ; 2021   uint16_t temp = 0;
7902                     ; 2023   temp = ((uint16_t)TIM1->PSCRH << 8);
7904  0001 c65260        	ld	a,21088
7905  0004 97            	ld	xl,a
7906  0005 4f            	clr	a
7907  0006 02            	rlwa	x,a
7908  0007 1f01          	ldw	(OFST-1,sp),x
7910                     ; 2026   return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
7912  0009 c65261        	ld	a,21089
7913  000c 5f            	clrw	x
7914  000d 97            	ld	xl,a
7915  000e 01            	rrwa	x,a
7916  000f 1a02          	or	a,(OFST+0,sp)
7917  0011 01            	rrwa	x,a
7918  0012 1a01          	or	a,(OFST-1,sp)
7919  0014 01            	rrwa	x,a
7922  0015 5b02          	addw	sp,#2
7923  0017 81            	ret	
8094                     ; 2047 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
8094                     ; 2048 {
8095                     .text:	section	.text,new
8096  0000               _TIM1_GetFlagStatus:
8098  0000 89            	pushw	x
8099  0001 89            	pushw	x
8100       00000002      OFST:	set	2
8103                     ; 2049   FlagStatus bitstatus = RESET;
8105                     ; 2050   uint8_t tim1_flag_l = 0, tim1_flag_h = 0;
8109                     ; 2053   assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
8111  0002 a30001        	cpw	x,#1
8112  0005 2745          	jreq	L6071
8113  0007 a30002        	cpw	x,#2
8114  000a 2740          	jreq	L6071
8115  000c a30004        	cpw	x,#4
8116  000f 273b          	jreq	L6071
8117  0011 a30008        	cpw	x,#8
8118  0014 2736          	jreq	L6071
8119  0016 a30010        	cpw	x,#16
8120  0019 2731          	jreq	L6071
8121  001b a30020        	cpw	x,#32
8122  001e 272c          	jreq	L6071
8123  0020 a30040        	cpw	x,#64
8124  0023 2727          	jreq	L6071
8125  0025 a30080        	cpw	x,#128
8126  0028 2722          	jreq	L6071
8127  002a a30200        	cpw	x,#512
8128  002d 271d          	jreq	L6071
8129  002f a30400        	cpw	x,#1024
8130  0032 2718          	jreq	L6071
8131  0034 a30800        	cpw	x,#2048
8132  0037 2713          	jreq	L6071
8133  0039 a31000        	cpw	x,#4096
8134  003c 270e          	jreq	L6071
8135  003e ae0805        	ldw	x,#2053
8136  0041 89            	pushw	x
8137  0042 5f            	clrw	x
8138  0043 89            	pushw	x
8139  0044 ae0000        	ldw	x,#L37
8140  0047 cd0000        	call	_assert_failed
8142  004a 5b04          	addw	sp,#4
8143  004c               L6071:
8144                     ; 2055   tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
8146  004c c65255        	ld	a,21077
8147  004f 1404          	and	a,(OFST+2,sp)
8148  0051 6b01          	ld	(OFST-1,sp),a
8150                     ; 2056   tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
8152  0053 7b03          	ld	a,(OFST+1,sp)
8153  0055 6b02          	ld	(OFST+0,sp),a
8155                     ; 2058   if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
8157  0057 c45256        	and	a,21078
8158  005a 1a01          	or	a,(OFST-1,sp)
8159  005c 2702          	jreq	L1533
8160                     ; 2060     bitstatus = SET;
8162  005e a601          	ld	a,#1
8165  0060               L1533:
8166                     ; 2064     bitstatus = RESET;
8169                     ; 2066   return (FlagStatus)(bitstatus);
8173  0060 5b04          	addw	sp,#4
8174  0062 81            	ret	
8210                     ; 2087 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
8210                     ; 2088 {
8211                     .text:	section	.text,new
8212  0000               _TIM1_ClearFlag:
8214  0000 89            	pushw	x
8215       00000000      OFST:	set	0
8218                     ; 2090   assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
8220  0001 01            	rrwa	x,a
8221  0002 9f            	ld	a,xl
8222  0003 a4e1          	and	a,#225
8223  0005 97            	ld	xl,a
8224  0006 4f            	clr	a
8225  0007 02            	rlwa	x,a
8226  0008 5d            	tnzw	x
8227  0009 2604          	jrne	L4171
8228  000b 1e01          	ldw	x,(OFST+1,sp)
8229  000d 260e          	jrne	L6171
8230  000f               L4171:
8231  000f ae082a        	ldw	x,#2090
8232  0012 89            	pushw	x
8233  0013 5f            	clrw	x
8234  0014 89            	pushw	x
8235  0015 ae0000        	ldw	x,#L37
8236  0018 cd0000        	call	_assert_failed
8238  001b 5b04          	addw	sp,#4
8239  001d               L6171:
8240                     ; 2093   TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
8242  001d 7b02          	ld	a,(OFST+2,sp)
8243  001f 43            	cpl	a
8244  0020 c75255        	ld	21077,a
8245                     ; 2094   TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
8245                     ; 2095                         (uint8_t)0x1E);
8247  0023 7b01          	ld	a,(OFST+1,sp)
8248  0025 43            	cpl	a
8249  0026 a41e          	and	a,#30
8250  0028 c75256        	ld	21078,a
8251                     ; 2096 }
8254  002b 85            	popw	x
8255  002c 81            	ret	
8316                     ; 2112 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
8316                     ; 2113 {
8317                     .text:	section	.text,new
8318  0000               _TIM1_GetITStatus:
8320  0000 88            	push	a
8321  0001 89            	pushw	x
8322       00000002      OFST:	set	2
8325                     ; 2114   ITStatus bitstatus = RESET;
8327                     ; 2115   uint8_t TIM1_itStatus = 0, TIM1_itEnable = 0;
8331                     ; 2118   assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
8333  0002 a101          	cp	a,#1
8334  0004 272a          	jreq	L0371
8335  0006 a102          	cp	a,#2
8336  0008 2726          	jreq	L0371
8337  000a a104          	cp	a,#4
8338  000c 2722          	jreq	L0371
8339  000e a108          	cp	a,#8
8340  0010 271e          	jreq	L0371
8341  0012 a110          	cp	a,#16
8342  0014 271a          	jreq	L0371
8343  0016 a120          	cp	a,#32
8344  0018 2716          	jreq	L0371
8345  001a a140          	cp	a,#64
8346  001c 2712          	jreq	L0371
8347  001e a180          	cp	a,#128
8348  0020 270e          	jreq	L0371
8349  0022 ae0846        	ldw	x,#2118
8350  0025 89            	pushw	x
8351  0026 5f            	clrw	x
8352  0027 89            	pushw	x
8353  0028 ae0000        	ldw	x,#L37
8354  002b cd0000        	call	_assert_failed
8356  002e 5b04          	addw	sp,#4
8357  0030               L0371:
8358                     ; 2120   TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
8360  0030 c65255        	ld	a,21077
8361  0033 1403          	and	a,(OFST+1,sp)
8362  0035 6b01          	ld	(OFST-1,sp),a
8364                     ; 2122   TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
8366  0037 c65254        	ld	a,21076
8367  003a 1403          	and	a,(OFST+1,sp)
8368  003c 6b02          	ld	(OFST+0,sp),a
8370                     ; 2124   if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
8372  003e 7b01          	ld	a,(OFST-1,sp)
8373  0040 2708          	jreq	L1243
8375  0042 7b02          	ld	a,(OFST+0,sp)
8376  0044 2704          	jreq	L1243
8377                     ; 2126     bitstatus = SET;
8379  0046 a601          	ld	a,#1
8382  0048 2001          	jra	L3243
8383  004a               L1243:
8384                     ; 2130     bitstatus = RESET;
8386  004a 4f            	clr	a
8388  004b               L3243:
8389                     ; 2132   return (ITStatus)(bitstatus);
8393  004b 5b03          	addw	sp,#3
8394  004d 81            	ret	
8431                     ; 2149 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
8431                     ; 2150 {
8432                     .text:	section	.text,new
8433  0000               _TIM1_ClearITPendingBit:
8435  0000 88            	push	a
8436       00000000      OFST:	set	0
8439                     ; 2152   assert_param(IS_TIM1_IT_OK(TIM1_IT));
8441  0001 4d            	tnz	a
8442  0002 260e          	jrne	L0471
8443  0004 ae0868        	ldw	x,#2152
8444  0007 89            	pushw	x
8445  0008 5f            	clrw	x
8446  0009 89            	pushw	x
8447  000a ae0000        	ldw	x,#L37
8448  000d cd0000        	call	_assert_failed
8450  0010 5b04          	addw	sp,#4
8451  0012               L0471:
8452                     ; 2155   TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
8454  0012 7b01          	ld	a,(OFST+1,sp)
8455  0014 43            	cpl	a
8456  0015 c75255        	ld	21077,a
8457                     ; 2156 }
8460  0018 84            	pop	a
8461  0019 81            	ret	
8507                     ; 2174 static void TI1_Config(uint8_t TIM1_ICPolarity,
8507                     ; 2175                        uint8_t TIM1_ICSelection,
8507                     ; 2176                        uint8_t TIM1_ICFilter)
8507                     ; 2177 {
8508                     .text:	section	.text,new
8509  0000               L3_TI1_Config:
8511  0000 89            	pushw	x
8512  0001 88            	push	a
8513       00000001      OFST:	set	1
8516                     ; 2179   TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
8518  0002 7211525c      	bres	21084,#0
8519                     ; 2182   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
8519                     ; 2183                           (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8521  0006 7b06          	ld	a,(OFST+5,sp)
8522  0008 97            	ld	xl,a
8523  0009 a610          	ld	a,#16
8524  000b 42            	mul	x,a
8525  000c 9f            	ld	a,xl
8526  000d 1a03          	or	a,(OFST+2,sp)
8527  000f 6b01          	ld	(OFST+0,sp),a
8529  0011 c65258        	ld	a,21080
8530  0014 a40c          	and	a,#12
8531  0016 1a01          	or	a,(OFST+0,sp)
8532  0018 c75258        	ld	21080,a
8533                     ; 2186   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8535  001b 7b02          	ld	a,(OFST+1,sp)
8536  001d 2706          	jreq	L3643
8537                     ; 2188     TIM1->CCER1 |= TIM1_CCER1_CC1P;
8539  001f 7212525c      	bset	21084,#1
8541  0023 2004          	jra	L5643
8542  0025               L3643:
8543                     ; 2192     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
8545  0025 7213525c      	bres	21084,#1
8546  0029               L5643:
8547                     ; 2196   TIM1->CCER1 |=  TIM1_CCER1_CC1E;
8549  0029 7210525c      	bset	21084,#0
8550                     ; 2197 }
8553  002d 5b03          	addw	sp,#3
8554  002f 81            	ret	
8600                     ; 2215 static void TI2_Config(uint8_t TIM1_ICPolarity,
8600                     ; 2216                        uint8_t TIM1_ICSelection,
8600                     ; 2217                        uint8_t TIM1_ICFilter)
8600                     ; 2218 {
8601                     .text:	section	.text,new
8602  0000               L5_TI2_Config:
8604  0000 89            	pushw	x
8605  0001 88            	push	a
8606       00000001      OFST:	set	1
8609                     ; 2220   TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
8611  0002 7219525c      	bres	21084,#4
8612                     ; 2223   TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
8612                     ; 2224                            | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8614  0006 7b06          	ld	a,(OFST+5,sp)
8615  0008 97            	ld	xl,a
8616  0009 a610          	ld	a,#16
8617  000b 42            	mul	x,a
8618  000c 9f            	ld	a,xl
8619  000d 1a03          	or	a,(OFST+2,sp)
8620  000f 6b01          	ld	(OFST+0,sp),a
8622  0011 c65259        	ld	a,21081
8623  0014 a40c          	and	a,#12
8624  0016 1a01          	or	a,(OFST+0,sp)
8625  0018 c75259        	ld	21081,a
8626                     ; 2226   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8628  001b 7b02          	ld	a,(OFST+1,sp)
8629  001d 2706          	jreq	L7053
8630                     ; 2228     TIM1->CCER1 |= TIM1_CCER1_CC2P;
8632  001f 721a525c      	bset	21084,#5
8634  0023 2004          	jra	L1153
8635  0025               L7053:
8636                     ; 2232     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
8638  0025 721b525c      	bres	21084,#5
8639  0029               L1153:
8640                     ; 2235   TIM1->CCER1 |=  TIM1_CCER1_CC2E;
8642  0029 7218525c      	bset	21084,#4
8643                     ; 2236 }
8646  002d 5b03          	addw	sp,#3
8647  002f 81            	ret	
8693                     ; 2254 static void TI3_Config(uint8_t TIM1_ICPolarity,
8693                     ; 2255                        uint8_t TIM1_ICSelection,
8693                     ; 2256                        uint8_t TIM1_ICFilter)
8693                     ; 2257 {
8694                     .text:	section	.text,new
8695  0000               L7_TI3_Config:
8697  0000 89            	pushw	x
8698  0001 88            	push	a
8699       00000001      OFST:	set	1
8702                     ; 2259   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
8704  0002 7211525d      	bres	21085,#0
8705                     ; 2262   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
8705                     ; 2263                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8707  0006 7b06          	ld	a,(OFST+5,sp)
8708  0008 97            	ld	xl,a
8709  0009 a610          	ld	a,#16
8710  000b 42            	mul	x,a
8711  000c 9f            	ld	a,xl
8712  000d 1a03          	or	a,(OFST+2,sp)
8713  000f 6b01          	ld	(OFST+0,sp),a
8715  0011 c6525a        	ld	a,21082
8716  0014 a40c          	and	a,#12
8717  0016 1a01          	or	a,(OFST+0,sp)
8718  0018 c7525a        	ld	21082,a
8719                     ; 2266   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8721  001b 7b02          	ld	a,(OFST+1,sp)
8722  001d 2706          	jreq	L3353
8723                     ; 2268     TIM1->CCER2 |= TIM1_CCER2_CC3P;
8725  001f 7212525d      	bset	21085,#1
8727  0023 2004          	jra	L5353
8728  0025               L3353:
8729                     ; 2272     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
8731  0025 7213525d      	bres	21085,#1
8732  0029               L5353:
8733                     ; 2275   TIM1->CCER2 |=  TIM1_CCER2_CC3E;
8735  0029 7210525d      	bset	21085,#0
8736                     ; 2276 }
8739  002d 5b03          	addw	sp,#3
8740  002f 81            	ret	
8786                     ; 2294 static void TI4_Config(uint8_t TIM1_ICPolarity,
8786                     ; 2295                        uint8_t TIM1_ICSelection,
8786                     ; 2296                        uint8_t TIM1_ICFilter)
8786                     ; 2297 {
8787                     .text:	section	.text,new
8788  0000               L11_TI4_Config:
8790  0000 89            	pushw	x
8791  0001 88            	push	a
8792       00000001      OFST:	set	1
8795                     ; 2299   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
8797  0002 7219525d      	bres	21085,#4
8798                     ; 2302   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
8798                     ; 2303                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8800  0006 7b06          	ld	a,(OFST+5,sp)
8801  0008 97            	ld	xl,a
8802  0009 a610          	ld	a,#16
8803  000b 42            	mul	x,a
8804  000c 9f            	ld	a,xl
8805  000d 1a03          	or	a,(OFST+2,sp)
8806  000f 6b01          	ld	(OFST+0,sp),a
8808  0011 c6525b        	ld	a,21083
8809  0014 a40c          	and	a,#12
8810  0016 1a01          	or	a,(OFST+0,sp)
8811  0018 c7525b        	ld	21083,a
8812                     ; 2306   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8814  001b 7b02          	ld	a,(OFST+1,sp)
8815  001d 2706          	jreq	L7553
8816                     ; 2308     TIM1->CCER2 |= TIM1_CCER2_CC4P;
8818  001f 721a525d      	bset	21085,#5
8820  0023 2004          	jra	L1653
8821  0025               L7553:
8822                     ; 2312     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
8824  0025 721b525d      	bres	21085,#5
8825  0029               L1653:
8826                     ; 2316   TIM1->CCER2 |=  TIM1_CCER2_CC4E;
8828  0029 7218525d      	bset	21085,#4
8829                     ; 2317 }
8832  002d 5b03          	addw	sp,#3
8833  002f 81            	ret	
8846                     	xdef	_TIM1_ClearITPendingBit
8847                     	xdef	_TIM1_GetITStatus
8848                     	xdef	_TIM1_ClearFlag
8849                     	xdef	_TIM1_GetFlagStatus
8850                     	xdef	_TIM1_GetPrescaler
8851                     	xdef	_TIM1_GetCounter
8852                     	xdef	_TIM1_GetCapture4
8853                     	xdef	_TIM1_GetCapture3
8854                     	xdef	_TIM1_GetCapture2
8855                     	xdef	_TIM1_GetCapture1
8856                     	xdef	_TIM1_SetIC4Prescaler
8857                     	xdef	_TIM1_SetIC3Prescaler
8858                     	xdef	_TIM1_SetIC2Prescaler
8859                     	xdef	_TIM1_SetIC1Prescaler
8860                     	xdef	_TIM1_SetCompare4
8861                     	xdef	_TIM1_SetCompare3
8862                     	xdef	_TIM1_SetCompare2
8863                     	xdef	_TIM1_SetCompare1
8864                     	xdef	_TIM1_SetAutoreload
8865                     	xdef	_TIM1_SetCounter
8866                     	xdef	_TIM1_SelectOCxM
8867                     	xdef	_TIM1_CCxNCmd
8868                     	xdef	_TIM1_CCxCmd
8869                     	xdef	_TIM1_OC4PolarityConfig
8870                     	xdef	_TIM1_OC3NPolarityConfig
8871                     	xdef	_TIM1_OC3PolarityConfig
8872                     	xdef	_TIM1_OC2NPolarityConfig
8873                     	xdef	_TIM1_OC2PolarityConfig
8874                     	xdef	_TIM1_OC1NPolarityConfig
8875                     	xdef	_TIM1_OC1PolarityConfig
8876                     	xdef	_TIM1_GenerateEvent
8877                     	xdef	_TIM1_OC4FastConfig
8878                     	xdef	_TIM1_OC3FastConfig
8879                     	xdef	_TIM1_OC2FastConfig
8880                     	xdef	_TIM1_OC1FastConfig
8881                     	xdef	_TIM1_OC4PreloadConfig
8882                     	xdef	_TIM1_OC3PreloadConfig
8883                     	xdef	_TIM1_OC2PreloadConfig
8884                     	xdef	_TIM1_OC1PreloadConfig
8885                     	xdef	_TIM1_CCPreloadControl
8886                     	xdef	_TIM1_SelectCOM
8887                     	xdef	_TIM1_ARRPreloadConfig
8888                     	xdef	_TIM1_ForcedOC4Config
8889                     	xdef	_TIM1_ForcedOC3Config
8890                     	xdef	_TIM1_ForcedOC2Config
8891                     	xdef	_TIM1_ForcedOC1Config
8892                     	xdef	_TIM1_CounterModeConfig
8893                     	xdef	_TIM1_PrescalerConfig
8894                     	xdef	_TIM1_EncoderInterfaceConfig
8895                     	xdef	_TIM1_SelectMasterSlaveMode
8896                     	xdef	_TIM1_SelectSlaveMode
8897                     	xdef	_TIM1_SelectOutputTrigger
8898                     	xdef	_TIM1_SelectOnePulseMode
8899                     	xdef	_TIM1_SelectHallSensor
8900                     	xdef	_TIM1_UpdateRequestConfig
8901                     	xdef	_TIM1_UpdateDisableConfig
8902                     	xdef	_TIM1_SelectInputTrigger
8903                     	xdef	_TIM1_TIxExternalClockConfig
8904                     	xdef	_TIM1_ETRConfig
8905                     	xdef	_TIM1_ETRClockMode2Config
8906                     	xdef	_TIM1_ETRClockMode1Config
8907                     	xdef	_TIM1_InternalClockConfig
8908                     	xdef	_TIM1_ITConfig
8909                     	xdef	_TIM1_CtrlPWMOutputs
8910                     	xdef	_TIM1_Cmd
8911                     	xdef	_TIM1_PWMIConfig
8912                     	xdef	_TIM1_ICInit
8913                     	xdef	_TIM1_BDTRConfig
8914                     	xdef	_TIM1_OC4Init
8915                     	xdef	_TIM1_OC3Init
8916                     	xdef	_TIM1_OC2Init
8917                     	xdef	_TIM1_OC1Init
8918                     	xdef	_TIM1_TimeBaseInit
8919                     	xdef	_TIM1_DeInit
8920                     	xref	_assert_failed
8921                     .const:	section	.text
8922  0000               L37:
8923  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
8924  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
8925  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
8926  0036 5f74696d312e  	dc.b	"_tim1.c",0
8946                     	end
