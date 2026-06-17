   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
   4                     ; Optimizer V4.5.6 - 18 Jul 2023
  22                     .const:	section	.text
  23  0000               _HSIDivFactor:
  24  0000 01            	dc.b	1
  25  0001 02            	dc.b	2
  26  0002 04            	dc.b	4
  27  0003 08            	dc.b	8
  28  0004               _CLKPrescTable:
  29  0004 01            	dc.b	1
  30  0005 02            	dc.b	2
  31  0006 04            	dc.b	4
  32  0007 08            	dc.b	8
  33  0008 0a            	dc.b	10
  34  0009 10            	dc.b	16
  35  000a 14            	dc.b	20
  36  000b 28            	dc.b	40
  65                     ; 72 void CLK_DeInit(void)
  65                     ; 73 {
  67                     .text:	section	.text,new
  68  0000               _CLK_DeInit:
  72                     ; 74   CLK->ICKR = CLK_ICKR_RESET_VALUE;
  74  0000 350150c0      	mov	20672,#1
  75                     ; 75   CLK->ECKR = CLK_ECKR_RESET_VALUE;
  77  0004 725f50c1      	clr	20673
  78                     ; 76   CLK->SWR  = CLK_SWR_RESET_VALUE;
  80  0008 35e150c4      	mov	20676,#225
  81                     ; 77   CLK->SWCR = CLK_SWCR_RESET_VALUE;
  83  000c 725f50c5      	clr	20677
  84                     ; 78   CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  86  0010 351850c6      	mov	20678,#24
  87                     ; 79   CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  89  0014 35ff50c7      	mov	20679,#255
  90                     ; 80   CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  92  0018 35ff50ca      	mov	20682,#255
  93                     ; 81   CLK->CSSR = CLK_CSSR_RESET_VALUE;
  95  001c 725f50c8      	clr	20680
  96                     ; 82   CLK->CCOR = CLK_CCOR_RESET_VALUE;
  98  0020 725f50c9      	clr	20681
 100  0024               L52:
 101                     ; 83   while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
 103  0024 720050c9fb    	btjt	20681,#0,L52
 104                     ; 85   CLK->CCOR = CLK_CCOR_RESET_VALUE;
 106  0029 725f50c9      	clr	20681
 107                     ; 86   CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
 109  002d 725f50cc      	clr	20684
 110                     ; 87   CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
 112  0031 725f50cd      	clr	20685
 113                     ; 88 }
 116  0035 81            	ret	
 173                     ; 99 void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
 173                     ; 100 {
 174                     .text:	section	.text,new
 175  0000               _CLK_FastHaltWakeUpCmd:
 177  0000 88            	push	a
 178       00000000      OFST:	set	0
 181                     ; 102   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 183  0001 4d            	tnz	a
 184  0002 2711          	jreq	L41
 185  0004 4a            	dec	a
 186  0005 270e          	jreq	L41
 187  0007 ae0066        	ldw	x,#102
 188  000a 89            	pushw	x
 189  000b 5f            	clrw	x
 190  000c 89            	pushw	x
 191  000d ae000c        	ldw	x,#L75
 192  0010 cd0000        	call	_assert_failed
 194  0013 5b04          	addw	sp,#4
 195  0015               L41:
 196                     ; 104   if (NewState != DISABLE)
 198  0015 7b01          	ld	a,(OFST+1,sp)
 199  0017 2706          	jreq	L16
 200                     ; 107     CLK->ICKR |= CLK_ICKR_FHWU;
 202  0019 721450c0      	bset	20672,#2
 204  001d 2004          	jra	L36
 205  001f               L16:
 206                     ; 112     CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
 208  001f 721550c0      	bres	20672,#2
 209  0023               L36:
 210                     ; 114 }
 213  0023 84            	pop	a
 214  0024 81            	ret	
 250                     ; 121 void CLK_HSECmd(FunctionalState NewState)
 250                     ; 122 {
 251                     .text:	section	.text,new
 252  0000               _CLK_HSECmd:
 254  0000 88            	push	a
 255       00000000      OFST:	set	0
 258                     ; 124   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 260  0001 4d            	tnz	a
 261  0002 2711          	jreq	L62
 262  0004 4a            	dec	a
 263  0005 270e          	jreq	L62
 264  0007 ae007c        	ldw	x,#124
 265  000a 89            	pushw	x
 266  000b 5f            	clrw	x
 267  000c 89            	pushw	x
 268  000d ae000c        	ldw	x,#L75
 269  0010 cd0000        	call	_assert_failed
 271  0013 5b04          	addw	sp,#4
 272  0015               L62:
 273                     ; 126   if (NewState != DISABLE)
 275  0015 7b01          	ld	a,(OFST+1,sp)
 276  0017 2706          	jreq	L301
 277                     ; 129     CLK->ECKR |= CLK_ECKR_HSEEN;
 279  0019 721050c1      	bset	20673,#0
 281  001d 2004          	jra	L501
 282  001f               L301:
 283                     ; 134     CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
 285  001f 721150c1      	bres	20673,#0
 286  0023               L501:
 287                     ; 136 }
 290  0023 84            	pop	a
 291  0024 81            	ret	
 327                     ; 143 void CLK_HSICmd(FunctionalState NewState)
 327                     ; 144 {
 328                     .text:	section	.text,new
 329  0000               _CLK_HSICmd:
 331  0000 88            	push	a
 332       00000000      OFST:	set	0
 335                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 337  0001 4d            	tnz	a
 338  0002 2711          	jreq	L04
 339  0004 4a            	dec	a
 340  0005 270e          	jreq	L04
 341  0007 ae0092        	ldw	x,#146
 342  000a 89            	pushw	x
 343  000b 5f            	clrw	x
 344  000c 89            	pushw	x
 345  000d ae000c        	ldw	x,#L75
 346  0010 cd0000        	call	_assert_failed
 348  0013 5b04          	addw	sp,#4
 349  0015               L04:
 350                     ; 148   if (NewState != DISABLE)
 352  0015 7b01          	ld	a,(OFST+1,sp)
 353  0017 2706          	jreq	L521
 354                     ; 151     CLK->ICKR |= CLK_ICKR_HSIEN;
 356  0019 721050c0      	bset	20672,#0
 358  001d 2004          	jra	L721
 359  001f               L521:
 360                     ; 156     CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
 362  001f 721150c0      	bres	20672,#0
 363  0023               L721:
 364                     ; 158 }
 367  0023 84            	pop	a
 368  0024 81            	ret	
 404                     ; 166 void CLK_LSICmd(FunctionalState NewState)
 404                     ; 167 {
 405                     .text:	section	.text,new
 406  0000               _CLK_LSICmd:
 408  0000 88            	push	a
 409       00000000      OFST:	set	0
 412                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 414  0001 4d            	tnz	a
 415  0002 2711          	jreq	L25
 416  0004 4a            	dec	a
 417  0005 270e          	jreq	L25
 418  0007 ae00a9        	ldw	x,#169
 419  000a 89            	pushw	x
 420  000b 5f            	clrw	x
 421  000c 89            	pushw	x
 422  000d ae000c        	ldw	x,#L75
 423  0010 cd0000        	call	_assert_failed
 425  0013 5b04          	addw	sp,#4
 426  0015               L25:
 427                     ; 171   if (NewState != DISABLE)
 429  0015 7b01          	ld	a,(OFST+1,sp)
 430  0017 2706          	jreq	L741
 431                     ; 174     CLK->ICKR |= CLK_ICKR_LSIEN;
 433  0019 721650c0      	bset	20672,#3
 435  001d 2004          	jra	L151
 436  001f               L741:
 437                     ; 179     CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
 439  001f 721750c0      	bres	20672,#3
 440  0023               L151:
 441                     ; 181 }
 444  0023 84            	pop	a
 445  0024 81            	ret	
 481                     ; 189 void CLK_CCOCmd(FunctionalState NewState)
 481                     ; 190 {
 482                     .text:	section	.text,new
 483  0000               _CLK_CCOCmd:
 485  0000 88            	push	a
 486       00000000      OFST:	set	0
 489                     ; 192   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 491  0001 4d            	tnz	a
 492  0002 2711          	jreq	L46
 493  0004 4a            	dec	a
 494  0005 270e          	jreq	L46
 495  0007 ae00c0        	ldw	x,#192
 496  000a 89            	pushw	x
 497  000b 5f            	clrw	x
 498  000c 89            	pushw	x
 499  000d ae000c        	ldw	x,#L75
 500  0010 cd0000        	call	_assert_failed
 502  0013 5b04          	addw	sp,#4
 503  0015               L46:
 504                     ; 194   if (NewState != DISABLE)
 506  0015 7b01          	ld	a,(OFST+1,sp)
 507  0017 2706          	jreq	L171
 508                     ; 197     CLK->CCOR |= CLK_CCOR_CCOEN;
 510  0019 721050c9      	bset	20681,#0
 512  001d 2004          	jra	L371
 513  001f               L171:
 514                     ; 202     CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
 516  001f 721150c9      	bres	20681,#0
 517  0023               L371:
 518                     ; 204 }
 521  0023 84            	pop	a
 522  0024 81            	ret	
 558                     ; 213 void CLK_ClockSwitchCmd(FunctionalState NewState)
 558                     ; 214 {
 559                     .text:	section	.text,new
 560  0000               _CLK_ClockSwitchCmd:
 562  0000 88            	push	a
 563       00000000      OFST:	set	0
 566                     ; 216   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 568  0001 4d            	tnz	a
 569  0002 2711          	jreq	L67
 570  0004 4a            	dec	a
 571  0005 270e          	jreq	L67
 572  0007 ae00d8        	ldw	x,#216
 573  000a 89            	pushw	x
 574  000b 5f            	clrw	x
 575  000c 89            	pushw	x
 576  000d ae000c        	ldw	x,#L75
 577  0010 cd0000        	call	_assert_failed
 579  0013 5b04          	addw	sp,#4
 580  0015               L67:
 581                     ; 218   if (NewState != DISABLE )
 583  0015 7b01          	ld	a,(OFST+1,sp)
 584  0017 2706          	jreq	L312
 585                     ; 221     CLK->SWCR |= CLK_SWCR_SWEN;
 587  0019 721250c5      	bset	20677,#1
 589  001d 2004          	jra	L512
 590  001f               L312:
 591                     ; 226     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
 593  001f 721350c5      	bres	20677,#1
 594  0023               L512:
 595                     ; 228 }
 598  0023 84            	pop	a
 599  0024 81            	ret	
 636                     ; 238 void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
 636                     ; 239 {
 637                     .text:	section	.text,new
 638  0000               _CLK_SlowActiveHaltWakeUpCmd:
 640  0000 88            	push	a
 641       00000000      OFST:	set	0
 644                     ; 241   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 646  0001 4d            	tnz	a
 647  0002 2711          	jreq	L011
 648  0004 4a            	dec	a
 649  0005 270e          	jreq	L011
 650  0007 ae00f1        	ldw	x,#241
 651  000a 89            	pushw	x
 652  000b 5f            	clrw	x
 653  000c 89            	pushw	x
 654  000d ae000c        	ldw	x,#L75
 655  0010 cd0000        	call	_assert_failed
 657  0013 5b04          	addw	sp,#4
 658  0015               L011:
 659                     ; 243   if (NewState != DISABLE)
 661  0015 7b01          	ld	a,(OFST+1,sp)
 662  0017 2706          	jreq	L532
 663                     ; 246     CLK->ICKR |= CLK_ICKR_SWUAH;
 665  0019 721a50c0      	bset	20672,#5
 667  001d 2004          	jra	L732
 668  001f               L532:
 669                     ; 251     CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
 671  001f 721b50c0      	bres	20672,#5
 672  0023               L732:
 673                     ; 253 }
 676  0023 84            	pop	a
 677  0024 81            	ret	
 837                     ; 263 void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
 837                     ; 264 {
 838                     .text:	section	.text,new
 839  0000               _CLK_PeripheralClockConfig:
 841  0000 89            	pushw	x
 842       00000000      OFST:	set	0
 845                     ; 266   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 847  0001 9f            	ld	a,xl
 848  0002 4d            	tnz	a
 849  0003 270a          	jreq	L221
 850  0005 9f            	ld	a,xl
 851  0006 4a            	dec	a
 852  0007 2706          	jreq	L221
 853  0009 ae010a        	ldw	x,#266
 854  000c cd0096        	call	LC004
 855  000f               L221:
 856                     ; 267   assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
 858  000f 7b01          	ld	a,(OFST+1,sp)
 859  0011 2733          	jreq	L231
 860  0013 a101          	cp	a,#1
 861  0015 272f          	jreq	L231
 862  0017 a103          	cp	a,#3
 863  0019 272b          	jreq	L231
 864  001b a102          	cp	a,#2
 865  001d 2727          	jreq	L231
 866  001f a104          	cp	a,#4
 867  0021 2723          	jreq	L231
 868  0023 a105          	cp	a,#5
 869  0025 271f          	jreq	L231
 870  0027 a104          	cp	a,#4
 871  0029 271b          	jreq	L231
 872  002b a106          	cp	a,#6
 873  002d 2717          	jreq	L231
 874  002f a107          	cp	a,#7
 875  0031 2713          	jreq	L231
 876  0033 a117          	cp	a,#23
 877  0035 270f          	jreq	L231
 878  0037 a113          	cp	a,#19
 879  0039 270b          	jreq	L231
 880  003b a112          	cp	a,#18
 881  003d 2707          	jreq	L231
 882  003f ae010b        	ldw	x,#267
 883  0042 ad52          	call	LC004
 884  0044 7b01          	ld	a,(OFST+1,sp)
 885  0046               L231:
 886                     ; 269   if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
 888  0046 a510          	bcp	a,#16
 889  0048 2622          	jrne	L323
 890                     ; 271     if (NewState != DISABLE)
 892  004a 0d02          	tnz	(OFST+2,sp)
 893  004c 270d          	jreq	L523
 894                     ; 274       CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 896  004e ad3e          	call	LC003
 897  0050 2704          	jreq	L631
 898  0052               L041:
 899  0052 48            	sll	a
 900  0053 5a            	decw	x
 901  0054 26fc          	jrne	L041
 902  0056               L631:
 903  0056 ca50c7        	or	a,20679
 905  0059 200c          	jp	LC002
 906  005b               L523:
 907                     ; 279       CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 909  005b ad31          	call	LC003
 910  005d 2704          	jreq	L241
 911  005f               L441:
 912  005f 48            	sll	a
 913  0060 5a            	decw	x
 914  0061 26fc          	jrne	L441
 915  0063               L241:
 916  0063 43            	cpl	a
 917  0064 c450c7        	and	a,20679
 918  0067               LC002:
 919  0067 c750c7        	ld	20679,a
 920  006a 2020          	jra	L133
 921  006c               L323:
 922                     ; 284     if (NewState != DISABLE)
 924  006c 0d02          	tnz	(OFST+2,sp)
 925  006e 270d          	jreq	L333
 926                     ; 287       CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 928  0070 ad1c          	call	LC003
 929  0072 2704          	jreq	L641
 930  0074               L051:
 931  0074 48            	sll	a
 932  0075 5a            	decw	x
 933  0076 26fc          	jrne	L051
 934  0078               L641:
 935  0078 ca50ca        	or	a,20682
 937  007b 200c          	jp	LC001
 938  007d               L333:
 939                     ; 292       CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 941  007d ad0f          	call	LC003
 942  007f 2704          	jreq	L251
 943  0081               L451:
 944  0081 48            	sll	a
 945  0082 5a            	decw	x
 946  0083 26fc          	jrne	L451
 947  0085               L251:
 948  0085 43            	cpl	a
 949  0086 c450ca        	and	a,20682
 950  0089               LC001:
 951  0089 c750ca        	ld	20682,a
 952  008c               L133:
 953                     ; 295 }
 956  008c 85            	popw	x
 957  008d 81            	ret	
 958  008e               LC003:
 959  008e a40f          	and	a,#15
 960  0090 5f            	clrw	x
 961  0091 97            	ld	xl,a
 962  0092 a601          	ld	a,#1
 963  0094 5d            	tnzw	x
 964  0095 81            	ret	
 965  0096               LC004:
 966  0096 89            	pushw	x
 967  0097 5f            	clrw	x
 968  0098 89            	pushw	x
 969  0099 ae000c        	ldw	x,#L75
 970  009c cd0000        	call	_assert_failed
 972  009f 5b04          	addw	sp,#4
 973  00a1 81            	ret	
1160                     ; 309 ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
1160                     ; 310 {
1161                     .text:	section	.text,new
1162  0000               _CLK_ClockSwitchConfig:
1164  0000 89            	pushw	x
1165  0001 5204          	subw	sp,#4
1166       00000004      OFST:	set	4
1169                     ; 312   uint16_t DownCounter = CLK_TIMEOUT;
1171  0003 aeffff        	ldw	x,#65535
1172  0006 1f03          	ldw	(OFST-1,sp),x
1174                     ; 313   ErrorStatus Swif = ERROR;
1176                     ; 316   assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
1178  0008 7b06          	ld	a,(OFST+2,sp)
1179  000a a1e1          	cp	a,#225
1180  000c 270e          	jreq	L461
1181  000e a1d2          	cp	a,#210
1182  0010 270a          	jreq	L461
1183  0012 a1b4          	cp	a,#180
1184  0014 2706          	jreq	L461
1185  0016 ae013c        	ldw	x,#316
1186  0019 cd00dc        	call	LC007
1187  001c               L461:
1188                     ; 317   assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
1190  001c 7b05          	ld	a,(OFST+1,sp)
1191  001e 2709          	jreq	L471
1192  0020 4a            	dec	a
1193  0021 2706          	jreq	L471
1194  0023 ae013d        	ldw	x,#317
1195  0026 cd00dc        	call	LC007
1196  0029               L471:
1197                     ; 318   assert_param(IS_FUNCTIONALSTATE_OK(ITState));
1199  0029 7b09          	ld	a,(OFST+5,sp)
1200  002b 2709          	jreq	L402
1201  002d 4a            	dec	a
1202  002e 2706          	jreq	L402
1203  0030 ae013e        	ldw	x,#318
1204  0033 cd00dc        	call	LC007
1205  0036               L402:
1206                     ; 319   assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
1208  0036 7b0a          	ld	a,(OFST+6,sp)
1209  0038 2709          	jreq	L412
1210  003a 4a            	dec	a
1211  003b 2706          	jreq	L412
1212  003d ae013f        	ldw	x,#319
1213  0040 cd00dc        	call	LC007
1214  0043               L412:
1215                     ; 322   clock_master = (CLK_Source_TypeDef)CLK->CMSR;
1217  0043 c650c3        	ld	a,20675
1218  0046 6b01          	ld	(OFST-3,sp),a
1220                     ; 325   if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
1222  0048 7b05          	ld	a,(OFST+1,sp)
1223  004a 4a            	dec	a
1224  004b 263d          	jrne	L544
1225                     ; 328     CLK->SWCR |= CLK_SWCR_SWEN;
1227  004d 721250c5      	bset	20677,#1
1228                     ; 331     if (ITState != DISABLE)
1230  0051 7b09          	ld	a,(OFST+5,sp)
1231  0053 2706          	jreq	L744
1232                     ; 333       CLK->SWCR |= CLK_SWCR_SWIEN;
1234  0055 721450c5      	bset	20677,#2
1236  0059 2004          	jra	L154
1237  005b               L744:
1238                     ; 337       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1240  005b 721550c5      	bres	20677,#2
1241  005f               L154:
1242                     ; 341     CLK->SWR = (uint8_t)CLK_NewClock;
1244  005f 7b06          	ld	a,(OFST+2,sp)
1245  0061 c750c4        	ld	20676,a
1247  0064 2003          	jra	L754
1248  0066               L354:
1249                     ; 346       DownCounter--;
1251  0066 5a            	decw	x
1252  0067 1f03          	ldw	(OFST-1,sp),x
1254  0069               L754:
1255                     ; 344     while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
1257  0069 720150c504    	btjf	20677,#0,L364
1259  006e 1e03          	ldw	x,(OFST-1,sp)
1260  0070 26f4          	jrne	L354
1261  0072               L364:
1262                     ; 349     if(DownCounter != 0)
1264  0072 1e03          	ldw	x,(OFST-1,sp)
1265                     ; 351       Swif = SUCCESS;
1267  0074 263d          	jrne	LC006
1268  0076               L564:
1269                     ; 355       Swif = ERROR;
1272  0076 0f02          	clr	(OFST-2,sp)
1274  0078               L174:
1275                     ; 390   if(Swif != ERROR)
1277  0078 275d          	jreq	L515
1278                     ; 393     if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
1280  007a 7b0a          	ld	a,(OFST+6,sp)
1281  007c 263b          	jrne	L715
1283  007e 7b01          	ld	a,(OFST-3,sp)
1284  0080 a1e1          	cp	a,#225
1285  0082 2635          	jrne	L715
1286                     ; 395       CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
1288  0084 721150c0      	bres	20672,#0
1290  0088 204d          	jra	L515
1291  008a               L544:
1292                     ; 361     if (ITState != DISABLE)
1294  008a 7b09          	ld	a,(OFST+5,sp)
1295  008c 2706          	jreq	L374
1296                     ; 363       CLK->SWCR |= CLK_SWCR_SWIEN;
1298  008e 721450c5      	bset	20677,#2
1300  0092 2004          	jra	L574
1301  0094               L374:
1302                     ; 367       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1304  0094 721550c5      	bres	20677,#2
1305  0098               L574:
1306                     ; 371     CLK->SWR = (uint8_t)CLK_NewClock;
1308  0098 7b06          	ld	a,(OFST+2,sp)
1309  009a c750c4        	ld	20676,a
1311  009d 2003          	jra	L305
1312  009f               L774:
1313                     ; 376       DownCounter--;
1315  009f 5a            	decw	x
1316  00a0 1f03          	ldw	(OFST-1,sp),x
1318  00a2               L305:
1319                     ; 374     while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
1321  00a2 720750c504    	btjf	20677,#3,L705
1323  00a7 1e03          	ldw	x,(OFST-1,sp)
1324  00a9 26f4          	jrne	L774
1325  00ab               L705:
1326                     ; 379     if(DownCounter != 0)
1328  00ab 1e03          	ldw	x,(OFST-1,sp)
1329  00ad 27c7          	jreq	L564
1330                     ; 382       CLK->SWCR |= CLK_SWCR_SWEN;
1332  00af 721250c5      	bset	20677,#1
1333                     ; 383       Swif = SUCCESS;
1335  00b3               LC006:
1337  00b3 a601          	ld	a,#1
1338  00b5 6b02          	ld	(OFST-2,sp),a
1341  00b7 20bf          	jra	L174
1342                     ; 387       Swif = ERROR;
1343  00b9               L715:
1344                     ; 397     else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
1346  00b9 7b0a          	ld	a,(OFST+6,sp)
1347  00bb 260c          	jrne	L325
1349  00bd 7b01          	ld	a,(OFST-3,sp)
1350  00bf a1d2          	cp	a,#210
1351  00c1 2606          	jrne	L325
1352                     ; 399       CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
1354  00c3 721750c0      	bres	20672,#3
1356  00c7 200e          	jra	L515
1357  00c9               L325:
1358                     ; 401     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
1360  00c9 7b0a          	ld	a,(OFST+6,sp)
1361  00cb 260a          	jrne	L515
1363  00cd 7b01          	ld	a,(OFST-3,sp)
1364  00cf a1b4          	cp	a,#180
1365  00d1 2604          	jrne	L515
1366                     ; 403       CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
1368  00d3 721150c1      	bres	20673,#0
1369  00d7               L515:
1370                     ; 406   return(Swif);
1372  00d7 7b02          	ld	a,(OFST-2,sp)
1375  00d9 5b06          	addw	sp,#6
1376  00db 81            	ret	
1377  00dc               LC007:
1378  00dc 89            	pushw	x
1379  00dd 5f            	clrw	x
1380  00de 89            	pushw	x
1381  00df ae000c        	ldw	x,#L75
1382  00e2 cd0000        	call	_assert_failed
1384  00e5 5b04          	addw	sp,#4
1385  00e7 81            	ret	
1524                     ; 415 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
1524                     ; 416 {
1525                     .text:	section	.text,new
1526  0000               _CLK_HSIPrescalerConfig:
1528  0000 88            	push	a
1529       00000000      OFST:	set	0
1532                     ; 418   assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
1534  0001 4d            	tnz	a
1535  0002 271a          	jreq	L622
1536  0004 a108          	cp	a,#8
1537  0006 2716          	jreq	L622
1538  0008 a110          	cp	a,#16
1539  000a 2712          	jreq	L622
1540  000c a118          	cp	a,#24
1541  000e 270e          	jreq	L622
1542  0010 ae01a2        	ldw	x,#418
1543  0013 89            	pushw	x
1544  0014 5f            	clrw	x
1545  0015 89            	pushw	x
1546  0016 ae000c        	ldw	x,#L75
1547  0019 cd0000        	call	_assert_failed
1549  001c 5b04          	addw	sp,#4
1550  001e               L622:
1551                     ; 421   CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1553  001e c650c6        	ld	a,20678
1554  0021 a4e7          	and	a,#231
1555  0023 c750c6        	ld	20678,a
1556                     ; 424   CLK->CKDIVR |= (uint8_t)HSIPrescaler;
1558  0026 c650c6        	ld	a,20678
1559  0029 1a01          	or	a,(OFST+1,sp)
1560  002b c750c6        	ld	20678,a
1561                     ; 425 }
1564  002e 84            	pop	a
1565  002f 81            	ret	
1701                     ; 436 void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
1701                     ; 437 {
1702                     .text:	section	.text,new
1703  0000               _CLK_CCOConfig:
1705  0000 88            	push	a
1706       00000000      OFST:	set	0
1709                     ; 439   assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
1711  0001 4d            	tnz	a
1712  0002 273e          	jreq	L042
1713  0004 a104          	cp	a,#4
1714  0006 273a          	jreq	L042
1715  0008 a102          	cp	a,#2
1716  000a 2736          	jreq	L042
1717  000c a108          	cp	a,#8
1718  000e 2732          	jreq	L042
1719  0010 a10a          	cp	a,#10
1720  0012 272e          	jreq	L042
1721  0014 a10c          	cp	a,#12
1722  0016 272a          	jreq	L042
1723  0018 a10e          	cp	a,#14
1724  001a 2726          	jreq	L042
1725  001c a110          	cp	a,#16
1726  001e 2722          	jreq	L042
1727  0020 a112          	cp	a,#18
1728  0022 271e          	jreq	L042
1729  0024 a114          	cp	a,#20
1730  0026 271a          	jreq	L042
1731  0028 a116          	cp	a,#22
1732  002a 2716          	jreq	L042
1733  002c a118          	cp	a,#24
1734  002e 2712          	jreq	L042
1735  0030 a11a          	cp	a,#26
1736  0032 270e          	jreq	L042
1737  0034 ae01b7        	ldw	x,#439
1738  0037 89            	pushw	x
1739  0038 5f            	clrw	x
1740  0039 89            	pushw	x
1741  003a ae000c        	ldw	x,#L75
1742  003d cd0000        	call	_assert_failed
1744  0040 5b04          	addw	sp,#4
1745  0042               L042:
1746                     ; 442   CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
1748  0042 c650c9        	ld	a,20681
1749  0045 a4e1          	and	a,#225
1750  0047 c750c9        	ld	20681,a
1751                     ; 445   CLK->CCOR |= (uint8_t)CLK_CCO;
1753  004a c650c9        	ld	a,20681
1754  004d 1a01          	or	a,(OFST+1,sp)
1755  004f c750c9        	ld	20681,a
1756                     ; 448   CLK->CCOR |= CLK_CCOR_CCOEN;
1758  0052 721050c9      	bset	20681,#0
1759                     ; 449 }
1762  0056 84            	pop	a
1763  0057 81            	ret	
1829                     ; 459 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
1829                     ; 460 {
1830                     .text:	section	.text,new
1831  0000               _CLK_ITConfig:
1833  0000 89            	pushw	x
1834       00000000      OFST:	set	0
1837                     ; 462   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1839  0001 9f            	ld	a,xl
1840  0002 4d            	tnz	a
1841  0003 2709          	jreq	L252
1842  0005 9f            	ld	a,xl
1843  0006 4a            	dec	a
1844  0007 2705          	jreq	L252
1845  0009 ae01ce        	ldw	x,#462
1846  000c ad3f          	call	LC008
1847  000e               L252:
1848                     ; 463   assert_param(IS_CLK_IT_OK(CLK_IT));
1850  000e 7b01          	ld	a,(OFST+1,sp)
1851  0010 a10c          	cp	a,#12
1852  0012 2709          	jreq	L262
1853  0014 a11c          	cp	a,#28
1854  0016 2705          	jreq	L262
1855  0018 ae01cf        	ldw	x,#463
1856  001b ad30          	call	LC008
1857  001d               L262:
1858                     ; 465   if (NewState != DISABLE)
1860  001d 7b02          	ld	a,(OFST+2,sp)
1861  001f 2716          	jreq	L527
1862                     ; 467     switch (CLK_IT)
1864  0021 7b01          	ld	a,(OFST+1,sp)
1866                     ; 475     default:
1866                     ; 476       break;
1867  0023 a00c          	sub	a,#12
1868  0025 270a          	jreq	L166
1869  0027 a010          	sub	a,#16
1870  0029 2620          	jrne	L337
1871                     ; 469     case CLK_IT_SWIF: /* Enable the clock switch interrupt */
1871                     ; 470       CLK->SWCR |= CLK_SWCR_SWIEN;
1873  002b 721450c5      	bset	20677,#2
1874                     ; 471       break;
1876  002f 201a          	jra	L337
1877  0031               L166:
1878                     ; 472     case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
1878                     ; 473       CLK->CSSR |= CLK_CSSR_CSSDIE;
1880  0031 721450c8      	bset	20680,#2
1881                     ; 474       break;
1883  0035 2014          	jra	L337
1884                     ; 475     default:
1884                     ; 476       break;
1887  0037               L527:
1888                     ; 481     switch (CLK_IT)
1890  0037 7b01          	ld	a,(OFST+1,sp)
1892                     ; 489     default:
1892                     ; 490       break;
1893  0039 a00c          	sub	a,#12
1894  003b 270a          	jreq	L766
1895  003d a010          	sub	a,#16
1896  003f 260a          	jrne	L337
1897                     ; 483     case CLK_IT_SWIF: /* Disable the clock switch interrupt */
1897                     ; 484       CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
1899  0041 721550c5      	bres	20677,#2
1900                     ; 485       break;
1902  0045 2004          	jra	L337
1903  0047               L766:
1904                     ; 486     case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
1904                     ; 487       CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
1906  0047 721550c8      	bres	20680,#2
1907                     ; 488       break;
1908  004b               L337:
1909                     ; 493 }
1912  004b 85            	popw	x
1913  004c 81            	ret	
1914                     ; 489     default:
1914                     ; 490       break;
1916  004d               LC008:
1917  004d 89            	pushw	x
1918  004e 5f            	clrw	x
1919  004f 89            	pushw	x
1920  0050 ae000c        	ldw	x,#L75
1921  0053 cd0000        	call	_assert_failed
1923  0056 5b04          	addw	sp,#4
1924  0058 81            	ret	
1960                     ; 500 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
1960                     ; 501 {
1961                     .text:	section	.text,new
1962  0000               _CLK_SYSCLKConfig:
1964  0000 88            	push	a
1965       00000000      OFST:	set	0
1968                     ; 503   assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
1970  0001 4d            	tnz	a
1971  0002 273a          	jreq	L472
1972  0004 a108          	cp	a,#8
1973  0006 2736          	jreq	L472
1974  0008 a110          	cp	a,#16
1975  000a 2732          	jreq	L472
1976  000c a118          	cp	a,#24
1977  000e 272e          	jreq	L472
1978  0010 a180          	cp	a,#128
1979  0012 272a          	jreq	L472
1980  0014 a181          	cp	a,#129
1981  0016 2726          	jreq	L472
1982  0018 a182          	cp	a,#130
1983  001a 2722          	jreq	L472
1984  001c a183          	cp	a,#131
1985  001e 271e          	jreq	L472
1986  0020 a184          	cp	a,#132
1987  0022 271a          	jreq	L472
1988  0024 a185          	cp	a,#133
1989  0026 2716          	jreq	L472
1990  0028 a186          	cp	a,#134
1991  002a 2712          	jreq	L472
1992  002c a187          	cp	a,#135
1993  002e 270e          	jreq	L472
1994  0030 ae01f7        	ldw	x,#503
1995  0033 89            	pushw	x
1996  0034 5f            	clrw	x
1997  0035 89            	pushw	x
1998  0036 ae000c        	ldw	x,#L75
1999  0039 cd0000        	call	_assert_failed
2001  003c 5b04          	addw	sp,#4
2002  003e               L472:
2003                     ; 505   if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
2005  003e 7b01          	ld	a,(OFST+1,sp)
2006  0040 2b0e          	jrmi	L757
2007                     ; 507     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
2009  0042 c650c6        	ld	a,20678
2010  0045 a4e7          	and	a,#231
2011  0047 c750c6        	ld	20678,a
2012                     ; 508     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
2014  004a 7b01          	ld	a,(OFST+1,sp)
2015  004c a418          	and	a,#24
2017  004e 200c          	jra	L167
2018  0050               L757:
2019                     ; 512     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
2021  0050 c650c6        	ld	a,20678
2022  0053 a4f8          	and	a,#248
2023  0055 c750c6        	ld	20678,a
2024                     ; 513     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
2026  0058 7b01          	ld	a,(OFST+1,sp)
2027  005a a407          	and	a,#7
2028  005c               L167:
2029  005c ca50c6        	or	a,20678
2030  005f c750c6        	ld	20678,a
2031                     ; 515 }
2034  0062 84            	pop	a
2035  0063 81            	ret	
2092                     ; 523 void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
2092                     ; 524 {
2093                     .text:	section	.text,new
2094  0000               _CLK_SWIMConfig:
2096  0000 88            	push	a
2097       00000000      OFST:	set	0
2100                     ; 526   assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
2102  0001 4d            	tnz	a
2103  0002 2711          	jreq	L603
2104  0004 4a            	dec	a
2105  0005 270e          	jreq	L603
2106  0007 ae020e        	ldw	x,#526
2107  000a 89            	pushw	x
2108  000b 5f            	clrw	x
2109  000c 89            	pushw	x
2110  000d ae000c        	ldw	x,#L75
2111  0010 cd0000        	call	_assert_failed
2113  0013 5b04          	addw	sp,#4
2114  0015               L603:
2115                     ; 528   if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
2117  0015 7b01          	ld	a,(OFST+1,sp)
2118  0017 2706          	jreq	L1101
2119                     ; 531     CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
2121  0019 721050cd      	bset	20685,#0
2123  001d 2004          	jra	L3101
2124  001f               L1101:
2125                     ; 536     CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
2127  001f 721150cd      	bres	20685,#0
2128  0023               L3101:
2129                     ; 538 }
2132  0023 84            	pop	a
2133  0024 81            	ret	
2157                     ; 547 void CLK_ClockSecuritySystemEnable(void)
2157                     ; 548 {
2158                     .text:	section	.text,new
2159  0000               _CLK_ClockSecuritySystemEnable:
2163                     ; 550   CLK->CSSR |= CLK_CSSR_CSSEN;
2165  0000 721050c8      	bset	20680,#0
2166                     ; 551 }
2169  0004 81            	ret	
2194                     ; 559 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
2194                     ; 560 {
2195                     .text:	section	.text,new
2196  0000               _CLK_GetSYSCLKSource:
2200                     ; 561   return((CLK_Source_TypeDef)CLK->CMSR);
2202  0000 c650c3        	ld	a,20675
2205  0003 81            	ret	
2262                     ; 569 uint32_t CLK_GetClockFreq(void)
2262                     ; 570 {
2263                     .text:	section	.text,new
2264  0000               _CLK_GetClockFreq:
2266  0000 5209          	subw	sp,#9
2267       00000009      OFST:	set	9
2270                     ; 571   uint32_t clockfrequency = 0;
2272                     ; 572   CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
2274                     ; 573   uint8_t tmp = 0, presc = 0;
2278                     ; 576   clocksource = (CLK_Source_TypeDef)CLK->CMSR;
2280  0002 c650c3        	ld	a,20675
2281  0005 6b09          	ld	(OFST+0,sp),a
2283                     ; 578   if (clocksource == CLK_SOURCE_HSI)
2285  0007 a1e1          	cp	a,#225
2286  0009 2634          	jrne	L1601
2287                     ; 580     tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
2289  000b c650c6        	ld	a,20678
2290  000e a418          	and	a,#24
2291  0010 44            	srl	a
2292  0011 44            	srl	a
2293  0012 44            	srl	a
2295                     ; 581     tmp = (uint8_t)(tmp >> 3);
2298                     ; 582     presc = HSIDivFactor[tmp];
2300  0013 5f            	clrw	x
2301  0014 97            	ld	xl,a
2302  0015 d60000        	ld	a,(_HSIDivFactor,x)
2303  0018 6b09          	ld	(OFST+0,sp),a
2305                     ; 583     clockfrequency = HSI_VALUE / presc;
2307  001a b703          	ld	c_lreg+3,a
2308  001c 3f02          	clr	c_lreg+2
2309  001e 3f01          	clr	c_lreg+1
2310  0020 3f00          	clr	c_lreg
2311  0022 96            	ldw	x,sp
2312  0023 5c            	incw	x
2313  0024 cd0000        	call	c_rtol
2316  0027 ae2400        	ldw	x,#9216
2317  002a bf02          	ldw	c_lreg+2,x
2318  002c ae00f4        	ldw	x,#244
2319  002f bf00          	ldw	c_lreg,x
2320  0031 96            	ldw	x,sp
2321  0032 5c            	incw	x
2322  0033 cd0000        	call	c_ludv
2324  0036 96            	ldw	x,sp
2325  0037 1c0005        	addw	x,#OFST-4
2326  003a cd0000        	call	c_rtol
2330  003d 2018          	jra	L3601
2331  003f               L1601:
2332                     ; 585   else if ( clocksource == CLK_SOURCE_LSI)
2334  003f a1d2          	cp	a,#210
2335  0041 260a          	jrne	L5601
2336                     ; 587     clockfrequency = LSI_VALUE;
2338  0043 aef400        	ldw	x,#62464
2339  0046 1f07          	ldw	(OFST-2,sp),x
2340  0048 ae0001        	ldw	x,#1
2342  004b 2008          	jp	LC009
2343  004d               L5601:
2344                     ; 591     clockfrequency = HSE_VALUE;
2346  004d ae3600        	ldw	x,#13824
2347  0050 1f07          	ldw	(OFST-2,sp),x
2348  0052 ae016e        	ldw	x,#366
2349  0055               LC009:
2350  0055 1f05          	ldw	(OFST-4,sp),x
2352  0057               L3601:
2353                     ; 594   return((uint32_t)clockfrequency);
2355  0057 96            	ldw	x,sp
2356  0058 1c0005        	addw	x,#OFST-4
2357  005b cd0000        	call	c_ltor
2361  005e 5b09          	addw	sp,#9
2362  0060 81            	ret	
2462                     ; 604 void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
2462                     ; 605 {
2463                     .text:	section	.text,new
2464  0000               _CLK_AdjustHSICalibrationValue:
2466  0000 88            	push	a
2467       00000000      OFST:	set	0
2470                     ; 607   assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
2472  0001 4d            	tnz	a
2473  0002 272a          	jreq	L623
2474  0004 a101          	cp	a,#1
2475  0006 2726          	jreq	L623
2476  0008 a102          	cp	a,#2
2477  000a 2722          	jreq	L623
2478  000c a103          	cp	a,#3
2479  000e 271e          	jreq	L623
2480  0010 a104          	cp	a,#4
2481  0012 271a          	jreq	L623
2482  0014 a105          	cp	a,#5
2483  0016 2716          	jreq	L623
2484  0018 a106          	cp	a,#6
2485  001a 2712          	jreq	L623
2486  001c a107          	cp	a,#7
2487  001e 270e          	jreq	L623
2488  0020 ae025f        	ldw	x,#607
2489  0023 89            	pushw	x
2490  0024 5f            	clrw	x
2491  0025 89            	pushw	x
2492  0026 ae000c        	ldw	x,#L75
2493  0029 cd0000        	call	_assert_failed
2495  002c 5b04          	addw	sp,#4
2496  002e               L623:
2497                     ; 610   CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
2499  002e c650cc        	ld	a,20684
2500  0031 a4f8          	and	a,#248
2501  0033 1a01          	or	a,(OFST+1,sp)
2502  0035 c750cc        	ld	20684,a
2503                     ; 611 }
2506  0038 84            	pop	a
2507  0039 81            	ret	
2531                     ; 622 void CLK_SYSCLKEmergencyClear(void)
2531                     ; 623 {
2532                     .text:	section	.text,new
2533  0000               _CLK_SYSCLKEmergencyClear:
2537                     ; 624   CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
2539  0000 721150c5      	bres	20677,#0
2540                     ; 625 }
2543  0004 81            	ret	
2693                     ; 634 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
2693                     ; 635 {
2694                     .text:	section	.text,new
2695  0000               _CLK_GetFlagStatus:
2697  0000 89            	pushw	x
2698  0001 5203          	subw	sp,#3
2699       00000003      OFST:	set	3
2702                     ; 636   uint16_t statusreg = 0;
2704                     ; 637   uint8_t tmpreg = 0;
2706                     ; 638   FlagStatus bitstatus = RESET;
2708                     ; 641   assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
2710  0003 a30110        	cpw	x,#272
2711  0006 2736          	jreq	L243
2712  0008 a30102        	cpw	x,#258
2713  000b 2731          	jreq	L243
2714  000d a30202        	cpw	x,#514
2715  0010 272c          	jreq	L243
2716  0012 a30308        	cpw	x,#776
2717  0015 2727          	jreq	L243
2718  0017 a30301        	cpw	x,#769
2719  001a 2722          	jreq	L243
2720  001c a30408        	cpw	x,#1032
2721  001f 271d          	jreq	L243
2722  0021 a30402        	cpw	x,#1026
2723  0024 2718          	jreq	L243
2724  0026 a30504        	cpw	x,#1284
2725  0029 2713          	jreq	L243
2726  002b a30502        	cpw	x,#1282
2727  002e 270e          	jreq	L243
2728  0030 ae0281        	ldw	x,#641
2729  0033 89            	pushw	x
2730  0034 5f            	clrw	x
2731  0035 89            	pushw	x
2732  0036 ae000c        	ldw	x,#L75
2733  0039 cd0000        	call	_assert_failed
2735  003c 5b04          	addw	sp,#4
2736  003e               L243:
2737                     ; 644   statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
2739  003e 7b04          	ld	a,(OFST+1,sp)
2740  0040 97            	ld	xl,a
2741  0041 4f            	clr	a
2742  0042 02            	rlwa	x,a
2743  0043 1f01          	ldw	(OFST-2,sp),x
2745                     ; 647   if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
2747  0045 a30100        	cpw	x,#256
2748  0048 2605          	jrne	L7221
2749                     ; 649     tmpreg = CLK->ICKR;
2751  004a c650c0        	ld	a,20672
2753  004d 2021          	jra	L1321
2754  004f               L7221:
2755                     ; 651   else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
2757  004f a30200        	cpw	x,#512
2758  0052 2605          	jrne	L3321
2759                     ; 653     tmpreg = CLK->ECKR;
2761  0054 c650c1        	ld	a,20673
2763  0057 2017          	jra	L1321
2764  0059               L3321:
2765                     ; 655   else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
2767  0059 a30300        	cpw	x,#768
2768  005c 2605          	jrne	L7321
2769                     ; 657     tmpreg = CLK->SWCR;
2771  005e c650c5        	ld	a,20677
2773  0061 200d          	jra	L1321
2774  0063               L7321:
2775                     ; 659   else if (statusreg == 0x0400) /* The flag to check is in CSS register */
2777  0063 a30400        	cpw	x,#1024
2778  0066 2605          	jrne	L3421
2779                     ; 661     tmpreg = CLK->CSSR;
2781  0068 c650c8        	ld	a,20680
2783  006b 2003          	jra	L1321
2784  006d               L3421:
2785                     ; 665     tmpreg = CLK->CCOR;
2787  006d c650c9        	ld	a,20681
2788  0070               L1321:
2789  0070 6b03          	ld	(OFST+0,sp),a
2791                     ; 668   if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
2793  0072 7b05          	ld	a,(OFST+2,sp)
2794  0074 1503          	bcp	a,(OFST+0,sp)
2795  0076 2704          	jreq	L7421
2796                     ; 670     bitstatus = SET;
2798  0078 a601          	ld	a,#1
2801  007a 2001          	jra	L1521
2802  007c               L7421:
2803                     ; 674     bitstatus = RESET;
2805  007c 4f            	clr	a
2807  007d               L1521:
2808                     ; 678   return((FlagStatus)bitstatus);
2812  007d 5b05          	addw	sp,#5
2813  007f 81            	ret	
2860                     ; 687 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
2860                     ; 688 {
2861                     .text:	section	.text,new
2862  0000               _CLK_GetITStatus:
2864  0000 88            	push	a
2865  0001 88            	push	a
2866       00000001      OFST:	set	1
2869                     ; 689   ITStatus bitstatus = RESET;
2871                     ; 692   assert_param(IS_CLK_IT_OK(CLK_IT));
2873  0002 a10c          	cp	a,#12
2874  0004 2712          	jreq	L453
2875  0006 a11c          	cp	a,#28
2876  0008 270e          	jreq	L453
2877  000a ae02b4        	ldw	x,#692
2878  000d 89            	pushw	x
2879  000e 5f            	clrw	x
2880  000f 89            	pushw	x
2881  0010 ae000c        	ldw	x,#L75
2882  0013 cd0000        	call	_assert_failed
2884  0016 5b04          	addw	sp,#4
2885  0018               L453:
2886                     ; 694   if (CLK_IT == CLK_IT_SWIF)
2888  0018 7b02          	ld	a,(OFST+1,sp)
2889  001a a11c          	cp	a,#28
2890  001c 260b          	jrne	L5721
2891                     ; 697     if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2893  001e c650c5        	ld	a,20677
2894  0021 1402          	and	a,(OFST+1,sp)
2895  0023 a10c          	cp	a,#12
2896  0025 260f          	jrne	L5031
2897                     ; 699       bitstatus = SET;
2899  0027 2009          	jp	LC011
2900                     ; 703       bitstatus = RESET;
2901  0029               L5721:
2902                     ; 709     if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2904  0029 c650c8        	ld	a,20680
2905  002c 1402          	and	a,(OFST+1,sp)
2906  002e a10c          	cp	a,#12
2907  0030 2604          	jrne	L5031
2908                     ; 711       bitstatus = SET;
2910  0032               LC011:
2912  0032 a601          	ld	a,#1
2915  0034 2001          	jra	L3031
2916  0036               L5031:
2917                     ; 715       bitstatus = RESET;
2920  0036 4f            	clr	a
2922  0037               L3031:
2923                     ; 720   return bitstatus;
2927  0037 85            	popw	x
2928  0038 81            	ret	
2965                     ; 729 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
2965                     ; 730 {
2966                     .text:	section	.text,new
2967  0000               _CLK_ClearITPendingBit:
2969  0000 88            	push	a
2970       00000000      OFST:	set	0
2973                     ; 732   assert_param(IS_CLK_IT_OK(CLK_IT));
2975  0001 a10c          	cp	a,#12
2976  0003 2712          	jreq	L663
2977  0005 a11c          	cp	a,#28
2978  0007 270e          	jreq	L663
2979  0009 ae02dc        	ldw	x,#732
2980  000c 89            	pushw	x
2981  000d 5f            	clrw	x
2982  000e 89            	pushw	x
2983  000f ae000c        	ldw	x,#L75
2984  0012 cd0000        	call	_assert_failed
2986  0015 5b04          	addw	sp,#4
2987  0017               L663:
2988                     ; 734   if (CLK_IT == (uint8_t)CLK_IT_CSSD)
2990  0017 7b01          	ld	a,(OFST+1,sp)
2991  0019 a10c          	cp	a,#12
2992  001b 2606          	jrne	L7231
2993                     ; 737     CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
2995  001d 721750c8      	bres	20680,#3
2997  0021 2004          	jra	L1331
2998  0023               L7231:
2999                     ; 742     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
3001  0023 721750c5      	bres	20677,#3
3002  0027               L1331:
3003                     ; 745 }
3006  0027 84            	pop	a
3007  0028 81            	ret	
3042                     	xdef	_CLKPrescTable
3043                     	xdef	_HSIDivFactor
3044                     	xdef	_CLK_ClearITPendingBit
3045                     	xdef	_CLK_GetITStatus
3046                     	xdef	_CLK_GetFlagStatus
3047                     	xdef	_CLK_GetSYSCLKSource
3048                     	xdef	_CLK_GetClockFreq
3049                     	xdef	_CLK_AdjustHSICalibrationValue
3050                     	xdef	_CLK_SYSCLKEmergencyClear
3051                     	xdef	_CLK_ClockSecuritySystemEnable
3052                     	xdef	_CLK_SWIMConfig
3053                     	xdef	_CLK_SYSCLKConfig
3054                     	xdef	_CLK_ITConfig
3055                     	xdef	_CLK_CCOConfig
3056                     	xdef	_CLK_HSIPrescalerConfig
3057                     	xdef	_CLK_ClockSwitchConfig
3058                     	xdef	_CLK_PeripheralClockConfig
3059                     	xdef	_CLK_SlowActiveHaltWakeUpCmd
3060                     	xdef	_CLK_FastHaltWakeUpCmd
3061                     	xdef	_CLK_ClockSwitchCmd
3062                     	xdef	_CLK_CCOCmd
3063                     	xdef	_CLK_LSICmd
3064                     	xdef	_CLK_HSICmd
3065                     	xdef	_CLK_HSECmd
3066                     	xdef	_CLK_DeInit
3067                     	xref	_assert_failed
3068                     	switch	.const
3069  000c               L75:
3070  000c 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
3071  001e 6965735c7374  	dc.b	"ies\stm8s_stdperip"
3072  0030 685f64726976  	dc.b	"h_driver\src\stm8s"
3073  0042 5f636c6b2e63  	dc.b	"_clk.c",0
3074                     	xref.b	c_lreg
3075                     	xref.b	c_x
3095                     	xref	c_ltor
3096                     	xref	c_ludv
3097                     	xref	c_rtol
3098                     	end
