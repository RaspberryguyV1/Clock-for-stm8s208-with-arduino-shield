   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
   4                     ; Optimizer V4.5.6 - 18 Jul 2023
  50                     ; 49 void TIM4_DeInit(void)
  50                     ; 50 {
  52                     .text:	section	.text,new
  53  0000               _TIM4_DeInit:
  57                     ; 51   TIM4->CR1 = TIM4_CR1_RESET_VALUE;
  59  0000 725f5340      	clr	21312
  60                     ; 52   TIM4->IER = TIM4_IER_RESET_VALUE;
  62  0004 725f5341      	clr	21313
  63                     ; 53   TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
  65  0008 725f5344      	clr	21316
  66                     ; 54   TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
  68  000c 725f5345      	clr	21317
  69                     ; 55   TIM4->ARR = TIM4_ARR_RESET_VALUE;
  71  0010 35ff5346      	mov	21318,#255
  72                     ; 56   TIM4->SR1 = TIM4_SR1_RESET_VALUE;
  74  0014 725f5342      	clr	21314
  75                     ; 57 }
  78  0018 81            	ret	
 183                     ; 65 void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, uint8_t TIM4_Period)
 183                     ; 66 {
 184                     .text:	section	.text,new
 185  0000               _TIM4_TimeBaseInit:
 187  0000 89            	pushw	x
 188       00000000      OFST:	set	0
 191                     ; 68   assert_param(IS_TIM4_PRESCALER_OK(TIM4_Prescaler));
 193  0001 9e            	ld	a,xh
 194  0002 4d            	tnz	a
 195  0003 2730          	jreq	L41
 196  0005 9e            	ld	a,xh
 197  0006 4a            	dec	a
 198  0007 272c          	jreq	L41
 199  0009 9e            	ld	a,xh
 200  000a a102          	cp	a,#2
 201  000c 2727          	jreq	L41
 202  000e 9e            	ld	a,xh
 203  000f a103          	cp	a,#3
 204  0011 2722          	jreq	L41
 205  0013 9e            	ld	a,xh
 206  0014 a104          	cp	a,#4
 207  0016 271d          	jreq	L41
 208  0018 9e            	ld	a,xh
 209  0019 a105          	cp	a,#5
 210  001b 2718          	jreq	L41
 211  001d 9e            	ld	a,xh
 212  001e a106          	cp	a,#6
 213  0020 2713          	jreq	L41
 214  0022 9e            	ld	a,xh
 215  0023 a107          	cp	a,#7
 216  0025 270e          	jreq	L41
 217  0027 ae0044        	ldw	x,#68
 218  002a 89            	pushw	x
 219  002b 5f            	clrw	x
 220  002c 89            	pushw	x
 221  002d ae0000        	ldw	x,#L56
 222  0030 cd0000        	call	_assert_failed
 224  0033 5b04          	addw	sp,#4
 225  0035               L41:
 226                     ; 70   TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
 228  0035 7b01          	ld	a,(OFST+1,sp)
 229  0037 c75345        	ld	21317,a
 230                     ; 72   TIM4->ARR = (uint8_t)(TIM4_Period);
 232  003a 7b02          	ld	a,(OFST+2,sp)
 233  003c c75346        	ld	21318,a
 234                     ; 73 }
 237  003f 85            	popw	x
 238  0040 81            	ret	
 294                     ; 81 void TIM4_Cmd(FunctionalState NewState)
 294                     ; 82 {
 295                     .text:	section	.text,new
 296  0000               _TIM4_Cmd:
 298  0000 88            	push	a
 299       00000000      OFST:	set	0
 302                     ; 84   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 304  0001 4d            	tnz	a
 305  0002 2711          	jreq	L62
 306  0004 4a            	dec	a
 307  0005 270e          	jreq	L62
 308  0007 ae0054        	ldw	x,#84
 309  000a 89            	pushw	x
 310  000b 5f            	clrw	x
 311  000c 89            	pushw	x
 312  000d ae0000        	ldw	x,#L56
 313  0010 cd0000        	call	_assert_failed
 315  0013 5b04          	addw	sp,#4
 316  0015               L62:
 317                     ; 87   if (NewState != DISABLE)
 319  0015 7b01          	ld	a,(OFST+1,sp)
 320  0017 2706          	jreq	L511
 321                     ; 89     TIM4->CR1 |= TIM4_CR1_CEN;
 323  0019 72105340      	bset	21312,#0
 325  001d 2004          	jra	L711
 326  001f               L511:
 327                     ; 93     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN);
 329  001f 72115340      	bres	21312,#0
 330  0023               L711:
 331                     ; 95 }
 334  0023 84            	pop	a
 335  0024 81            	ret	
 394                     ; 107 void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
 394                     ; 108 {
 395                     .text:	section	.text,new
 396  0000               _TIM4_ITConfig:
 398  0000 89            	pushw	x
 399       00000000      OFST:	set	0
 402                     ; 110   assert_param(IS_TIM4_IT_OK(TIM4_IT));
 404  0001 9e            	ld	a,xh
 405  0002 4a            	dec	a
 406  0003 2705          	jreq	L63
 407  0005 ae006e        	ldw	x,#110
 408  0008 ad22          	call	LC001
 409  000a               L63:
 410                     ; 111   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 412  000a 7b02          	ld	a,(OFST+2,sp)
 413  000c 2708          	jreq	L64
 414  000e 4a            	dec	a
 415  000f 2705          	jreq	L64
 416  0011 ae006f        	ldw	x,#111
 417  0014 ad16          	call	LC001
 418  0016               L64:
 419                     ; 113   if (NewState != DISABLE)
 421  0016 7b02          	ld	a,(OFST+2,sp)
 422  0018 2707          	jreq	L151
 423                     ; 116     TIM4->IER |= (uint8_t)TIM4_IT;
 425  001a c65341        	ld	a,21313
 426  001d 1a01          	or	a,(OFST+1,sp)
 428  001f 2006          	jra	L351
 429  0021               L151:
 430                     ; 121     TIM4->IER &= (uint8_t)(~TIM4_IT);
 432  0021 7b01          	ld	a,(OFST+1,sp)
 433  0023 43            	cpl	a
 434  0024 c45341        	and	a,21313
 435  0027               L351:
 436  0027 c75341        	ld	21313,a
 437                     ; 123 }
 440  002a 85            	popw	x
 441  002b 81            	ret	
 442  002c               LC001:
 443  002c 89            	pushw	x
 444  002d 5f            	clrw	x
 445  002e 89            	pushw	x
 446  002f ae0000        	ldw	x,#L56
 447  0032 cd0000        	call	_assert_failed
 449  0035 5b04          	addw	sp,#4
 450  0037 81            	ret	
 487                     ; 131 void TIM4_UpdateDisableConfig(FunctionalState NewState)
 487                     ; 132 {
 488                     .text:	section	.text,new
 489  0000               _TIM4_UpdateDisableConfig:
 491  0000 88            	push	a
 492       00000000      OFST:	set	0
 495                     ; 134   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 497  0001 4d            	tnz	a
 498  0002 2711          	jreq	L06
 499  0004 4a            	dec	a
 500  0005 270e          	jreq	L06
 501  0007 ae0086        	ldw	x,#134
 502  000a 89            	pushw	x
 503  000b 5f            	clrw	x
 504  000c 89            	pushw	x
 505  000d ae0000        	ldw	x,#L56
 506  0010 cd0000        	call	_assert_failed
 508  0013 5b04          	addw	sp,#4
 509  0015               L06:
 510                     ; 137   if (NewState != DISABLE)
 512  0015 7b01          	ld	a,(OFST+1,sp)
 513  0017 2706          	jreq	L371
 514                     ; 139     TIM4->CR1 |= TIM4_CR1_UDIS;
 516  0019 72125340      	bset	21312,#1
 518  001d 2004          	jra	L571
 519  001f               L371:
 520                     ; 143     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_UDIS);
 522  001f 72135340      	bres	21312,#1
 523  0023               L571:
 524                     ; 145 }
 527  0023 84            	pop	a
 528  0024 81            	ret	
 587                     ; 155 void TIM4_UpdateRequestConfig(TIM4_UpdateSource_TypeDef TIM4_UpdateSource)
 587                     ; 156 {
 588                     .text:	section	.text,new
 589  0000               _TIM4_UpdateRequestConfig:
 591  0000 88            	push	a
 592       00000000      OFST:	set	0
 595                     ; 158   assert_param(IS_TIM4_UPDATE_SOURCE_OK(TIM4_UpdateSource));
 597  0001 4d            	tnz	a
 598  0002 2711          	jreq	L27
 599  0004 4a            	dec	a
 600  0005 270e          	jreq	L27
 601  0007 ae009e        	ldw	x,#158
 602  000a 89            	pushw	x
 603  000b 5f            	clrw	x
 604  000c 89            	pushw	x
 605  000d ae0000        	ldw	x,#L56
 606  0010 cd0000        	call	_assert_failed
 608  0013 5b04          	addw	sp,#4
 609  0015               L27:
 610                     ; 161   if (TIM4_UpdateSource != TIM4_UPDATESOURCE_GLOBAL)
 612  0015 7b01          	ld	a,(OFST+1,sp)
 613  0017 2706          	jreq	L522
 614                     ; 163     TIM4->CR1 |= TIM4_CR1_URS;
 616  0019 72145340      	bset	21312,#2
 618  001d 2004          	jra	L722
 619  001f               L522:
 620                     ; 167     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_URS);
 622  001f 72155340      	bres	21312,#2
 623  0023               L722:
 624                     ; 169 }
 627  0023 84            	pop	a
 628  0024 81            	ret	
 686                     ; 179 void TIM4_SelectOnePulseMode(TIM4_OPMode_TypeDef TIM4_OPMode)
 686                     ; 180 {
 687                     .text:	section	.text,new
 688  0000               _TIM4_SelectOnePulseMode:
 690  0000 88            	push	a
 691       00000000      OFST:	set	0
 694                     ; 182   assert_param(IS_TIM4_OPM_MODE_OK(TIM4_OPMode));
 696  0001 a101          	cp	a,#1
 697  0003 2711          	jreq	L401
 698  0005 4d            	tnz	a
 699  0006 270e          	jreq	L401
 700  0008 ae00b6        	ldw	x,#182
 701  000b 89            	pushw	x
 702  000c 5f            	clrw	x
 703  000d 89            	pushw	x
 704  000e ae0000        	ldw	x,#L56
 705  0011 cd0000        	call	_assert_failed
 707  0014 5b04          	addw	sp,#4
 708  0016               L401:
 709                     ; 185   if (TIM4_OPMode != TIM4_OPMODE_REPETITIVE)
 711  0016 7b01          	ld	a,(OFST+1,sp)
 712  0018 2706          	jreq	L752
 713                     ; 187     TIM4->CR1 |= TIM4_CR1_OPM;
 715  001a 72165340      	bset	21312,#3
 717  001e 2004          	jra	L162
 718  0020               L752:
 719                     ; 191     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_OPM);
 721  0020 72175340      	bres	21312,#3
 722  0024               L162:
 723                     ; 193 }
 726  0024 84            	pop	a
 727  0025 81            	ret	
 796                     ; 215 void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler, TIM4_PSCReloadMode_TypeDef TIM4_PSCReloadMode)
 796                     ; 216 {
 797                     .text:	section	.text,new
 798  0000               _TIM4_PrescalerConfig:
 800  0000 89            	pushw	x
 801       00000000      OFST:	set	0
 804                     ; 218   assert_param(IS_TIM4_PRESCALER_RELOAD_OK(TIM4_PSCReloadMode));
 806  0001 9f            	ld	a,xl
 807  0002 4d            	tnz	a
 808  0003 2709          	jreq	L611
 809  0005 9f            	ld	a,xl
 810  0006 4a            	dec	a
 811  0007 2705          	jreq	L611
 812  0009 ae00da        	ldw	x,#218
 813  000c ad31          	call	LC002
 814  000e               L611:
 815                     ; 219   assert_param(IS_TIM4_PRESCALER_OK(Prescaler));
 817  000e 7b01          	ld	a,(OFST+1,sp)
 818  0010 2723          	jreq	L621
 819  0012 a101          	cp	a,#1
 820  0014 271f          	jreq	L621
 821  0016 a102          	cp	a,#2
 822  0018 271b          	jreq	L621
 823  001a a103          	cp	a,#3
 824  001c 2717          	jreq	L621
 825  001e a104          	cp	a,#4
 826  0020 2713          	jreq	L621
 827  0022 a105          	cp	a,#5
 828  0024 270f          	jreq	L621
 829  0026 a106          	cp	a,#6
 830  0028 270b          	jreq	L621
 831  002a a107          	cp	a,#7
 832  002c 2707          	jreq	L621
 833  002e ae00db        	ldw	x,#219
 834  0031 ad0c          	call	LC002
 835  0033 7b01          	ld	a,(OFST+1,sp)
 836  0035               L621:
 837                     ; 222   TIM4->PSCR = (uint8_t)Prescaler;
 839  0035 c75345        	ld	21317,a
 840                     ; 225   TIM4->EGR = (uint8_t)TIM4_PSCReloadMode;
 842  0038 7b02          	ld	a,(OFST+2,sp)
 843  003a c75343        	ld	21315,a
 844                     ; 226 }
 847  003d 85            	popw	x
 848  003e 81            	ret	
 849  003f               LC002:
 850  003f 89            	pushw	x
 851  0040 5f            	clrw	x
 852  0041 89            	pushw	x
 853  0042 ae0000        	ldw	x,#L56
 854  0045 cd0000        	call	_assert_failed
 856  0048 5b04          	addw	sp,#4
 857  004a 81            	ret	
 894                     ; 234 void TIM4_ARRPreloadConfig(FunctionalState NewState)
 894                     ; 235 {
 895                     .text:	section	.text,new
 896  0000               _TIM4_ARRPreloadConfig:
 898  0000 88            	push	a
 899       00000000      OFST:	set	0
 902                     ; 237   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 904  0001 4d            	tnz	a
 905  0002 2711          	jreq	L041
 906  0004 4a            	dec	a
 907  0005 270e          	jreq	L041
 908  0007 ae00ed        	ldw	x,#237
 909  000a 89            	pushw	x
 910  000b 5f            	clrw	x
 911  000c 89            	pushw	x
 912  000d ae0000        	ldw	x,#L56
 913  0010 cd0000        	call	_assert_failed
 915  0013 5b04          	addw	sp,#4
 916  0015               L041:
 917                     ; 240   if (NewState != DISABLE)
 919  0015 7b01          	ld	a,(OFST+1,sp)
 920  0017 2706          	jreq	L333
 921                     ; 242     TIM4->CR1 |= TIM4_CR1_ARPE;
 923  0019 721e5340      	bset	21312,#7
 925  001d 2004          	jra	L533
 926  001f               L333:
 927                     ; 246     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_ARPE);
 929  001f 721f5340      	bres	21312,#7
 930  0023               L533:
 931                     ; 248 }
 934  0023 84            	pop	a
 935  0024 81            	ret	
 985                     ; 257 void TIM4_GenerateEvent(TIM4_EventSource_TypeDef TIM4_EventSource)
 985                     ; 258 {
 986                     .text:	section	.text,new
 987  0000               _TIM4_GenerateEvent:
 989  0000 88            	push	a
 990       00000000      OFST:	set	0
 993                     ; 260   assert_param(IS_TIM4_EVENT_SOURCE_OK(TIM4_EventSource));
 995  0001 4a            	dec	a
 996  0002 270e          	jreq	L051
 997  0004 ae0104        	ldw	x,#260
 998  0007 89            	pushw	x
 999  0008 5f            	clrw	x
1000  0009 89            	pushw	x
1001  000a ae0000        	ldw	x,#L56
1002  000d cd0000        	call	_assert_failed
1004  0010 5b04          	addw	sp,#4
1005  0012               L051:
1006                     ; 263   TIM4->EGR = (uint8_t)(TIM4_EventSource);
1008  0012 7b01          	ld	a,(OFST+1,sp)
1009  0014 c75343        	ld	21315,a
1010                     ; 264 }
1013  0017 84            	pop	a
1014  0018 81            	ret	
1046                     ; 272 void TIM4_SetCounter(uint8_t Counter)
1046                     ; 273 {
1047                     .text:	section	.text,new
1048  0000               _TIM4_SetCounter:
1052                     ; 275   TIM4->CNTR = (uint8_t)(Counter);
1054  0000 c75344        	ld	21316,a
1055                     ; 276 }
1058  0003 81            	ret	
1090                     ; 284 void TIM4_SetAutoreload(uint8_t Autoreload)
1090                     ; 285 {
1091                     .text:	section	.text,new
1092  0000               _TIM4_SetAutoreload:
1096                     ; 287   TIM4->ARR = (uint8_t)(Autoreload);
1098  0000 c75346        	ld	21318,a
1099                     ; 288 }
1102  0003 81            	ret	
1125                     ; 295 uint8_t TIM4_GetCounter(void)
1125                     ; 296 {
1126                     .text:	section	.text,new
1127  0000               _TIM4_GetCounter:
1131                     ; 298   return (uint8_t)(TIM4->CNTR);
1133  0000 c65344        	ld	a,21316
1136  0003 81            	ret	
1160                     ; 306 TIM4_Prescaler_TypeDef TIM4_GetPrescaler(void)
1160                     ; 307 {
1161                     .text:	section	.text,new
1162  0000               _TIM4_GetPrescaler:
1166                     ; 309   return (TIM4_Prescaler_TypeDef)(TIM4->PSCR);
1168  0000 c65345        	ld	a,21317
1171  0003 81            	ret	
1251                     ; 319 FlagStatus TIM4_GetFlagStatus(TIM4_FLAG_TypeDef TIM4_FLAG)
1251                     ; 320 {
1252                     .text:	section	.text,new
1253  0000               _TIM4_GetFlagStatus:
1255  0000 88            	push	a
1256  0001 88            	push	a
1257       00000001      OFST:	set	1
1260                     ; 321   FlagStatus bitstatus = RESET;
1262                     ; 324   assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1264  0002 4a            	dec	a
1265  0003 270e          	jreq	L071
1266  0005 ae0144        	ldw	x,#324
1267  0008 89            	pushw	x
1268  0009 5f            	clrw	x
1269  000a 89            	pushw	x
1270  000b ae0000        	ldw	x,#L56
1271  000e cd0000        	call	_assert_failed
1273  0011 5b04          	addw	sp,#4
1274  0013               L071:
1275                     ; 326   if ((TIM4->SR1 & (uint8_t)TIM4_FLAG)  != 0)
1277  0013 c65342        	ld	a,21314
1278  0016 1502          	bcp	a,(OFST+1,sp)
1279  0018 2704          	jreq	L374
1280                     ; 328     bitstatus = SET;
1282  001a a601          	ld	a,#1
1285  001c 2001          	jra	L574
1286  001e               L374:
1287                     ; 332     bitstatus = RESET;
1289  001e 4f            	clr	a
1291  001f               L574:
1292                     ; 334   return ((FlagStatus)bitstatus);
1296  001f 85            	popw	x
1297  0020 81            	ret	
1333                     ; 344 void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
1333                     ; 345 {
1334                     .text:	section	.text,new
1335  0000               _TIM4_ClearFlag:
1337  0000 88            	push	a
1338       00000000      OFST:	set	0
1341                     ; 347   assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1343  0001 4a            	dec	a
1344  0002 270e          	jreq	L002
1345  0004 ae015b        	ldw	x,#347
1346  0007 89            	pushw	x
1347  0008 5f            	clrw	x
1348  0009 89            	pushw	x
1349  000a ae0000        	ldw	x,#L56
1350  000d cd0000        	call	_assert_failed
1352  0010 5b04          	addw	sp,#4
1353  0012               L002:
1354                     ; 350   TIM4->SR1 = (uint8_t)(~TIM4_FLAG);
1356  0012 7b01          	ld	a,(OFST+1,sp)
1357  0014 43            	cpl	a
1358  0015 c75342        	ld	21314,a
1359                     ; 351 }
1362  0018 84            	pop	a
1363  0019 81            	ret	
1424                     ; 360 ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
1424                     ; 361 {
1425                     .text:	section	.text,new
1426  0000               _TIM4_GetITStatus:
1428  0000 88            	push	a
1429  0001 89            	pushw	x
1430       00000002      OFST:	set	2
1433                     ; 362   ITStatus bitstatus = RESET;
1435                     ; 364   uint8_t itstatus = 0x0, itenable = 0x0;
1439                     ; 367   assert_param(IS_TIM4_IT_OK(TIM4_IT));
1441  0002 4a            	dec	a
1442  0003 270e          	jreq	L012
1443  0005 ae016f        	ldw	x,#367
1444  0008 89            	pushw	x
1445  0009 5f            	clrw	x
1446  000a 89            	pushw	x
1447  000b ae0000        	ldw	x,#L56
1448  000e cd0000        	call	_assert_failed
1450  0011 5b04          	addw	sp,#4
1451  0013               L012:
1452                     ; 369   itstatus = (uint8_t)(TIM4->SR1 & (uint8_t)TIM4_IT);
1454  0013 c65342        	ld	a,21314
1455  0016 1403          	and	a,(OFST+1,sp)
1456  0018 6b01          	ld	(OFST-1,sp),a
1458                     ; 371   itenable = (uint8_t)(TIM4->IER & (uint8_t)TIM4_IT);
1460  001a c65341        	ld	a,21313
1461  001d 1403          	and	a,(OFST+1,sp)
1462  001f 6b02          	ld	(OFST+0,sp),a
1464                     ; 373   if ((itstatus != (uint8_t)RESET ) && (itenable != (uint8_t)RESET ))
1466  0021 7b01          	ld	a,(OFST-1,sp)
1467  0023 2708          	jreq	L345
1469  0025 7b02          	ld	a,(OFST+0,sp)
1470  0027 2704          	jreq	L345
1471                     ; 375     bitstatus = (ITStatus)SET;
1473  0029 a601          	ld	a,#1
1476  002b 2001          	jra	L545
1477  002d               L345:
1478                     ; 379     bitstatus = (ITStatus)RESET;
1480  002d 4f            	clr	a
1482  002e               L545:
1483                     ; 381   return ((ITStatus)bitstatus);
1487  002e 5b03          	addw	sp,#3
1488  0030 81            	ret	
1525                     ; 391 void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
1525                     ; 392 {
1526                     .text:	section	.text,new
1527  0000               _TIM4_ClearITPendingBit:
1529  0000 88            	push	a
1530       00000000      OFST:	set	0
1533                     ; 394   assert_param(IS_TIM4_IT_OK(TIM4_IT));
1535  0001 4a            	dec	a
1536  0002 270e          	jreq	L022
1537  0004 ae018a        	ldw	x,#394
1538  0007 89            	pushw	x
1539  0008 5f            	clrw	x
1540  0009 89            	pushw	x
1541  000a ae0000        	ldw	x,#L56
1542  000d cd0000        	call	_assert_failed
1544  0010 5b04          	addw	sp,#4
1545  0012               L022:
1546                     ; 397   TIM4->SR1 = (uint8_t)(~TIM4_IT);
1548  0012 7b01          	ld	a,(OFST+1,sp)
1549  0014 43            	cpl	a
1550  0015 c75342        	ld	21314,a
1551                     ; 398 }
1554  0018 84            	pop	a
1555  0019 81            	ret	
1568                     	xdef	_TIM4_ClearITPendingBit
1569                     	xdef	_TIM4_GetITStatus
1570                     	xdef	_TIM4_ClearFlag
1571                     	xdef	_TIM4_GetFlagStatus
1572                     	xdef	_TIM4_GetPrescaler
1573                     	xdef	_TIM4_GetCounter
1574                     	xdef	_TIM4_SetAutoreload
1575                     	xdef	_TIM4_SetCounter
1576                     	xdef	_TIM4_GenerateEvent
1577                     	xdef	_TIM4_ARRPreloadConfig
1578                     	xdef	_TIM4_PrescalerConfig
1579                     	xdef	_TIM4_SelectOnePulseMode
1580                     	xdef	_TIM4_UpdateRequestConfig
1581                     	xdef	_TIM4_UpdateDisableConfig
1582                     	xdef	_TIM4_ITConfig
1583                     	xdef	_TIM4_Cmd
1584                     	xdef	_TIM4_TimeBaseInit
1585                     	xdef	_TIM4_DeInit
1586                     	xref	_assert_failed
1587                     .const:	section	.text
1588  0000               L56:
1589  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
1590  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
1591  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
1592  0036 5f74696d342e  	dc.b	"_tim4.c",0
1612                     	end
