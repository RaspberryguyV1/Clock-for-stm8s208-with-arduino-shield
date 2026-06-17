   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
   4                     ; Optimizer V4.5.6 - 18 Jul 2023
  22                     	switch	.data
  23  0000               _CarRet:
  24  0000 00            	dc.b	0
  25                     .bit:	section	.data,bit
  26  0000               _zegar_zyje:
  27  0000 00            	dc.b	0
  28                     	switch	.data
  29  0001               _tick_ms:
  30  0001 0000          	dc.w	0
  31  0003               _month:
  32  0003 001f          	dc.w	31
  33  0005 001c          	dc.w	28
  34  0007 001f          	dc.w	31
  35  0009 001e          	dc.w	30
  36  000b 001f          	dc.w	31
  37  000d 001e          	dc.w	30
  38  000f 001f          	dc.w	31
  39  0011 001f          	dc.w	31
  40  0013 001e          	dc.w	30
  41  0015 001f          	dc.w	31
  42  0017 001e          	dc.w	30
  43  0019 001f          	dc.w	31
  44  001b               _day:
  45  001b 0000          	dc.w	0
  46  001d               _days:
  47  001d 0000          	dc.w	0
  48  001f 0000          	dc.w	0
  49  0021 0000          	dc.w	0
  50  0023 0000          	dc.w	0
  51  0025               _hour:
  52  0025 0000          	dc.w	0
  53  0027               _hours:
  54  0027 0000          	dc.w	0
  55  0029 0000          	dc.w	0
  56  002b 0000          	dc.w	0
  57  002d 0000          	dc.w	0
  58  002f               _minute:
  59  002f 0000          	dc.w	0
  60  0031               _minutes:
  61  0031 0000          	dc.w	0
  62  0033 0000          	dc.w	0
  63  0035 0000          	dc.w	0
  64  0037 0000          	dc.w	0
  65  0039               _second:
  66  0039 0001          	dc.w	1
  67  003b               _seconds:
  68  003b 0000          	dc.w	0
  69  003d 0000          	dc.w	0
  70  003f 0000          	dc.w	0
  71  0041 0000          	dc.w	0
  72  0043               _current_month:
  73  0043 0000          	dc.w	0
  74  0045               _months:
  75  0045 0000          	dc.w	0
  76  0047 0000          	dc.w	0
  77  0049 0000          	dc.w	0
  78  004b 0000          	dc.w	0
  79  004d               _year:
  80  004d 0000          	dc.w	0
  81  004f               _cyfra0:
  82  004f 0000          	dc.w	0
  83  0051               _cyfra1:
  84  0051 0000          	dc.w	0
  85  0053               _cyfra2:
  86  0053 0000          	dc.w	0
  87  0055               _cyfra3:
  88  0055 0000          	dc.w	0
  89  0057               _clock_state:
  90  0057 0000          	dc.w	0
  91  0059               _krok_diod:
  92  0059 0000          	dc.w	0
  93  005b               _manual_clock_state:
  94  005b 0000          	dc.w	0
  95  005d               _intigers:
  96  005d 0000          	dc.w	0
  97  005f 0000          	dc.w	0
  98  0061 0000          	dc.w	0
  99  0063 0000          	dc.w	0
 100  0065               _period:
 101  0065 03e7          	dc.w	999
 102  0067               _time:
 103  0067 01f3          	dc.w	499
 104  0069               _segm_dec:
 105  0069 03            	dc.b	3
 106  006a 9f            	dc.b	159
 107  006b 25            	dc.b	37
 108  006c 0d            	dc.b	13
 109  006d 99            	dc.b	153
 110  006e 49            	dc.b	73
 111  006f 41            	dc.b	65
 112  0070 1f            	dc.b	31
 113  0071 01            	dc.b	1
 114  0072 09            	dc.b	9
 144                     ; 86 void segm_init(void)
 144                     ; 87 {
 146                     .text:	section	.text,new
 147  0000               _segm_init:
 151                     ; 88 	GPIO_Init(GPIOD,GPIO_PIN_3,GPIO_MODE_OUT_PP_LOW_FAST);	//SDI
 153  0000 4be0          	push	#224
 154  0002 4b08          	push	#8
 155  0004 ae500f        	ldw	x,#20495
 156  0007 cd0000        	call	_GPIO_Init
 158  000a 85            	popw	x
 159                     ; 89 	GPIO_Init(GPIOC,GPIO_PIN_3,GPIO_MODE_OUT_PP_LOW_FAST);	//SFTCLK
 161  000b 4be0          	push	#224
 162  000d 4b08          	push	#8
 163  000f ae500a        	ldw	x,#20490
 164  0012 cd0000        	call	_GPIO_Init
 166  0015 85            	popw	x
 167                     ; 90 	GPIO_Init(GPIOG,GPIO_PIN_0,GPIO_MODE_OUT_PP_LOW_FAST);	//LCHCLK
 169  0016 4be0          	push	#224
 170  0018 4b01          	push	#1
 171  001a ae501e        	ldw	x,#20510
 172  001d cd0000        	call	_GPIO_Init
 174  0020 85            	popw	x
 175                     ; 91 }
 178  0021 81            	ret	
 219                     ; 93 void segm_shift(char shift)
 219                     ; 94 {
 220                     .text:	section	.text,new
 221  0000               _segm_shift:
 223  0000 88            	push	a
 224  0001 88            	push	a
 225       00000001      OFST:	set	1
 228                     ; 97  for (i = 0; i < 8; ++i)
 230  0002 0f01          	clr	(OFST+0,sp)
 232  0004               L73:
 233                     ; 99    if (shift & 1)
 235  0004 7b02          	ld	a,(OFST+1,sp)
 236  0006 a501          	bcp	a,#1
 237  0008 270a          	jreq	L54
 238                     ; 100     GPIO_WriteHigh(GPIOD,GPIO_PIN_3); //SDI=1
 240  000a 4b08          	push	#8
 241  000c ae500f        	ldw	x,#20495
 242  000f cd0000        	call	_GPIO_WriteHigh
 245  0012 2008          	jra	L74
 246  0014               L54:
 247                     ; 102     GPIO_WriteLow(GPIOD,GPIO_PIN_3); //SDI=0
 249  0014 4b08          	push	#8
 250  0016 ae500f        	ldw	x,#20495
 251  0019 cd0000        	call	_GPIO_WriteLow
 253  001c               L74:
 254  001c 84            	pop	a
 255                     ; 103 	 GPIO_WriteHigh(GPIOC,GPIO_PIN_3);
 257  001d 4b08          	push	#8
 258  001f ae500a        	ldw	x,#20490
 259  0022 cd0000        	call	_GPIO_WriteHigh
 261  0025 84            	pop	a
 262                     ; 104 	 GPIO_WriteLow(GPIOC,GPIO_PIN_3);
 264  0026 4b08          	push	#8
 265  0028 ae500a        	ldw	x,#20490
 266  002b cd0000        	call	_GPIO_WriteLow
 268  002e 84            	pop	a
 269                     ; 107   shift >>= 1;
 271  002f 0402          	srl	(OFST+1,sp)
 272                     ; 97  for (i = 0; i < 8; ++i)
 274  0031 0c01          	inc	(OFST+0,sp)
 278  0033 7b01          	ld	a,(OFST+0,sp)
 279  0035 a108          	cp	a,#8
 280  0037 25cb          	jrult	L73
 281                     ; 109 }
 284  0039 85            	popw	x
 285  003a 81            	ret	
 327                     ; 111 void segm_latch(char pos, char val)
 327                     ; 112 {	
 328                     .text:	section	.text,new
 329  0000               _segm_latch:
 331  0000 89            	pushw	x
 332       00000000      OFST:	set	0
 335                     ; 113  segm_shift(val);
 337  0001 9f            	ld	a,xl
 338  0002 cd0000        	call	_segm_shift
 340                     ; 114  segm_shift(0x80 >> pos);
 342  0005 7b01          	ld	a,(OFST+1,sp)
 343  0007 5f            	clrw	x
 344  0008 97            	ld	xl,a
 345  0009 a680          	ld	a,#128
 346  000b 5d            	tnzw	x
 347  000c 2704          	jreq	L43
 348  000e               L63:
 349  000e 44            	srl	a
 350  000f 5a            	decw	x
 351  0010 26fc          	jrne	L63
 352  0012               L43:
 353  0012 cd0000        	call	_segm_shift
 355                     ; 115 	GPIO_WriteHigh(GPIOG,GPIO_PIN_0);
 357  0015 4b01          	push	#1
 358  0017 ae501e        	ldw	x,#20510
 359  001a cd0000        	call	_GPIO_WriteHigh
 361  001d 84            	pop	a
 362                     ; 116 	GPIO_WriteLow(GPIOG,GPIO_PIN_0);
 364  001e 4b01          	push	#1
 365  0020 ae501e        	ldw	x,#20510
 366  0023 cd0000        	call	_GPIO_WriteLow
 368                     ; 118 }
 371  0026 5b03          	addw	sp,#3
 372  0028 81            	ret	
 414                     ; 121 void convertNumber(int number, int numbersArray[]){
 415                     .text:	section	.text,new
 416  0000               _convertNumber:
 418  0000 89            	pushw	x
 419       00000000      OFST:	set	0
 422                     ; 122 	if(number >9999){
 424  0001 a32710        	cpw	x,#10000
 425  0004 2f05          	jrslt	L701
 426                     ; 123 		number = 9999;
 428  0006 ae270f        	ldw	x,#9999
 429  0009 1f01          	ldw	(OFST+1,sp),x
 430  000b               L701:
 431                     ; 125 	numbersArray[0] = (number / 1000)%10;
 433  000b 1e01          	ldw	x,(OFST+1,sp)
 434  000d 90ae03e8      	ldw	y,#1000
 435  0011 cd0000        	call	c_idiv
 437  0014 a60a          	ld	a,#10
 438  0016 cd0000        	call	c_smodx
 440  0019 1605          	ldw	y,(OFST+5,sp)
 441  001b 90ff          	ldw	(y),x
 442                     ; 126 	numbersArray[1] = (number / 100)%10;
 444  001d a664          	ld	a,#100
 445  001f 1e01          	ldw	x,(OFST+1,sp)
 446  0021 cd0000        	call	c_sdivx
 448  0024 a60a          	ld	a,#10
 449  0026 cd0000        	call	c_smodx
 451  0029 90ef02        	ldw	(2,y),x
 452                     ; 127 	numbersArray[2] = (number / 10)%10;
 454  002c a60a          	ld	a,#10
 455  002e 1e01          	ldw	x,(OFST+1,sp)
 456  0030 cd0000        	call	c_sdivx
 458  0033 a60a          	ld	a,#10
 459  0035 cd0000        	call	c_smodx
 461  0038 90ef04        	ldw	(4,y),x
 462                     ; 128 	numbersArray[3] = number%10;
 464  003b a60a          	ld	a,#10
 465  003d 1e01          	ldw	x,(OFST+1,sp)
 466  003f cd0000        	call	c_smodx
 468  0042 90ef06        	ldw	(6,y),x
 469                     ; 130 }
 472  0045 85            	popw	x
 473  0046 81            	ret	
 499                     ; 131 void refreshSegm(void){//odswierza ekran 
 500                     .text:	section	.text,new
 501  0000               _refreshSegm:
 505                     ; 132 	segm_latch(0, segm_dec[intigers[0]]);
 507  0000 ce005d        	ldw	x,_intigers
 508  0003 d60069        	ld	a,(_segm_dec,x)
 509  0006 5f            	clrw	x
 510  0007 97            	ld	xl,a
 511  0008 cd0000        	call	_segm_latch
 513                     ; 133 	segm_latch(1, segm_dec[intigers[1]]);
 515  000b ce005f        	ldw	x,_intigers+2
 516  000e d60069        	ld	a,(_segm_dec,x)
 517  0011 ae0100        	ldw	x,#256
 518  0014 97            	ld	xl,a
 519  0015 cd0000        	call	_segm_latch
 521                     ; 134 	segm_latch(2, segm_dec[intigers[2]]);
 523  0018 ce0061        	ldw	x,_intigers+4
 524  001b d60069        	ld	a,(_segm_dec,x)
 525  001e ae0200        	ldw	x,#512
 526  0021 97            	ld	xl,a
 527  0022 cd0000        	call	_segm_latch
 529                     ; 135 	segm_latch(3, segm_dec[intigers[3]]);
 531  0025 ce0063        	ldw	x,_intigers+6
 532  0028 d60069        	ld	a,(_segm_dec,x)
 533  002b ae0300        	ldw	x,#768
 534  002e 97            	ld	xl,a
 536                     ; 136 }
 539  002f cc0000        	jp	_segm_latch
 574                     ; 138 void tx_put(uint8_t c)
 574                     ; 139 {
 575                     .text:	section	.text,new
 576  0000               _tx_put:
 578  0000 88            	push	a
 579       00000000      OFST:	set	0
 582                     ; 140  tx_buff[tx_wr] = c;// Zapisz znak do bufora na pozycji wskaznika tx_wr
 584  0001 c6000a        	ld	a,_tx_wr
 585  0004 5f            	clrw	x
 586  0005 97            	ld	xl,a
 587  0006 7b01          	ld	a,(OFST+1,sp)
 588  0008 d70023        	ld	(_tx_buff,x),a
 589                     ; 141  if (++tx_wr >= TX_SIZE) tx_wr = 0;// Przesun wskaznik zapisu. Jesli koniec tablicy, wroc na poczatek
 591  000b 725c000a      	inc	_tx_wr
 592  000f c6000a        	ld	a,_tx_wr
 593  0012 a160          	cp	a,#96
 594  0014 2504          	jrult	L531
 597  0016 725f000a      	clr	_tx_wr
 598  001a               L531:
 599                     ; 142  UART1_ITConfig(UART1_IT_TXE, ENABLE);//Wlacz przerwanie od pustego rejestru nadawczego (rozpocznij wysylanie)  
 601  001a 4b01          	push	#1
 602  001c ae0277        	ldw	x,#631
 603  001f cd0000        	call	_UART1_ITConfig
 605                     ; 143 }
 608  0022 5b02          	addw	sp,#2
 609  0024 81            	ret	
 643                     ; 144 uint8_t tx_get(void)//unkcja pobiera jeden znak z bufora nadawczego (uzywana w przerwaniu)
 643                     ; 145 {
 644                     .text:	section	.text,new
 645  0000               _tx_get:
 647  0000 88            	push	a
 648       00000001      OFST:	set	1
 651                     ; 146  uint8_t c = tx_buff[tx_rd];// Pobierz znak z bufora z pozycji wskaznika tx_rd
 653  0001 c60009        	ld	a,_tx_rd
 654  0004 5f            	clrw	x
 655  0005 97            	ld	xl,a
 656  0006 d60023        	ld	a,(_tx_buff,x)
 657  0009 6b01          	ld	(OFST+0,sp),a
 659                     ; 147  if (++tx_rd >= TX_SIZE) tx_rd = 0;// Przesun wskaznik odczytu. Jesli koniec tablicy, wroc na poczatek
 661  000b 725c0009      	inc	_tx_rd
 662  000f c60009        	ld	a,_tx_rd
 663  0012 a160          	cp	a,#96
 664  0014 2504          	jrult	L351
 667  0016 725f0009      	clr	_tx_rd
 668  001a               L351:
 669                     ; 148  return c;// Zwroc pobrany znak
 671  001a 7b01          	ld	a,(OFST+0,sp)
 674  001c 5b01          	addw	sp,#1
 675  001e 81            	ret	
 700                     ; 151 uint8_t tx_cnt(void)
 700                     ; 152 {
 701                     .text:	section	.text,new
 702  0000               _tx_cnt:
 706                     ; 153  if (tx_wr != tx_rd)// Jesli wskaznik zapisu jest rozny od wskaznika odczytu, to znaczy ze sa dane
 708  0000 c6000a        	ld	a,_tx_wr
 709  0003 c10009        	cp	a,_tx_rd
 710  0006 2703          	jreq	L561
 711                     ; 154   return 1;
 713  0008 a601          	ld	a,#1
 716  000a 81            	ret	
 717  000b               L561:
 718                     ; 156   return 0;
 720  000b 4f            	clr	a
 723  000c 81            	ret	
 758                     ; 159 void rx_put(char c)
 758                     ; 160 {
 759                     .text:	section	.text,new
 760  0000               _rx_put:
 762  0000 88            	push	a
 763       00000000      OFST:	set	0
 766                     ; 161     if (c == 13) // Enter
 768  0001 a10d          	cp	a,#13
 769  0003 2606          	jrne	L502
 770                     ; 163         CarRet = 1;// Wykryto Enter, ustaw flage na 1 (pêtla glowna to zauwazy)
 772  0005 35010000      	mov	_CarRet,#1
 774  0009 2021          	jra	L702
 775  000b               L502:
 776                     ; 165     else if (c >= ' ' && rx_wr < RX_SIZE)// Jesli znak to zwykla litera/cyfra i jest miejsce w buforze 
 778  000b a120          	cp	a,#32
 779  000d 251d          	jrult	L702
 781  000f c60008        	ld	a,_rx_wr
 782  0012 a118          	cp	a,#24
 783  0014 2416          	jruge	L702
 784                     ; 167         rx_buff[rx_wr] = c;// Zapisz znak do bufora na pozycji rx_wr
 786  0016 5f            	clrw	x
 787  0017 97            	ld	xl,a
 788  0018 7b01          	ld	a,(OFST+1,sp)
 789  001a d70083        	ld	(_rx_buff,x),a
 790                     ; 168         if (++rx_wr >= RX_SIZE) rx_wr = 0;// Przesun wskaznik zapisu. Jesli koniec tablicy, wroc na poczatek
 792  001d 725c0008      	inc	_rx_wr
 793  0021 c60008        	ld	a,_rx_wr
 794  0024 a118          	cp	a,#24
 795  0026 2504          	jrult	L702
 798  0028 725f0008      	clr	_rx_wr
 799  002c               L702:
 800                     ; 170 }
 803  002c 84            	pop	a
 804  002d 81            	ret	
 840                     ; 172 void send_string(const char* s)
 840                     ; 173 {
 841                     .text:	section	.text,new
 842  0000               _send_string:
 844  0000 89            	pushw	x
 845       00000000      OFST:	set	0
 848  0001 2006          	jra	L532
 849  0003               L332:
 850                     ; 174  while (*s) tx_put(*s++);// Dopoki nie trafimy na koniec napisu, wysylaj znak po znaku przez tx_put
 852  0003 5c            	incw	x
 853  0004 1f01          	ldw	(OFST+1,sp),x
 854  0006 cd0000        	call	_tx_put
 856  0009               L532:
 859  0009 1e01          	ldw	x,(OFST+1,sp)
 860  000b f6            	ld	a,(x)
 861  000c 26f5          	jrne	L332
 862                     ; 175 }
 865  000e 85            	popw	x
 866  000f 81            	ret	
 899                     ; 178 void dekoduj_czas(void)
 899                     ; 179 {
 900                     .text:	section	.text,new
 901  0000               _dekoduj_czas:
 903  0000 5206          	subw	sp,#6
 904       00000006      OFST:	set	6
 907                     ; 181     hour=(rx_buff[0]  - '0') * 10 + (rx_buff[1]  - '0');
 909  0002 5f            	clrw	x
 910  0003 c60084        	ld	a,_rx_buff+1
 911  0006 2a01          	jrpl	L001
 912  0008 53            	cplw	x
 913  0009               L001:
 914  0009 97            	ld	xl,a
 915  000a 1d0030        	subw	x,#48
 916  000d 1f05          	ldw	(OFST-1,sp),x
 918  000f 5f            	clrw	x
 919  0010 c60083        	ld	a,_rx_buff
 920  0013 2a01          	jrpl	L201
 921  0015 53            	cplw	x
 922  0016               L201:
 923  0016 cd0137        	call	LC001
 924  0019 72fb05        	addw	x,(OFST-1,sp)
 925  001c cf0025        	ldw	_hour,x
 926                     ; 182     minute=(rx_buff[3]  - '0') * 10 + (rx_buff[4]  - '0');
 928  001f 5f            	clrw	x
 929  0020 c60087        	ld	a,_rx_buff+4
 930  0023 2a01          	jrpl	L401
 931  0025 53            	cplw	x
 932  0026               L401:
 933  0026 97            	ld	xl,a
 934  0027 1d0030        	subw	x,#48
 935  002a 1f05          	ldw	(OFST-1,sp),x
 937  002c 5f            	clrw	x
 938  002d c60086        	ld	a,_rx_buff+3
 939  0030 2a01          	jrpl	L601
 940  0032 53            	cplw	x
 941  0033               L601:
 942  0033 cd0137        	call	LC001
 943  0036 72fb05        	addw	x,(OFST-1,sp)
 944  0039 cf002f        	ldw	_minute,x
 945                     ; 183     second=(rx_buff[6]  - '0') * 10 + (rx_buff[7]  - '0');
 947  003c 5f            	clrw	x
 948  003d c6008a        	ld	a,_rx_buff+7
 949  0040 2a01          	jrpl	L011
 950  0042 53            	cplw	x
 951  0043               L011:
 952  0043 97            	ld	xl,a
 953  0044 1d0030        	subw	x,#48
 954  0047 1f05          	ldw	(OFST-1,sp),x
 956  0049 5f            	clrw	x
 957  004a c60089        	ld	a,_rx_buff+6
 958  004d 2a01          	jrpl	L211
 959  004f 53            	cplw	x
 960  0050               L211:
 961  0050 cd0137        	call	LC001
 962  0053 72fb05        	addw	x,(OFST-1,sp)
 963  0056 cf0039        	ldw	_second,x
 964                     ; 184     day=(rx_buff[9]  - '0') * 10 + (rx_buff[10] - '0');
 966  0059 5f            	clrw	x
 967  005a c6008d        	ld	a,_rx_buff+10
 968  005d 2a01          	jrpl	L411
 969  005f 53            	cplw	x
 970  0060               L411:
 971  0060 97            	ld	xl,a
 972  0061 1d0030        	subw	x,#48
 973  0064 1f05          	ldw	(OFST-1,sp),x
 975  0066 5f            	clrw	x
 976  0067 c6008c        	ld	a,_rx_buff+9
 977  006a 2a01          	jrpl	L611
 978  006c 53            	cplw	x
 979  006d               L611:
 980  006d cd0137        	call	LC001
 981  0070 72fb05        	addw	x,(OFST-1,sp)
 982  0073 cf001b        	ldw	_day,x
 983                     ; 185     current_month=(rx_buff[12] - '0') * 10 + (rx_buff[13] - '0');
 985  0076 5f            	clrw	x
 986  0077 c60090        	ld	a,_rx_buff+13
 987  007a 2a01          	jrpl	L021
 988  007c 53            	cplw	x
 989  007d               L021:
 990  007d 97            	ld	xl,a
 991  007e 1d0030        	subw	x,#48
 992  0081 1f05          	ldw	(OFST-1,sp),x
 994  0083 5f            	clrw	x
 995  0084 c6008f        	ld	a,_rx_buff+12
 996  0087 2a01          	jrpl	L221
 997  0089 53            	cplw	x
 998  008a               L221:
 999  008a cd0137        	call	LC001
1000  008d 72fb05        	addw	x,(OFST-1,sp)
1001  0090 cf0043        	ldw	_current_month,x
1002                     ; 186     year=(rx_buff[15] - '0') * 1000 + (rx_buff[16] - '0') * 100 + (rx_buff[17] - '0') * 10 + (rx_buff[18] - '0');
1004  0093 5f            	clrw	x
1005  0094 c60095        	ld	a,_rx_buff+18
1006  0097 2a01          	jrpl	L421
1007  0099 53            	cplw	x
1008  009a               L421:
1009  009a 97            	ld	xl,a
1010  009b 1d0030        	subw	x,#48
1011  009e 1f05          	ldw	(OFST-1,sp),x
1013  00a0 5f            	clrw	x
1014  00a1 c60094        	ld	a,_rx_buff+17
1015  00a4 2a01          	jrpl	L621
1016  00a6 53            	cplw	x
1017  00a7               L621:
1018  00a7 cd0137        	call	LC001
1019  00aa 1f03          	ldw	(OFST-3,sp),x
1021  00ac 5f            	clrw	x
1022  00ad c60093        	ld	a,_rx_buff+16
1023  00b0 2a01          	jrpl	L031
1024  00b2 53            	cplw	x
1025  00b3               L031:
1026  00b3 97            	ld	xl,a
1027  00b4 a664          	ld	a,#100
1028  00b6 cd0000        	call	c_bmulx
1030  00b9 1d12c0        	subw	x,#4800
1031  00bc 1f01          	ldw	(OFST-5,sp),x
1033  00be 5f            	clrw	x
1034  00bf c60092        	ld	a,_rx_buff+15
1035  00c2 2a01          	jrpl	L231
1036  00c4 53            	cplw	x
1037  00c5               L231:
1038  00c5 97            	ld	xl,a
1039  00c6 90ae03e8      	ldw	y,#1000
1040  00ca cd0000        	call	c_imul
1042  00cd 1dbb80        	subw	x,#48000
1043  00d0 72fb01        	addw	x,(OFST-5,sp)
1044  00d3 72fb03        	addw	x,(OFST-3,sp)
1045  00d6 72fb05        	addw	x,(OFST-1,sp)
1046  00d9 cf004d        	ldw	_year,x
1047                     ; 190     if (hour > 23 || minute > 59 || second > 59 || current_month < 1 || current_month > 12 || year > 3000) {
1049  00dc ce0025        	ldw	x,_hour
1050  00df a30018        	cpw	x,#24
1051  00e2 2422          	jruge	L352
1053  00e4 ce002f        	ldw	x,_minute
1054  00e7 a3003c        	cpw	x,#60
1055  00ea 241a          	jruge	L352
1057  00ec ce0039        	ldw	x,_second
1058  00ef a3003c        	cpw	x,#60
1059  00f2 2412          	jruge	L352
1061  00f4 ce0043        	ldw	x,_current_month
1062  00f7 270d          	jreq	L352
1064  00f9 a3000d        	cpw	x,#13
1065  00fc 2408          	jruge	L352
1067  00fe ce004d        	ldw	x,_year
1068  0101 a30bb9        	cpw	x,#3001
1069  0104 2507          	jrult	L152
1070  0106               L352:
1071                     ; 191         hour = 0;
1073  0106 ad39          	call	LC002
1074                     ; 197         send_string("BLAD: Zly format danych. Wpisz ponownie.\r\n");
1076  0108 ae008a        	ldw	x,#L562
1078                     ; 198         return;
1080  010b 201b          	jra	L572
1081  010d               L152:
1082                     ; 202     if (day < 1 || day > month[current_month - 1]) {//Bierze dane o ilosci dni w miesiacu, jesli sie nie zgada, zeruje
1084  010d ce001b        	ldw	x,_day
1085  0110 2711          	jreq	L172
1087  0112 ce0043        	ldw	x,_current_month
1088  0115 5a            	decw	x
1089  0116 58            	sllw	x
1090  0117 9093          	ldw	y,x
1091  0119 90de0003      	ldw	y,(_month,y)
1092  011d 90c3001b      	cpw	y,_day
1093  0121 240b          	jruge	L762
1094  0123               L172:
1095                     ; 203         hour = 0; minute = 0; second = 0; day = 0; current_month = 0; year = 0; //reset
1097  0123 ad1c          	call	LC002
1098                     ; 204         send_string("BLAD: Ten miesiac nie ma tylu dni\r\n");
1100  0125 ae0066        	ldw	x,#L372
1103  0128               L572:
1104  0128 cd0000        	call	_send_string
1105                     ; 211 }
1108  012b 5b06          	addw	sp,#6
1109  012d 81            	ret	
1110  012e               L762:
1111                     ; 208         zegar_zyje = true;// Zezwolenie na start sekundnika i sekwencji diod
1113  012e 72100000      	bset	_zegar_zyje
1114                     ; 209         send_string("Zegarek Zyje!\r\n");
1116  0132 ae0056        	ldw	x,#L772
1118  0135 20f1          	jra	L572
1119  0137               LC001:
1120  0137 97            	ld	xl,a
1121  0138 a60a          	ld	a,#10
1122  013a cd0000        	call	c_bmulx
1124  013d 1d01e0        	subw	x,#480
1125  0140 81            	ret	
1126  0141               LC002:
1127  0141 5f            	clrw	x
1128  0142 cf0025        	ldw	_hour,x
1129                     ; 203         hour = 0; minute = 0; second = 0; day = 0; current_month = 0; year = 0; //reset
1131  0145 cf002f        	ldw	_minute,x
1134  0148 cf0039        	ldw	_second,x
1137  014b cf001b        	ldw	_day,x
1140  014e cf0043        	ldw	_current_month,x
1143  0151 cf004d        	ldw	_year,x
1144  0154 81            	ret	
1174                     ; 214 void TIM2_Config(void)
1174                     ; 215 {
1175                     .text:	section	.text,new
1176  0000               _TIM2_Config:
1180                     ; 216  TIM2_TimeBaseInit(TIM2_PRESCALER_2, period); 
1182  0000 ce0065        	ldw	x,_period
1183  0003 89            	pushw	x
1184  0004 a601          	ld	a,#1
1185  0006 cd0000        	call	_TIM2_TimeBaseInit
1187  0009 85            	popw	x
1188                     ; 217  TIM2_OC1Init(TIM2_OCMODE_PWM1, TIM2_OUTPUTSTATE_ENABLE,time, TIM2_OCPOLARITY_HIGH); 
1190  000a 4b00          	push	#0
1191  000c ce0067        	ldw	x,_time
1192  000f 89            	pushw	x
1193  0010 ae6011        	ldw	x,#24593
1194  0013 cd0000        	call	_TIM2_OC1Init
1196  0016 5b03          	addw	sp,#3
1197                     ; 218  TIM2_OC1PreloadConfig(ENABLE);
1199  0018 a601          	ld	a,#1
1200  001a cd0000        	call	_TIM2_OC1PreloadConfig
1202                     ; 219  TIM2_ARRPreloadConfig(ENABLE);
1204  001d a601          	ld	a,#1
1205  001f cd0000        	call	_TIM2_ARRPreloadConfig
1207                     ; 220  TIM2_Cmd(ENABLE);
1209  0022 a601          	ld	a,#1
1211                     ; 221 }
1214  0024 cc0000        	jp	_TIM2_Cmd
1277                     ; 223 void main(void)
1277                     ; 224 {
1278                     .text:	section	.text,new
1279  0000               _main:
1283                     ; 225  segm_init();
1285  0000 cd0000        	call	_segm_init
1287                     ; 228    GPIO_Init(GPIOC, GPIO_PIN_5, GPIO_MODE_OUT_PP_LOW_FAST); // D1
1289  0003 4be0          	push	#224
1290  0005 4b20          	push	#32
1291  0007 ae500a        	ldw	x,#20490
1292  000a cd0000        	call	_GPIO_Init
1294  000d 85            	popw	x
1295                     ; 229    GPIO_Init(GPIOC, GPIO_PIN_7, GPIO_MODE_OUT_PP_LOW_FAST); // D2
1297  000e 4be0          	push	#224
1298  0010 4b80          	push	#128
1299  0012 ae500a        	ldw	x,#20490
1300  0015 cd0000        	call	_GPIO_Init
1302  0018 85            	popw	x
1303                     ; 230    GPIO_Init(GPIOC, GPIO_PIN_6, GPIO_MODE_OUT_PP_LOW_FAST); // D3
1305  0019 4be0          	push	#224
1306  001b 4b40          	push	#64
1307  001d ae500a        	ldw	x,#20490
1308  0020 cd0000        	call	_GPIO_Init
1310  0023 85            	popw	x
1311                     ; 231    GPIO_Init(GPIOE, GPIO_PIN_5, GPIO_MODE_OUT_PP_LOW_FAST); // D4
1313  0024 4be0          	push	#224
1314  0026 4b20          	push	#32
1315  0028 ae5014        	ldw	x,#20500
1316  002b cd0000        	call	_GPIO_Init
1318  002e 85            	popw	x
1319                     ; 234 	GPIO_Init(GPIOB, GPIO_PIN_4, GPIO_MODE_IN_FL_IT); //S1
1321  002f 4b20          	push	#32
1322  0031 4b10          	push	#16
1323  0033 ae5005        	ldw	x,#20485
1324  0036 cd0000        	call	_GPIO_Init
1326  0039 85            	popw	x
1327                     ; 235 	GPIO_Init(GPIOB, GPIO_PIN_3, GPIO_MODE_IN_FL_IT); //S2
1329  003a 4b20          	push	#32
1330  003c 4b08          	push	#8
1331  003e ae5005        	ldw	x,#20485
1332  0041 cd0000        	call	_GPIO_Init
1334  0044 85            	popw	x
1335                     ; 237 	EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOB, EXTI_SENSITIVITY_RISE_FALL);
1337  0045 ae0103        	ldw	x,#259
1338  0048 cd0000        	call	_EXTI_SetExtIntSensitivity
1340                     ; 239 	GPIO_Init(GPIOD, GPIO_PIN_5, GPIO_MODE_OUT_PP_HIGH_FAST); // PD5 TX
1342  004b 4bf0          	push	#240
1343  004d 4b20          	push	#32
1344  004f ae500f        	ldw	x,#20495
1345  0052 cd0000        	call	_GPIO_Init
1347  0055 85            	popw	x
1348                     ; 240   GPIO_Init(GPIOD, GPIO_PIN_6, GPIO_MODE_IN_PU_NO_IT);   // PD6 RX
1350  0056 4b40          	push	#64
1351  0058 4b40          	push	#64
1352  005a ae500f        	ldw	x,#20495
1353  005d cd0000        	call	_GPIO_Init
1355  0060 85            	popw	x
1356                     ; 241 	UART1_Init((uint32_t)9600, UART1_WORDLENGTH_8D, UART1_STOPBITS_1, UART1_PARITY_NO, UART1_SYNCMODE_CLOCK_DISABLE, UART1_MODE_TXRX_ENABLE);
1358  0061 4b0c          	push	#12
1359  0063 4b80          	push	#128
1360  0065 4b00          	push	#0
1361  0067 4b00          	push	#0
1362  0069 4b00          	push	#0
1363  006b ae2580        	ldw	x,#9600
1364  006e 89            	pushw	x
1365  006f 5f            	clrw	x
1366  0070 89            	pushw	x
1367  0071 cd0000        	call	_UART1_Init
1369  0074 5b09          	addw	sp,#9
1370                     ; 242   UART1_ITConfig(UART1_IT_RXNE_OR, ENABLE);
1372  0076 cd0325        	call	LC013
1373                     ; 244  TIM2_Config();
1375  0079 cd0000        	call	_TIM2_Config
1377                     ; 245   GPIO_Init(GPIOC,GPIO_PIN_1,GPIO_MODE_OUT_PP_LOW_FAST);
1379  007c 4be0          	push	#224
1380  007e 4b02          	push	#2
1381  0080 ae500a        	ldw	x,#20490
1382  0083 cd0000        	call	_GPIO_Init
1384  0086 85            	popw	x
1385                     ; 246 	GPIO_WriteHigh(GPIOC, GPIO_PIN_1); 
1387  0087 4b02          	push	#2
1388  0089 ae500a        	ldw	x,#20490
1389  008c cd0000        	call	_GPIO_WriteHigh
1391  008f ae0000        	ldw	x,#L723
1392  0092 84            	pop	a
1393                     ; 247 	send_string("Zegarek nie zyje. Ustaw aktualny czas i date (GG:MM:SS DD.MM.RRRR) i kliknij Enter:\r\n");
1395  0093 cd0000        	call	_send_string
1397                     ; 249 	TIM4_TimeBaseInit(TIM4_PRESCALER_16,124); //Odliczanie 1ms
1399  0096 ae047c        	ldw	x,#1148
1400  0099 cd0000        	call	_TIM4_TimeBaseInit
1402                     ; 250 	TIM4_ClearFlag(TIM4_FLAG_UPDATE);
1404  009c a601          	ld	a,#1
1405  009e cd0000        	call	_TIM4_ClearFlag
1407                     ; 251 	TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
1409  00a1 ae0101        	ldw	x,#257
1410  00a4 cd0000        	call	_TIM4_ITConfig
1412                     ; 252 	TIM4_Cmd(ENABLE);
1414  00a7 a601          	ld	a,#1
1415  00a9 cd0000        	call	_TIM4_Cmd
1417                     ; 253 	enableInterrupts();
1420  00ac 9a            	rim	
1422  00ad               L133:
1423                     ; 256   if (CarRet == 1)
1425  00ad c60000        	ld	a,_CarRet
1426  00b0 4a            	dec	a
1427  00b1 2623          	jrne	L533
1428                     ; 258       dekoduj_czas(); 
1430  00b3 cd0000        	call	_dekoduj_czas
1432                     ; 259 			for(ind = 0; ind < RX_SIZE; ind++) //Czyszczenie calego bufora ze starych znakow, aby nie zafalszowac kolejnego wpisu
1434  00b6 4f            	clr	a
1435  00b7 c70007        	ld	_ind,a
1436  00ba               L733:
1437                     ; 261           rx_buff[ind] = 0; 
1439  00ba 5f            	clrw	x
1440  00bb 97            	ld	xl,a
1441  00bc 724f0083      	clr	(_rx_buff,x)
1442                     ; 259 			for(ind = 0; ind < RX_SIZE; ind++) //Czyszczenie calego bufora ze starych znakow, aby nie zafalszowac kolejnego wpisu
1444  00c0 725c0007      	inc	_ind
1447  00c4 c60007        	ld	a,_ind
1448  00c7 a118          	cp	a,#24
1449  00c9 25ef          	jrult	L733
1450                     ; 263 		 rx_wr = 0;
1452  00cb 725f0008      	clr	_rx_wr
1453                     ; 264       CarRet = 0;   
1455  00cf 725f0000      	clr	_CarRet
1456                     ; 265       UART1_ITConfig(UART1_IT_RXNE_OR, ENABLE); 
1458  00d3 cd0325        	call	LC013
1459  00d6               L533:
1460                     ; 268   if ((hour == 0 || hour == 24) && (minute == 0 || minute == 60) && (second ==00 || second == 60)) {
1462  00d6 ce0025        	ldw	x,_hour
1463  00d9 2705          	jreq	L743
1465  00db a30018        	cpw	x,#24
1466  00de 2634          	jrne	L543
1467  00e0               L743:
1469  00e0 ce002f        	ldw	x,_minute
1470  00e3 2705          	jreq	L153
1472  00e5 a3003c        	cpw	x,#60
1473  00e8 262a          	jrne	L543
1474  00ea               L153:
1476  00ea ce0039        	ldw	x,_second
1477  00ed 2705          	jreq	L353
1479  00ef a3003c        	cpw	x,#60
1480  00f2 2620          	jrne	L543
1481  00f4               L353:
1482                     ; 269 	  if(GPIO_ReadInputPin(GPIOD,GPIO_PIN_4) == RESET) { 
1484  00f4 4b10          	push	#16
1485  00f6 ae500f        	ldw	x,#20495
1486  00f9 cd0000        	call	_GPIO_ReadInputPin
1488  00fc 5b01          	addw	sp,#1
1489  00fe 4d            	tnz	a
1490  00ff 260a          	jrne	L553
1491                     ; 270 	    GPIO_WriteHigh(GPIOC, GPIO_PIN_1); 
1493  0101 4b02          	push	#2
1494  0103 ae500a        	ldw	x,#20490
1495  0106 cd0000        	call	_GPIO_WriteHigh
1498  0109 2008          	jp	LC003
1499  010b               L553:
1500                     ; 273 	   GPIO_WriteLow(GPIOC, GPIO_PIN_1); 
1502  010b 4b02          	push	#2
1503  010d ae500a        	ldw	x,#20490
1504  0110 cd0000        	call	_GPIO_WriteLow
1506  0113               LC003:
1507  0113 84            	pop	a
1508  0114               L543:
1509                     ; 276 	if (manual_clock_state != 1) {
1511  0114 ce005b        	ldw	x,_manual_clock_state
1512  0117 5a            	decw	x
1513  0118 2705          	jreq	L163
1514                     ; 277         current_display_state = manual_clock_state; 
1516  011a ce005b        	ldw	x,_manual_clock_state
1518  011d 2003          	jra	L363
1519  011f               L163:
1520                     ; 279         current_display_state = clock_state; 
1522  011f ce0057        	ldw	x,_clock_state
1523  0122               L363:
1524  0122 cf0005        	ldw	_current_display_state,x
1525                     ; 281 	switch(current_display_state){
1528                     ; 299 			break;
1529  0125 2731          	jreq	L513
1530  0127 5a            	decw	x
1531  0128 2705          	jreq	L113
1532  012a 5a            	decw	x
1533  012b 2714          	jreq	L313
1534  012d 2041          	jra	L763
1535  012f               L113:
1536                     ; 282 		case 1:
1536                     ; 283 			intigers[2] = seconds[2];
1538  012f ce003f        	ldw	x,_seconds+4
1539  0132 cf0061        	ldw	_intigers+4,x
1540                     ; 284 			intigers[3] = seconds[3];
1542  0135 ce0041        	ldw	x,_seconds+6
1543  0138 cf0063        	ldw	_intigers+6,x
1544                     ; 285 			intigers[0] = 0;
1546  013b 5f            	clrw	x
1547  013c cf005d        	ldw	_intigers,x
1548                     ; 286 			intigers[1] = 0;
1549                     ; 287 			break;
1551  013f 202c          	jp	LC004
1552  0141               L313:
1553                     ; 288 		case 2:
1553                     ; 289 			intigers[2] = days[2];
1555  0141 ce0021        	ldw	x,_days+4
1556  0144 cf0061        	ldw	_intigers+4,x
1557                     ; 290 			intigers[3] = days[3];
1559  0147 ce0023        	ldw	x,_days+6
1560  014a cf0063        	ldw	_intigers+6,x
1561                     ; 291 			intigers[0] = months[2];
1563  014d ce0049        	ldw	x,_months+4
1564  0150 cf005d        	ldw	_intigers,x
1565                     ; 292 			intigers[1] = months[3];
1567  0153 ce004b        	ldw	x,_months+6
1568                     ; 293 			break;
1570  0156 2015          	jp	LC004
1571  0158               L513:
1572                     ; 294 		case 0:
1572                     ; 295 			intigers[2] = minutes[2];
1574  0158 ce0035        	ldw	x,_minutes+4
1575  015b cf0061        	ldw	_intigers+4,x
1576                     ; 296 			intigers[3] = minutes[3];
1578  015e ce0037        	ldw	x,_minutes+6
1579  0161 cf0063        	ldw	_intigers+6,x
1580                     ; 297 			intigers[0] = hours[2];
1582  0164 ce002b        	ldw	x,_hours+4
1583  0167 cf005d        	ldw	_intigers,x
1584                     ; 298 			intigers[1] = hours[3];
1586  016a ce002d        	ldw	x,_hours+6
1587  016d               LC004:
1589  016d cf005f        	ldw	_intigers+2,x
1590                     ; 299 			break;
1592  0170               L763:
1593                     ; 302 	refreshSegm();
1595  0170 cd0000        	call	_refreshSegm
1597                     ; 303 	if(tick_ms >= 1000 && zegar_zyje == true){
1599  0173 ce0001        	ldw	x,_tick_ms
1600  0176 a303e8        	cpw	x,#1000
1601  0179 2403cc00ad    	jrult	L133
1603  017e 72010000f8    	btjf	_zegar_zyje,L133
1604                     ; 304 		tick_ms = 0;
1606  0183 5f            	clrw	x
1607  0184 cf0001        	ldw	_tick_ms,x
1608                     ; 305 		second++;
1610  0187 ce0039        	ldw	x,_second
1611  018a 5c            	incw	x
1612  018b cf0039        	ldw	_second,x
1613                     ; 308 		if (krok_diod == 0) {       // Krok 1: Tylko D1 (Low = ON, High = OFF)
1615  018e ce0059        	ldw	x,_krok_diod
1616  0191 260d          	jrne	L373
1617                     ; 309 			GPIO_WriteLow(GPIOC, GPIO_PIN_5);
1619  0193 cd0311        	call	LC011
1620                     ; 310 			GPIO_WriteHigh(GPIOC, GPIO_PIN_7);
1622  0196 4b80          	push	#128
1623  0198 ae500a        	ldw	x,#20490
1624  019b cd0000        	call	_GPIO_WriteHigh
1626                     ; 311 			GPIO_WriteHigh(GPIOC, GPIO_PIN_6);
1628                     ; 312 			GPIO_WriteHigh(GPIOE, GPIO_PIN_5);
1631  019e 2010          	jp	LC010
1632  01a0               L373:
1633                     ; 314 		else if (krok_diod == 1) {  // Krok 2: D1, D2
1635  01a0 a30001        	cpw	x,#1
1636  01a3 2616          	jrne	L773
1637                     ; 315 			GPIO_WriteLow(GPIOC, GPIO_PIN_5);
1639  01a5 cd0311        	call	LC011
1640                     ; 316 			GPIO_WriteLow(GPIOC, GPIO_PIN_7);
1642  01a8 4b80          	push	#128
1643  01aa ae500a        	ldw	x,#20490
1644  01ad cd0000        	call	_GPIO_WriteLow
1646                     ; 317 			GPIO_WriteHigh(GPIOC, GPIO_PIN_6);
1648  01b0               LC010:
1649  01b0 84            	pop	a
1651  01b1 4b40          	push	#64
1652  01b3 ae500a        	ldw	x,#20490
1653  01b6 cd0000        	call	_GPIO_WriteHigh
1655                     ; 318 			GPIO_WriteHigh(GPIOE, GPIO_PIN_5);
1658  01b9 2019          	jp	LC009
1659  01bb               L773:
1660                     ; 320 		else if (krok_diod == 2) {  // Krok 3: D1, D2, D3
1662  01bb a30002        	cpw	x,#2
1663  01be 261f          	jrne	L304
1664                     ; 321 			GPIO_WriteLow(GPIOC, GPIO_PIN_5);
1666  01c0 cd0311        	call	LC011
1667                     ; 322 			GPIO_WriteLow(GPIOC, GPIO_PIN_7);
1669  01c3 4b80          	push	#128
1670  01c5 ae500a        	ldw	x,#20490
1671  01c8 cd0000        	call	_GPIO_WriteLow
1673  01cb 84            	pop	a
1674                     ; 323 			GPIO_WriteLow(GPIOC, GPIO_PIN_6);
1676  01cc 4b40          	push	#64
1677  01ce ae500a        	ldw	x,#20490
1678  01d1 cd0000        	call	_GPIO_WriteLow
1680                     ; 324 			GPIO_WriteHigh(GPIOE, GPIO_PIN_5);
1682  01d4               LC009:
1683  01d4 84            	pop	a
1686  01d5 4b20          	push	#32
1687  01d7 ae5014        	ldw	x,#20500
1688  01da cd0000        	call	_GPIO_WriteHigh
1691  01dd 2064          	jp	LC005
1692  01df               L304:
1693                     ; 326 		else if (krok_diod == 3) {  // Krok 4: D1, D2, D3, D4 (Wszystkie œwiec¹)
1695  01df a30003        	cpw	x,#3
1696  01e2 261c          	jrne	L704
1697                     ; 327 			GPIO_WriteLow(GPIOC, GPIO_PIN_5);
1699  01e4 4b20          	push	#32
1700  01e6 ae500a        	ldw	x,#20490
1701  01e9 cd0000        	call	_GPIO_WriteLow
1703                     ; 328 			GPIO_WriteLow(GPIOC, GPIO_PIN_7);
1705  01ec               LC008:
1706  01ec 84            	pop	a
1708  01ed 4b80          	push	#128
1709  01ef ae500a        	ldw	x,#20490
1710  01f2 cd0000        	call	_GPIO_WriteLow
1712                     ; 329 			GPIO_WriteLow(GPIOC, GPIO_PIN_6);
1714  01f5               LC007:
1715  01f5 84            	pop	a
1718  01f6 4b40          	push	#64
1719  01f8 ae500a        	ldw	x,#20490
1720  01fb cd0000        	call	_GPIO_WriteLow
1722                     ; 330 			GPIO_WriteLow(GPIOE, GPIO_PIN_5);
1725  01fe 203a          	jp	LC006
1726  0200               L704:
1727                     ; 332 		else if (krok_diod == 4) {  // Krok 5: D2, D3, D4 (D1 zgaszona)
1729  0200 a30004        	cpw	x,#4
1730  0203 260a          	jrne	L314
1731                     ; 333 			GPIO_WriteHigh(GPIOC, GPIO_PIN_5);
1733  0205 4b20          	push	#32
1734  0207 ae500a        	ldw	x,#20490
1735  020a cd0000        	call	_GPIO_WriteHigh
1737                     ; 334 			GPIO_WriteLow(GPIOC, GPIO_PIN_7);
1739                     ; 335 			GPIO_WriteLow(GPIOC, GPIO_PIN_6);
1741                     ; 336 			GPIO_WriteLow(GPIOE, GPIO_PIN_5);
1744  020d 20dd          	jp	LC008
1745  020f               L314:
1746                     ; 338 		else if (krok_diod == 5) {  // Krok 6: D3, D4
1748  020f a30005        	cpw	x,#5
1749  0212 260d          	jrne	L714
1750                     ; 339 			GPIO_WriteHigh(GPIOC, GPIO_PIN_5);
1752  0214 cd031b        	call	LC012
1753                     ; 340 			GPIO_WriteHigh(GPIOC, GPIO_PIN_7);
1755  0217 4b80          	push	#128
1756  0219 ae500a        	ldw	x,#20490
1757  021c cd0000        	call	_GPIO_WriteHigh
1759                     ; 341 			GPIO_WriteLow(GPIOC, GPIO_PIN_6);
1761                     ; 342 			GPIO_WriteLow(GPIOE, GPIO_PIN_5);
1764  021f 20d4          	jp	LC007
1765  0221               L714:
1766                     ; 344 		else if (krok_diod == 6) {  // Krok 7: Tylko D4
1768  0221 a30006        	cpw	x,#6
1769  0224 2621          	jrne	L573
1770                     ; 345 			GPIO_WriteHigh(GPIOC, GPIO_PIN_5);
1772  0226 cd031b        	call	LC012
1773                     ; 346 			GPIO_WriteHigh(GPIOC, GPIO_PIN_7);
1775  0229 4b80          	push	#128
1776  022b ae500a        	ldw	x,#20490
1777  022e cd0000        	call	_GPIO_WriteHigh
1779  0231 84            	pop	a
1780                     ; 347 			GPIO_WriteHigh(GPIOC, GPIO_PIN_6);
1782  0232 4b40          	push	#64
1783  0234 ae500a        	ldw	x,#20490
1784  0237 cd0000        	call	_GPIO_WriteHigh
1786                     ; 348 			GPIO_WriteLow(GPIOE, GPIO_PIN_5);
1788  023a               LC006:
1789  023a 84            	pop	a
1793  023b 4b20          	push	#32
1794  023d ae5014        	ldw	x,#20500
1795  0240 cd0000        	call	_GPIO_WriteLow
1797  0243               LC005:
1798  0243 ce0059        	ldw	x,_krok_diod
1799  0246 84            	pop	a
1800  0247               L573:
1801                     ; 352 		krok_diod++;
1803  0247 5c            	incw	x
1804                     ; 353 		if (krok_diod >= 7) {
1806  0248 a30007        	cpw	x,#7
1807  024b 2501          	jrult	L524
1808                     ; 354 			krok_diod = 0;
1810  024d 5f            	clrw	x
1811  024e               L524:
1812  024e cf0059        	ldw	_krok_diod,x
1813                     ; 357 		if(second%3 == 0){
1815  0251 a603          	ld	a,#3
1816  0253 ce0039        	ldw	x,_second
1817  0256 62            	div	x,a
1818  0257 5f            	clrw	x
1819  0258 97            	ld	xl,a
1820  0259 5d            	tnzw	x
1821  025a 260c          	jrne	L724
1822                     ; 358 			clock_state = (clock_state+1)%3;
1824  025c ce0057        	ldw	x,_clock_state
1825  025f 5c            	incw	x
1826  0260 a603          	ld	a,#3
1827  0262 62            	div	x,a
1828  0263 5f            	clrw	x
1829  0264 97            	ld	xl,a
1830  0265 cf0057        	ldw	_clock_state,x
1831  0268               L724:
1832                     ; 360 		if (manual_clock_state != 0) {
1834  0268 ce005b        	ldw	x,_manual_clock_state
1835  026b 2705          	jreq	L134
1836                     ; 361 			current_display_state = manual_clock_state; 
1838  026d ce005b        	ldw	x,_manual_clock_state
1840  0270 2003          	jra	L334
1841  0272               L134:
1842                     ; 363 			current_display_state = clock_state; 
1844  0272 ce0057        	ldw	x,_clock_state
1845  0275               L334:
1846  0275 cf0005        	ldw	_current_display_state,x
1847                     ; 365 		if(second >=60){
1849  0278 ce0039        	ldw	x,_second
1850  027b a3003c        	cpw	x,#60
1851  027e 2557          	jrult	L534
1852                     ; 366 			second = 0;
1854  0280 5f            	clrw	x
1855  0281 cf0039        	ldw	_second,x
1856                     ; 367 			minute++;
1858  0284 ce002f        	ldw	x,_minute
1859  0287 5c            	incw	x
1860  0288 cf002f        	ldw	_minute,x
1861                     ; 368 			if(minute >= 60){
1863  028b a3003c        	cpw	x,#60
1864  028e 2547          	jrult	L534
1865                     ; 369 				minute = 0;
1867  0290 5f            	clrw	x
1868  0291 cf002f        	ldw	_minute,x
1869                     ; 370 				hour++;
1871  0294 ce0025        	ldw	x,_hour
1872  0297 5c            	incw	x
1873  0298 cf0025        	ldw	_hour,x
1874                     ; 372 				if(hour >= 24){
1876  029b a30018        	cpw	x,#24
1877  029e 2537          	jrult	L534
1878                     ; 373 					day++;
1880  02a0 ce001b        	ldw	x,_day
1881  02a3 5c            	incw	x
1882  02a4 cf001b        	ldw	_day,x
1883                     ; 374 					hour = 0;
1885  02a7 5f            	clrw	x
1886  02a8 cf0025        	ldw	_hour,x
1887                     ; 375 					if(day > month[current_month-1]){
1889  02ab ce0043        	ldw	x,_current_month
1890  02ae 5a            	decw	x
1891  02af 58            	sllw	x
1892  02b0 9093          	ldw	y,x
1893  02b2 90de0003      	ldw	y,(_month,y)
1894  02b6 90c3001b      	cpw	y,_day
1895  02ba 241b          	jruge	L534
1896                     ; 376 						current_month++;
1898  02bc ce0043        	ldw	x,_current_month
1899  02bf 5c            	incw	x
1900  02c0 cf0043        	ldw	_current_month,x
1901                     ; 377 						day = 1;
1903  02c3 ae0001        	ldw	x,#1
1904  02c6 cf001b        	ldw	_day,x
1905                     ; 378 						if(current_month >=13){
1907  02c9 ce0043        	ldw	x,_current_month
1908  02cc a3000d        	cpw	x,#13
1909  02cf 2506          	jrult	L534
1910                     ; 379 							current_month = 1;
1912  02d1 ae0001        	ldw	x,#1
1913  02d4 cf0043        	ldw	_current_month,x
1914  02d7               L534:
1915                     ; 385 		convertNumber(second,seconds);
1917  02d7 ae003b        	ldw	x,#_seconds
1918  02da 89            	pushw	x
1919  02db ce0039        	ldw	x,_second
1920  02de cd0000        	call	_convertNumber
1922  02e1 85            	popw	x
1923                     ; 386 		convertNumber(minute,minutes);
1925  02e2 ae0031        	ldw	x,#_minutes
1926  02e5 89            	pushw	x
1927  02e6 ce002f        	ldw	x,_minute
1928  02e9 cd0000        	call	_convertNumber
1930  02ec 85            	popw	x
1931                     ; 387 		convertNumber(hour, hours);
1933  02ed ae0027        	ldw	x,#_hours
1934  02f0 89            	pushw	x
1935  02f1 ce0025        	ldw	x,_hour
1936  02f4 cd0000        	call	_convertNumber
1938  02f7 85            	popw	x
1939                     ; 388 		convertNumber(day, days);
1941  02f8 ae001d        	ldw	x,#_days
1942  02fb 89            	pushw	x
1943  02fc ce001b        	ldw	x,_day
1944  02ff cd0000        	call	_convertNumber
1946  0302 85            	popw	x
1947                     ; 389 		convertNumber(current_month, months);
1949  0303 ae0045        	ldw	x,#_months
1950  0306 89            	pushw	x
1951  0307 ce0043        	ldw	x,_current_month
1952  030a cd0000        	call	_convertNumber
1954  030d 85            	popw	x
1955  030e cc00ad        	jra	L133
1956  0311               LC011:
1957  0311 4b20          	push	#32
1958  0313 ae500a        	ldw	x,#20490
1959  0316 cd0000        	call	_GPIO_WriteLow
1961  0319 84            	pop	a
1962  031a 81            	ret	
1963  031b               LC012:
1964  031b 4b20          	push	#32
1965  031d ae500a        	ldw	x,#20490
1966  0320 cd0000        	call	_GPIO_WriteHigh
1968  0323 84            	pop	a
1969  0324 81            	ret	
1970  0325               LC013:
1971  0325 4b01          	push	#1
1972  0327 ae0205        	ldw	x,#517
1973  032a cd0000        	call	_UART1_ITConfig
1975  032d 84            	pop	a
1976  032e 81            	ret	
2011                     ; 395 void assert_failed(u8* file, u32 line)
2011                     ; 396 { 
2012                     .text:	section	.text,new
2013  0000               _assert_failed:
2017  0000               L564:
2018  0000 20fe          	jra	L564
2331                     	xdef	_main
2332                     	xdef	_TIM2_Config
2333                     	xdef	_dekoduj_czas
2334                     	xdef	_send_string
2335                     	xdef	_rx_put
2336                     	xdef	_tx_cnt
2337                     	xdef	_tx_get
2338                     	xdef	_tx_put
2339                     	xdef	_refreshSegm
2340                     	xdef	_convertNumber
2341                     	xdef	_segm_latch
2342                     	xdef	_segm_shift
2343                     	xdef	_segm_init
2344                     	switch	.bss
2345  0000               _segm_pos:
2346  0000 00            	ds.b	1
2347                     	xdef	_segm_pos
2348  0001               _segm_val:
2349  0001 00000000      	ds.b	4
2350                     	xdef	_segm_val
2351                     	xdef	_segm_dec
2352                     	xdef	_time
2353                     	xdef	_period
2354                     	xdef	_intigers
2355  0005               _current_display_state:
2356  0005 0000          	ds.b	2
2357                     	xdef	_current_display_state
2358                     	xdef	_manual_clock_state
2359                     	xdef	_krok_diod
2360                     	xdef	_clock_state
2361                     	xdef	_cyfra3
2362                     	xdef	_cyfra2
2363                     	xdef	_cyfra1
2364                     	xdef	_cyfra0
2365                     	xdef	_year
2366                     	xdef	_months
2367                     	xdef	_current_month
2368                     	xdef	_seconds
2369                     	xdef	_second
2370                     	xdef	_minutes
2371                     	xdef	_minute
2372                     	xdef	_hours
2373                     	xdef	_hour
2374                     	xdef	_days
2375                     	xdef	_day
2376                     	xdef	_month
2377                     	xdef	_tick_ms
2378                     	xdef	_zegar_zyje
2379  0007               _ind:
2380  0007 00            	ds.b	1
2381                     	xdef	_ind
2382                     	xdef	_CarRet
2383  0008               _rx_wr:
2384  0008 00            	ds.b	1
2385                     	xdef	_rx_wr
2386  0009               _tx_rd:
2387  0009 00            	ds.b	1
2388                     	xdef	_tx_rd
2389  000a               _tx_wr:
2390  000a 00            	ds.b	1
2391                     	xdef	_tx_wr
2392  000b               _rx_comand:
2393  000b 000000000000  	ds.b	24
2394                     	xdef	_rx_comand
2395  0023               _tx_buff:
2396  0023 000000000000  	ds.b	96
2397                     	xdef	_tx_buff
2398  0083               _rx_buff:
2399  0083 000000000000  	ds.b	24
2400                     	xdef	_rx_buff
2401                     	xdef	_assert_failed
2402                     	xref	_UART1_ITConfig
2403                     	xref	_UART1_Init
2404                     	xref	_TIM4_ClearFlag
2405                     	xref	_TIM4_ITConfig
2406                     	xref	_TIM4_Cmd
2407                     	xref	_TIM4_TimeBaseInit
2408                     	xref	_TIM2_OC1PreloadConfig
2409                     	xref	_TIM2_ARRPreloadConfig
2410                     	xref	_TIM2_Cmd
2411                     	xref	_TIM2_OC1Init
2412                     	xref	_TIM2_TimeBaseInit
2413                     	xref	_GPIO_ReadInputPin
2414                     	xref	_GPIO_WriteLow
2415                     	xref	_GPIO_WriteHigh
2416                     	xref	_GPIO_Init
2417                     	xref	_EXTI_SetExtIntSensitivity
2418                     .const:	section	.text
2419  0000               L723:
2420  0000 5a6567617265  	dc.b	"Zegarek nie zyje. "
2421  0012 557374617720  	dc.b	"Ustaw aktualny cza"
2422  0024 732069206461  	dc.b	"s i date (GG:MM:SS"
2423  0036 2044442e4d4d  	dc.b	" DD.MM.RRRR) i kli"
2424  0048 6b6e696a2045  	dc.b	"knij Enter:",13
2425  0054 0a00          	dc.b	10,0
2426  0056               L772:
2427  0056 5a6567617265  	dc.b	"Zegarek Zyje!",13
2428  0064 0a00          	dc.b	10,0
2429  0066               L372:
2430  0066 424c41443a20  	dc.b	"BLAD: Ten miesiac "
2431  0078 6e6965206d61  	dc.b	"nie ma tylu dni",13
2432  0088 0a00          	dc.b	10,0
2433  008a               L562:
2434  008a 424c41443a20  	dc.b	"BLAD: Zly format d"
2435  009c 616e7963682e  	dc.b	"anych. Wpisz ponow"
2436  00ae 6e69652e0d    	dc.b	"nie.",13
2437  00b3 0a00          	dc.b	10,0
2438                     	xref.b	c_x
2458                     	xref	c_bmuly
2459                     	xref	c_imul
2460                     	xref	c_bmulx
2461                     	xref	c_sdivx
2462                     	xref	c_smodx
2463                     	xref	c_idiv
2464                     	end
