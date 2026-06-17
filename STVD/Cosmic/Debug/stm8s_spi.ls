   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
   4                     ; Optimizer V4.5.6 - 18 Jul 2023
  50                     ; 50 void SPI_DeInit(void)
  50                     ; 51 {
  52                     .text:	section	.text,new
  53  0000               _SPI_DeInit:
  57                     ; 52   SPI->CR1    = SPI_CR1_RESET_VALUE;
  59  0000 725f5200      	clr	20992
  60                     ; 53   SPI->CR2    = SPI_CR2_RESET_VALUE;
  62  0004 725f5201      	clr	20993
  63                     ; 54   SPI->ICR    = SPI_ICR_RESET_VALUE;
  65  0008 725f5202      	clr	20994
  66                     ; 55   SPI->SR     = SPI_SR_RESET_VALUE;
  68  000c 35025203      	mov	20995,#2
  69                     ; 56   SPI->CRCPR  = SPI_CRCPR_RESET_VALUE;
  71  0010 35075205      	mov	20997,#7
  72                     ; 57 }
  75  0014 81            	ret	
 390                     ; 78 void SPI_Init(SPI_FirstBit_TypeDef FirstBit, SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, SPI_ClockPhase_TypeDef ClockPhase, SPI_DataDirection_TypeDef Data_Direction, SPI_NSS_TypeDef Slave_Management, uint8_t CRCPolynomial)
 390                     ; 79 {
 391                     .text:	section	.text,new
 392  0000               _SPI_Init:
 394  0000 89            	pushw	x
 395  0001 88            	push	a
 396       00000001      OFST:	set	1
 399                     ; 81   assert_param(IS_SPI_FIRSTBIT_OK(FirstBit));
 401  0002 9e            	ld	a,xh
 402  0003 4d            	tnz	a
 403  0004 270b          	jreq	L41
 404  0006 9e            	ld	a,xh
 405  0007 a180          	cp	a,#128
 406  0009 2706          	jreq	L41
 407  000b ae0051        	ldw	x,#81
 408  000e cd00c0        	call	LC001
 409  0011               L41:
 410                     ; 82   assert_param(IS_SPI_BAUDRATE_PRESCALER_OK(BaudRatePrescaler));
 412  0011 7b03          	ld	a,(OFST+2,sp)
 413  0013 2722          	jreq	L42
 414  0015 a108          	cp	a,#8
 415  0017 271e          	jreq	L42
 416  0019 a110          	cp	a,#16
 417  001b 271a          	jreq	L42
 418  001d a118          	cp	a,#24
 419  001f 2716          	jreq	L42
 420  0021 a120          	cp	a,#32
 421  0023 2712          	jreq	L42
 422  0025 a128          	cp	a,#40
 423  0027 270e          	jreq	L42
 424  0029 a130          	cp	a,#48
 425  002b 270a          	jreq	L42
 426  002d a138          	cp	a,#56
 427  002f 2706          	jreq	L42
 428  0031 ae0052        	ldw	x,#82
 429  0034 cd00c0        	call	LC001
 430  0037               L42:
 431                     ; 83   assert_param(IS_SPI_MODE_OK(Mode));
 433  0037 7b06          	ld	a,(OFST+5,sp)
 434  0039 a104          	cp	a,#4
 435  003b 2708          	jreq	L43
 436  003d 4d            	tnz	a
 437  003e 2705          	jreq	L43
 438  0040 ae0053        	ldw	x,#83
 439  0043 ad7b          	call	LC001
 440  0045               L43:
 441                     ; 84   assert_param(IS_SPI_POLARITY_OK(ClockPolarity));
 443  0045 7b07          	ld	a,(OFST+6,sp)
 444  0047 2709          	jreq	L44
 445  0049 a102          	cp	a,#2
 446  004b 2705          	jreq	L44
 447  004d ae0054        	ldw	x,#84
 448  0050 ad6e          	call	LC001
 449  0052               L44:
 450                     ; 85   assert_param(IS_SPI_PHASE_OK(ClockPhase));
 452  0052 7b08          	ld	a,(OFST+7,sp)
 453  0054 2708          	jreq	L45
 454  0056 4a            	dec	a
 455  0057 2705          	jreq	L45
 456  0059 ae0055        	ldw	x,#85
 457  005c ad62          	call	LC001
 458  005e               L45:
 459                     ; 86   assert_param(IS_SPI_DATA_DIRECTION_OK(Data_Direction));
 461  005e 7b09          	ld	a,(OFST+8,sp)
 462  0060 2711          	jreq	L46
 463  0062 a104          	cp	a,#4
 464  0064 270d          	jreq	L46
 465  0066 a180          	cp	a,#128
 466  0068 2709          	jreq	L46
 467  006a a1c0          	cp	a,#192
 468  006c 2705          	jreq	L46
 469  006e ae0056        	ldw	x,#86
 470  0071 ad4d          	call	LC001
 471  0073               L46:
 472                     ; 87   assert_param(IS_SPI_SLAVEMANAGEMENT_OK(Slave_Management));
 474  0073 7b0a          	ld	a,(OFST+9,sp)
 475  0075 a102          	cp	a,#2
 476  0077 2708          	jreq	L47
 477  0079 4d            	tnz	a
 478  007a 2705          	jreq	L47
 479  007c ae0057        	ldw	x,#87
 480  007f ad3f          	call	LC001
 481  0081               L47:
 482                     ; 88   assert_param(IS_SPI_CRC_POLYNOMIAL_OK(CRCPolynomial));
 484  0081 7b0b          	ld	a,(OFST+10,sp)
 485  0083 2605          	jrne	L201
 486  0085 ae0058        	ldw	x,#88
 487  0088 ad36          	call	LC001
 488  008a               L201:
 489                     ; 91   SPI->CR1 = (uint8_t)((uint8_t)((uint8_t)FirstBit | BaudRatePrescaler) |
 489                     ; 92                        (uint8_t)((uint8_t)ClockPolarity | ClockPhase));
 491  008a 7b07          	ld	a,(OFST+6,sp)
 492  008c 1a08          	or	a,(OFST+7,sp)
 493  008e 6b01          	ld	(OFST+0,sp),a
 495  0090 7b02          	ld	a,(OFST+1,sp)
 496  0092 1a03          	or	a,(OFST+2,sp)
 497  0094 1a01          	or	a,(OFST+0,sp)
 498  0096 c75200        	ld	20992,a
 499                     ; 95   SPI->CR2 = (uint8_t)((uint8_t)(Data_Direction) | (uint8_t)(Slave_Management));
 501  0099 7b09          	ld	a,(OFST+8,sp)
 502  009b 1a0a          	or	a,(OFST+9,sp)
 503  009d c75201        	ld	20993,a
 504                     ; 97   if (Mode == SPI_MODE_MASTER)
 506  00a0 7b06          	ld	a,(OFST+5,sp)
 507  00a2 a104          	cp	a,#4
 508  00a4 2606          	jrne	L302
 509                     ; 99     SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
 511  00a6 72105201      	bset	20993,#0
 513  00aa 2004          	jra	L502
 514  00ac               L302:
 515                     ; 103     SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
 517  00ac 72115201      	bres	20993,#0
 518  00b0               L502:
 519                     ; 107   SPI->CR1 |= (uint8_t)(Mode);
 521  00b0 c65200        	ld	a,20992
 522  00b3 1a06          	or	a,(OFST+5,sp)
 523  00b5 c75200        	ld	20992,a
 524                     ; 110   SPI->CRCPR = (uint8_t)CRCPolynomial;
 526  00b8 7b0b          	ld	a,(OFST+10,sp)
 527  00ba c75205        	ld	20997,a
 528                     ; 111 }
 531  00bd 5b03          	addw	sp,#3
 532  00bf 81            	ret	
 533  00c0               LC001:
 534  00c0 89            	pushw	x
 535  00c1 5f            	clrw	x
 536  00c2 89            	pushw	x
 537  00c3 ae0000        	ldw	x,#L102
 538  00c6 cd0000        	call	_assert_failed
 540  00c9 5b04          	addw	sp,#4
 541  00cb 81            	ret	
 597                     ; 119 void SPI_Cmd(FunctionalState NewState)
 597                     ; 120 {
 598                     .text:	section	.text,new
 599  0000               _SPI_Cmd:
 601  0000 88            	push	a
 602       00000000      OFST:	set	0
 605                     ; 122   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 607  0001 4d            	tnz	a
 608  0002 2711          	jreq	L411
 609  0004 4a            	dec	a
 610  0005 270e          	jreq	L411
 611  0007 ae007a        	ldw	x,#122
 612  000a 89            	pushw	x
 613  000b 5f            	clrw	x
 614  000c 89            	pushw	x
 615  000d ae0000        	ldw	x,#L102
 616  0010 cd0000        	call	_assert_failed
 618  0013 5b04          	addw	sp,#4
 619  0015               L411:
 620                     ; 124   if (NewState != DISABLE)
 622  0015 7b01          	ld	a,(OFST+1,sp)
 623  0017 2706          	jreq	L532
 624                     ; 126     SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
 626  0019 721c5200      	bset	20992,#6
 628  001d 2004          	jra	L732
 629  001f               L532:
 630                     ; 130     SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral*/
 632  001f 721d5200      	bres	20992,#6
 633  0023               L732:
 634                     ; 132 }
 637  0023 84            	pop	a
 638  0024 81            	ret	
 746                     ; 141 void SPI_ITConfig(SPI_IT_TypeDef SPI_IT, FunctionalState NewState)
 746                     ; 142 {
 747                     .text:	section	.text,new
 748  0000               _SPI_ITConfig:
 750  0000 89            	pushw	x
 751  0001 88            	push	a
 752       00000001      OFST:	set	1
 755                     ; 143   uint8_t itpos = 0;
 757                     ; 145   assert_param(IS_SPI_CONFIG_IT_OK(SPI_IT));
 759  0002 9e            	ld	a,xh
 760  0003 a117          	cp	a,#23
 761  0005 2714          	jreq	L621
 762  0007 9e            	ld	a,xh
 763  0008 a106          	cp	a,#6
 764  000a 270f          	jreq	L621
 765  000c 9e            	ld	a,xh
 766  000d a105          	cp	a,#5
 767  000f 270a          	jreq	L621
 768  0011 9e            	ld	a,xh
 769  0012 a134          	cp	a,#52
 770  0014 2705          	jreq	L621
 771  0016 ae0091        	ldw	x,#145
 772  0019 ad32          	call	LC002
 773  001b               L621:
 774                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 776  001b 7b03          	ld	a,(OFST+2,sp)
 777  001d 2708          	jreq	L631
 778  001f 4a            	dec	a
 779  0020 2705          	jreq	L631
 780  0022 ae0092        	ldw	x,#146
 781  0025 ad26          	call	LC002
 782  0027               L631:
 783                     ; 149   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)SPI_IT & (uint8_t)0x0F));
 785  0027 7b02          	ld	a,(OFST+1,sp)
 786  0029 a40f          	and	a,#15
 787  002b 5f            	clrw	x
 788  002c 97            	ld	xl,a
 789  002d a601          	ld	a,#1
 790  002f 5d            	tnzw	x
 791  0030 2704          	jreq	L241
 792  0032               L441:
 793  0032 48            	sll	a
 794  0033 5a            	decw	x
 795  0034 26fc          	jrne	L441
 796  0036               L241:
 797  0036 6b01          	ld	(OFST+0,sp),a
 799                     ; 151   if (NewState != DISABLE)
 801  0038 0d03          	tnz	(OFST+2,sp)
 802  003a 2707          	jreq	L703
 803                     ; 153     SPI->ICR |= itpos; /* Enable interrupt*/
 805  003c c65202        	ld	a,20994
 806  003f 1a01          	or	a,(OFST+0,sp)
 808  0041 2004          	jra	L113
 809  0043               L703:
 810                     ; 157     SPI->ICR &= (uint8_t)(~itpos); /* Disable interrupt*/
 812  0043 43            	cpl	a
 813  0044 c45202        	and	a,20994
 814  0047               L113:
 815  0047 c75202        	ld	20994,a
 816                     ; 159 }
 819  004a 5b03          	addw	sp,#3
 820  004c 81            	ret	
 821  004d               LC002:
 822  004d 89            	pushw	x
 823  004e 5f            	clrw	x
 824  004f 89            	pushw	x
 825  0050 ae0000        	ldw	x,#L102
 826  0053 cd0000        	call	_assert_failed
 828  0056 5b04          	addw	sp,#4
 829  0058 81            	ret	
 861                     ; 166 void SPI_SendData(uint8_t Data)
 861                     ; 167 {
 862                     .text:	section	.text,new
 863  0000               _SPI_SendData:
 867                     ; 168   SPI->DR = Data; /* Write in the DR register the data to be sent*/
 869  0000 c75204        	ld	20996,a
 870                     ; 169 }
 873  0003 81            	ret	
 896                     ; 176 uint8_t SPI_ReceiveData(void)
 896                     ; 177 {
 897                     .text:	section	.text,new
 898  0000               _SPI_ReceiveData:
 902                     ; 178   return ((uint8_t)SPI->DR); /* Return the data in the DR register*/
 904  0000 c65204        	ld	a,20996
 907  0003 81            	ret	
 944                     ; 187 void SPI_NSSInternalSoftwareCmd(FunctionalState NewState)
 944                     ; 188 {
 945                     .text:	section	.text,new
 946  0000               _SPI_NSSInternalSoftwareCmd:
 948  0000 88            	push	a
 949       00000000      OFST:	set	0
 952                     ; 190   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 954  0001 4d            	tnz	a
 955  0002 2711          	jreq	L061
 956  0004 4a            	dec	a
 957  0005 270e          	jreq	L061
 958  0007 ae00be        	ldw	x,#190
 959  000a 89            	pushw	x
 960  000b 5f            	clrw	x
 961  000c 89            	pushw	x
 962  000d ae0000        	ldw	x,#L102
 963  0010 cd0000        	call	_assert_failed
 965  0013 5b04          	addw	sp,#4
 966  0015               L061:
 967                     ; 192   if (NewState != DISABLE)
 969  0015 7b01          	ld	a,(OFST+1,sp)
 970  0017 2706          	jreq	L553
 971                     ; 194     SPI->CR2 |= SPI_CR2_SSI; /* Set NSS pin internally by software*/
 973  0019 72105201      	bset	20993,#0
 975  001d 2004          	jra	L753
 976  001f               L553:
 977                     ; 198     SPI->CR2 &= (uint8_t)(~SPI_CR2_SSI); /* Reset NSS pin internally by software*/
 979  001f 72115201      	bres	20993,#0
 980  0023               L753:
 981                     ; 200 }
 984  0023 84            	pop	a
 985  0024 81            	ret	
1008                     ; 207 void SPI_TransmitCRC(void)
1008                     ; 208 {
1009                     .text:	section	.text,new
1010  0000               _SPI_TransmitCRC:
1014                     ; 209   SPI->CR2 |= SPI_CR2_CRCNEXT; /* Enable the CRC transmission*/
1016  0000 72185201      	bset	20993,#4
1017                     ; 210 }
1020  0004 81            	ret	
1057                     ; 218 void SPI_CalculateCRCCmd(FunctionalState NewState)
1057                     ; 219 {
1058                     .text:	section	.text,new
1059  0000               _SPI_CalculateCRCCmd:
1061  0000 88            	push	a
1062       00000000      OFST:	set	0
1065                     ; 221   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1067  0001 4d            	tnz	a
1068  0002 2711          	jreq	L471
1069  0004 4a            	dec	a
1070  0005 270e          	jreq	L471
1071  0007 ae00dd        	ldw	x,#221
1072  000a 89            	pushw	x
1073  000b 5f            	clrw	x
1074  000c 89            	pushw	x
1075  000d ae0000        	ldw	x,#L102
1076  0010 cd0000        	call	_assert_failed
1078  0013 5b04          	addw	sp,#4
1079  0015               L471:
1080                     ; 223   if (NewState != DISABLE)
1082  0015 7b01          	ld	a,(OFST+1,sp)
1083  0017 2706          	jreq	L704
1084                     ; 225     SPI->CR2 |= SPI_CR2_CRCEN; /* Enable the CRC calculation*/
1086  0019 721a5201      	bset	20993,#5
1088  001d 2004          	jra	L114
1089  001f               L704:
1090                     ; 229     SPI->CR2 &= (uint8_t)(~SPI_CR2_CRCEN); /* Disable the CRC calculation*/
1092  001f 721b5201      	bres	20993,#5
1093  0023               L114:
1094                     ; 231 }
1097  0023 84            	pop	a
1098  0024 81            	ret	
1161                     ; 238 uint8_t SPI_GetCRC(SPI_CRC_TypeDef SPI_CRC)
1161                     ; 239 {
1162                     .text:	section	.text,new
1163  0000               _SPI_GetCRC:
1165  0000 88            	push	a
1166  0001 88            	push	a
1167       00000001      OFST:	set	1
1170                     ; 240   uint8_t crcreg = 0;
1172                     ; 243   assert_param(IS_SPI_CRC_OK(SPI_CRC));
1174  0002 a101          	cp	a,#1
1175  0004 2711          	jreq	L602
1176  0006 4d            	tnz	a
1177  0007 270e          	jreq	L602
1178  0009 ae00f3        	ldw	x,#243
1179  000c 89            	pushw	x
1180  000d 5f            	clrw	x
1181  000e 89            	pushw	x
1182  000f ae0000        	ldw	x,#L102
1183  0012 cd0000        	call	_assert_failed
1185  0015 5b04          	addw	sp,#4
1186  0017               L602:
1187                     ; 245   if (SPI_CRC != SPI_CRC_RX)
1189  0017 7b02          	ld	a,(OFST+1,sp)
1190  0019 2705          	jreq	L344
1191                     ; 247     crcreg = SPI->TXCRCR;  /* Get the Tx CRC register*/
1193  001b c65207        	ld	a,20999
1196  001e 2003          	jra	L544
1197  0020               L344:
1198                     ; 251     crcreg = SPI->RXCRCR; /* Get the Rx CRC register*/
1200  0020 c65206        	ld	a,20998
1202  0023               L544:
1203                     ; 255   return crcreg;
1207  0023 85            	popw	x
1208  0024 81            	ret	
1233                     ; 263 void SPI_ResetCRC(void)
1233                     ; 264 {
1234                     .text:	section	.text,new
1235  0000               _SPI_ResetCRC:
1239                     ; 267   SPI_CalculateCRCCmd(ENABLE);
1241  0000 a601          	ld	a,#1
1242  0002 cd0000        	call	_SPI_CalculateCRCCmd
1244                     ; 270   SPI_Cmd(ENABLE);
1246  0005 a601          	ld	a,#1
1248                     ; 271 }
1251  0007 cc0000        	jp	_SPI_Cmd
1275                     ; 278 uint8_t SPI_GetCRCPolynomial(void)
1275                     ; 279 {
1276                     .text:	section	.text,new
1277  0000               _SPI_GetCRCPolynomial:
1281                     ; 280   return SPI->CRCPR; /* Return the CRC polynomial register */
1283  0000 c65205        	ld	a,20997
1286  0003 81            	ret	
1343                     ; 288 void SPI_BiDirectionalLineConfig(SPI_Direction_TypeDef SPI_Direction)
1343                     ; 289 {
1344                     .text:	section	.text,new
1345  0000               _SPI_BiDirectionalLineConfig:
1347  0000 88            	push	a
1348       00000000      OFST:	set	0
1351                     ; 291   assert_param(IS_SPI_DIRECTION_OK(SPI_Direction));
1353  0001 4d            	tnz	a
1354  0002 2711          	jreq	L032
1355  0004 4a            	dec	a
1356  0005 270e          	jreq	L032
1357  0007 ae0123        	ldw	x,#291
1358  000a 89            	pushw	x
1359  000b 5f            	clrw	x
1360  000c 89            	pushw	x
1361  000d ae0000        	ldw	x,#L102
1362  0010 cd0000        	call	_assert_failed
1364  0013 5b04          	addw	sp,#4
1365  0015               L032:
1366                     ; 293   if (SPI_Direction != SPI_DIRECTION_RX)
1368  0015 7b01          	ld	a,(OFST+1,sp)
1369  0017 2706          	jreq	L515
1370                     ; 295     SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
1372  0019 721c5201      	bset	20993,#6
1374  001d 2004          	jra	L715
1375  001f               L515:
1376                     ; 299     SPI->CR2 &= (uint8_t)(~SPI_CR2_BDOE); /* Set the Rx only mode*/
1378  001f 721d5201      	bres	20993,#6
1379  0023               L715:
1380                     ; 301 }
1383  0023 84            	pop	a
1384  0024 81            	ret	
1506                     ; 311 FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
1506                     ; 312 {
1507                     .text:	section	.text,new
1508  0000               _SPI_GetFlagStatus:
1510  0000 88            	push	a
1511  0001 88            	push	a
1512       00000001      OFST:	set	1
1515                     ; 313   FlagStatus status = RESET;
1517                     ; 315   assert_param(IS_SPI_FLAGS_OK(SPI_FLAG));
1519  0002 a140          	cp	a,#64
1520  0004 2726          	jreq	L242
1521  0006 a120          	cp	a,#32
1522  0008 2722          	jreq	L242
1523  000a a110          	cp	a,#16
1524  000c 271e          	jreq	L242
1525  000e a108          	cp	a,#8
1526  0010 271a          	jreq	L242
1527  0012 a102          	cp	a,#2
1528  0014 2716          	jreq	L242
1529  0016 a101          	cp	a,#1
1530  0018 2712          	jreq	L242
1531  001a a180          	cp	a,#128
1532  001c 270e          	jreq	L242
1533  001e ae013b        	ldw	x,#315
1534  0021 89            	pushw	x
1535  0022 5f            	clrw	x
1536  0023 89            	pushw	x
1537  0024 ae0000        	ldw	x,#L102
1538  0027 cd0000        	call	_assert_failed
1540  002a 5b04          	addw	sp,#4
1541  002c               L242:
1542                     ; 318   if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
1544  002c c65203        	ld	a,20995
1545  002f 1502          	bcp	a,(OFST+1,sp)
1546  0031 2704          	jreq	L575
1547                     ; 320     status = SET; /* SPI_FLAG is set */
1549  0033 a601          	ld	a,#1
1552  0035 2001          	jra	L775
1553  0037               L575:
1554                     ; 324     status = RESET; /* SPI_FLAG is reset*/
1556  0037 4f            	clr	a
1558  0038               L775:
1559                     ; 328   return status;
1563  0038 85            	popw	x
1564  0039 81            	ret	
1600                     ; 346 void SPI_ClearFlag(SPI_Flag_TypeDef SPI_FLAG)
1600                     ; 347 {
1601                     .text:	section	.text,new
1602  0000               _SPI_ClearFlag:
1604  0000 88            	push	a
1605       00000000      OFST:	set	0
1608                     ; 348   assert_param(IS_SPI_CLEAR_FLAGS_OK(SPI_FLAG));
1610  0001 a110          	cp	a,#16
1611  0003 2712          	jreq	L452
1612  0005 a108          	cp	a,#8
1613  0007 270e          	jreq	L452
1614  0009 ae015c        	ldw	x,#348
1615  000c 89            	pushw	x
1616  000d 5f            	clrw	x
1617  000e 89            	pushw	x
1618  000f ae0000        	ldw	x,#L102
1619  0012 cd0000        	call	_assert_failed
1621  0015 5b04          	addw	sp,#4
1622  0017               L452:
1623                     ; 350   SPI->SR = (uint8_t)(~SPI_FLAG);
1625  0017 7b01          	ld	a,(OFST+1,sp)
1626  0019 43            	cpl	a
1627  001a c75203        	ld	20995,a
1628                     ; 351 }
1631  001d 84            	pop	a
1632  001e 81            	ret	
1707                     ; 366 ITStatus SPI_GetITStatus(SPI_IT_TypeDef SPI_IT)
1707                     ; 367 {
1708                     .text:	section	.text,new
1709  0000               _SPI_GetITStatus:
1711  0000 88            	push	a
1712  0001 89            	pushw	x
1713       00000002      OFST:	set	2
1716                     ; 368   ITStatus pendingbitstatus = RESET;
1718                     ; 369   uint8_t itpos = 0;
1720                     ; 370   uint8_t itmask1 = 0;
1722                     ; 371   uint8_t itmask2 = 0;
1724                     ; 372   uint8_t enablestatus = 0;
1726                     ; 373   assert_param(IS_SPI_GET_IT_OK(SPI_IT));
1728  0002 a165          	cp	a,#101
1729  0004 2722          	jreq	L662
1730  0006 a155          	cp	a,#85
1731  0008 271e          	jreq	L662
1732  000a a145          	cp	a,#69
1733  000c 271a          	jreq	L662
1734  000e a134          	cp	a,#52
1735  0010 2716          	jreq	L662
1736  0012 a117          	cp	a,#23
1737  0014 2712          	jreq	L662
1738  0016 a106          	cp	a,#6
1739  0018 270e          	jreq	L662
1740  001a ae0175        	ldw	x,#373
1741  001d 89            	pushw	x
1742  001e 5f            	clrw	x
1743  001f 89            	pushw	x
1744  0020 ae0000        	ldw	x,#L102
1745  0023 cd0000        	call	_assert_failed
1747  0026 5b04          	addw	sp,#4
1748  0028               L662:
1749                     ; 375   itpos = (uint8_t)((uint8_t)1 << ((uint8_t)SPI_IT & (uint8_t)0x0F));
1751  0028 7b03          	ld	a,(OFST+1,sp)
1752  002a a40f          	and	a,#15
1753  002c 5f            	clrw	x
1754  002d 97            	ld	xl,a
1755  002e a601          	ld	a,#1
1756  0030 5d            	tnzw	x
1757  0031 2704          	jreq	L272
1758  0033               L472:
1759  0033 48            	sll	a
1760  0034 5a            	decw	x
1761  0035 26fc          	jrne	L472
1762  0037               L272:
1763  0037 6b01          	ld	(OFST-1,sp),a
1765                     ; 378   itmask1 = (uint8_t)((uint8_t)SPI_IT >> (uint8_t)4);
1767  0039 7b03          	ld	a,(OFST+1,sp)
1768  003b 4e            	swap	a
1769  003c a40f          	and	a,#15
1770  003e 6b02          	ld	(OFST+0,sp),a
1772                     ; 380   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
1774  0040 5f            	clrw	x
1775  0041 97            	ld	xl,a
1776  0042 a601          	ld	a,#1
1777  0044 5d            	tnzw	x
1778  0045 2704          	jreq	L672
1779  0047               L003:
1780  0047 48            	sll	a
1781  0048 5a            	decw	x
1782  0049 26fc          	jrne	L003
1783  004b               L672:
1785                     ; 382   enablestatus = (uint8_t)((uint8_t)SPI->SR & itmask2);
1787  004b c45203        	and	a,20995
1788  004e 6b02          	ld	(OFST+0,sp),a
1790                     ; 384   if (((SPI->ICR & itpos) != RESET) && enablestatus)
1792  0050 c65202        	ld	a,20994
1793  0053 1501          	bcp	a,(OFST-1,sp)
1794  0055 2708          	jreq	L156
1796  0057 7b02          	ld	a,(OFST+0,sp)
1797  0059 2704          	jreq	L156
1798                     ; 387     pendingbitstatus = SET;
1800  005b a601          	ld	a,#1
1803  005d 2001          	jra	L356
1804  005f               L156:
1805                     ; 392     pendingbitstatus = RESET;
1807  005f 4f            	clr	a
1809  0060               L356:
1810                     ; 395   return  pendingbitstatus;
1814  0060 5b03          	addw	sp,#3
1815  0062 81            	ret	
1859                     ; 412 void SPI_ClearITPendingBit(SPI_IT_TypeDef SPI_IT)
1859                     ; 413 {
1860                     .text:	section	.text,new
1861  0000               _SPI_ClearITPendingBit:
1863  0000 88            	push	a
1864  0001 88            	push	a
1865       00000001      OFST:	set	1
1868                     ; 414   uint8_t itpos = 0;
1870                     ; 415   assert_param(IS_SPI_CLEAR_IT_OK(SPI_IT));
1872  0002 a145          	cp	a,#69
1873  0004 2712          	jreq	L013
1874  0006 a134          	cp	a,#52
1875  0008 270e          	jreq	L013
1876  000a ae019f        	ldw	x,#415
1877  000d 89            	pushw	x
1878  000e 5f            	clrw	x
1879  000f 89            	pushw	x
1880  0010 ae0000        	ldw	x,#L102
1881  0013 cd0000        	call	_assert_failed
1883  0016 5b04          	addw	sp,#4
1884  0018               L013:
1885                     ; 420   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)(SPI_IT & (uint8_t)0xF0) >> 4));
1887  0018 7b02          	ld	a,(OFST+1,sp)
1888  001a 4e            	swap	a
1889  001b a40f          	and	a,#15
1890  001d 5f            	clrw	x
1891  001e 97            	ld	xl,a
1892  001f a601          	ld	a,#1
1893  0021 5d            	tnzw	x
1894  0022 2704          	jreq	L413
1895  0024               L613:
1896  0024 48            	sll	a
1897  0025 5a            	decw	x
1898  0026 26fc          	jrne	L613
1899  0028               L413:
1901                     ; 422   SPI->SR = (uint8_t)(~itpos);
1903  0028 43            	cpl	a
1904  0029 c75203        	ld	20995,a
1905                     ; 424 }
1908  002c 85            	popw	x
1909  002d 81            	ret	
1922                     	xdef	_SPI_ClearITPendingBit
1923                     	xdef	_SPI_GetITStatus
1924                     	xdef	_SPI_ClearFlag
1925                     	xdef	_SPI_GetFlagStatus
1926                     	xdef	_SPI_BiDirectionalLineConfig
1927                     	xdef	_SPI_GetCRCPolynomial
1928                     	xdef	_SPI_ResetCRC
1929                     	xdef	_SPI_GetCRC
1930                     	xdef	_SPI_CalculateCRCCmd
1931                     	xdef	_SPI_TransmitCRC
1932                     	xdef	_SPI_NSSInternalSoftwareCmd
1933                     	xdef	_SPI_ReceiveData
1934                     	xdef	_SPI_SendData
1935                     	xdef	_SPI_ITConfig
1936                     	xdef	_SPI_Cmd
1937                     	xdef	_SPI_Init
1938                     	xdef	_SPI_DeInit
1939                     	xref	_assert_failed
1940                     .const:	section	.text
1941  0000               L102:
1942  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
1943  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
1944  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
1945  0036 5f7370692e63  	dc.b	"_spi.c",0
1965                     	end
