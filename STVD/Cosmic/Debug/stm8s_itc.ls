   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
   4                     ; Optimizer V4.5.6 - 18 Jul 2023
  50                     ; 50 uint8_t ITC_GetCPUCC(void)
  50                     ; 51 {
  52                     .text:	section	.text,new
  53  0000               _ITC_GetCPUCC:
  57                     ; 53   _asm("push cc");
  60  0000 8a            	push	cc
  62                     ; 54   _asm("pop a");
  65  0001 84            	pop	a
  67                     ; 55   return; /* Ignore compiler warning, the returned value is in A register */
  70  0002 81            	ret	
  93                     ; 80 void ITC_DeInit(void)
  93                     ; 81 {
  94                     .text:	section	.text,new
  95  0000               _ITC_DeInit:
  99                     ; 82   ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
 101  0000 35ff7f70      	mov	32624,#255
 102                     ; 83   ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
 104  0004 35ff7f71      	mov	32625,#255
 105                     ; 84   ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
 107  0008 35ff7f72      	mov	32626,#255
 108                     ; 85   ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
 110  000c 35ff7f73      	mov	32627,#255
 111                     ; 86   ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
 113  0010 35ff7f74      	mov	32628,#255
 114                     ; 87   ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
 116  0014 35ff7f75      	mov	32629,#255
 117                     ; 88   ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
 119  0018 35ff7f76      	mov	32630,#255
 120                     ; 89   ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
 122  001c 35ff7f77      	mov	32631,#255
 123                     ; 90 }
 126  0020 81            	ret	
 151                     ; 97 uint8_t ITC_GetSoftIntStatus(void)
 151                     ; 98 {
 152                     .text:	section	.text,new
 153  0000               _ITC_GetSoftIntStatus:
 157                     ; 99   return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
 159  0000 cd0000        	call	_ITC_GetCPUCC
 161  0003 a428          	and	a,#40
 164  0005 81            	ret	
 438                     .const:	section	.text
 439  0000               L23:
 440  0000 0035          	dc.w	L14
 441  0002 0035          	dc.w	L14
 442  0004 0035          	dc.w	L14
 443  0006 0035          	dc.w	L14
 444  0008 003a          	dc.w	L34
 445  000a 003a          	dc.w	L34
 446  000c 003a          	dc.w	L34
 447  000e 003a          	dc.w	L34
 448  0010 003f          	dc.w	L54
 449  0012 003f          	dc.w	L54
 450  0014 003f          	dc.w	L54
 451  0016 003f          	dc.w	L54
 452  0018 0044          	dc.w	L74
 453  001a 0044          	dc.w	L74
 454  001c 0044          	dc.w	L74
 455  001e 0044          	dc.w	L74
 456  0020 0049          	dc.w	L15
 457  0022 0049          	dc.w	L15
 458  0024 0049          	dc.w	L15
 459  0026 0049          	dc.w	L15
 460  0028 004e          	dc.w	L35
 461  002a 004e          	dc.w	L35
 462  002c 004e          	dc.w	L35
 463  002e 004e          	dc.w	L35
 464  0030 0053          	dc.w	L55
 465                     ; 107 ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
 465                     ; 108 {
 466                     .text:	section	.text,new
 467  0000               _ITC_GetSoftwarePriority:
 469  0000 88            	push	a
 470  0001 89            	pushw	x
 471       00000002      OFST:	set	2
 474                     ; 109   uint8_t Value = 0;
 476  0002 0f02          	clr	(OFST+0,sp)
 478                     ; 110   uint8_t Mask = 0;
 480                     ; 113   assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 482  0004 a119          	cp	a,#25
 483  0006 250e          	jrult	L02
 484  0008 ae0071        	ldw	x,#113
 485  000b 89            	pushw	x
 486  000c 5f            	clrw	x
 487  000d 89            	pushw	x
 488  000e ae0064        	ldw	x,#L502
 489  0011 cd0000        	call	_assert_failed
 491  0014 5b04          	addw	sp,#4
 492  0016               L02:
 493                     ; 116   Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
 495  0016 7b03          	ld	a,(OFST+1,sp)
 496  0018 a403          	and	a,#3
 497  001a 48            	sll	a
 498  001b 5f            	clrw	x
 499  001c 97            	ld	xl,a
 500  001d a603          	ld	a,#3
 501  001f 5d            	tnzw	x
 502  0020 2704          	jreq	L42
 503  0022               L62:
 504  0022 48            	sll	a
 505  0023 5a            	decw	x
 506  0024 26fc          	jrne	L62
 507  0026               L42:
 508  0026 6b01          	ld	(OFST-1,sp),a
 510                     ; 118   switch (IrqNum)
 512  0028 7b03          	ld	a,(OFST+1,sp)
 514                     ; 198   default:
 514                     ; 199     break;
 515  002a a119          	cp	a,#25
 516  002c 242e          	jruge	L112
 517  002e 5f            	clrw	x
 518  002f 97            	ld	xl,a
 519  0030 58            	sllw	x
 520  0031 de0000        	ldw	x,(L23,x)
 521  0034 fc            	jp	(x)
 522  0035               L14:
 523                     ; 120   case ITC_IRQ_TLI: /* TLI software priority can be read but has no meaning */
 523                     ; 121   case ITC_IRQ_AWU:
 523                     ; 122   case ITC_IRQ_CLK:
 523                     ; 123   case ITC_IRQ_PORTA:
 523                     ; 124     Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
 525  0035 c67f70        	ld	a,32624
 526                     ; 125     break;
 528  0038 201c          	jp	LC001
 529  003a               L34:
 530                     ; 127   case ITC_IRQ_PORTB:
 530                     ; 128   case ITC_IRQ_PORTC:
 530                     ; 129   case ITC_IRQ_PORTD:
 530                     ; 130   case ITC_IRQ_PORTE:
 530                     ; 131     Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
 532  003a c67f71        	ld	a,32625
 533                     ; 132     break;
 535  003d 2017          	jp	LC001
 536  003f               L54:
 537                     ; 135   case ITC_IRQ_CAN_RX:
 537                     ; 136   case ITC_IRQ_CAN_TX:
 537                     ; 137 #endif /*STM8S208 or STM8AF52Ax */
 537                     ; 138 #if defined(STM8S903) || defined(STM8AF622x)
 537                     ; 139   case ITC_IRQ_PORTF:
 537                     ; 140 #endif /*STM8S903 or STM8AF622x */
 537                     ; 141   case ITC_IRQ_SPI:
 537                     ; 142   case ITC_IRQ_TIM1_OVF:
 537                     ; 143     Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
 539  003f c67f72        	ld	a,32626
 540                     ; 144     break;
 542  0042 2012          	jp	LC001
 543  0044               L74:
 544                     ; 146   case ITC_IRQ_TIM1_CAPCOM:
 544                     ; 147 #if defined (STM8S903) || defined (STM8AF622x)
 544                     ; 148   case ITC_IRQ_TIM5_OVFTRI:
 544                     ; 149   case ITC_IRQ_TIM5_CAPCOM:
 544                     ; 150 #else
 544                     ; 151   case ITC_IRQ_TIM2_OVF:
 544                     ; 152   case ITC_IRQ_TIM2_CAPCOM:
 544                     ; 153 #endif /* STM8S903 or STM8AF622x*/
 544                     ; 154   case ITC_IRQ_TIM3_OVF:
 544                     ; 155     Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
 546  0044 c67f73        	ld	a,32627
 547                     ; 156     break;
 549  0047 200d          	jp	LC001
 550  0049               L15:
 551                     ; 158   case ITC_IRQ_TIM3_CAPCOM:
 551                     ; 159 #if defined(STM8S208) ||defined(STM8S207) || defined (STM8S007) || defined(STM8S103) || \
 551                     ; 160     defined(STM8S003) ||defined(STM8S001) || defined (STM8S903) || defined (STM8AF52Ax) || defined (STM8AF62Ax)
 551                     ; 161   case ITC_IRQ_UART1_TX:
 551                     ; 162   case ITC_IRQ_UART1_RX:
 551                     ; 163 #endif /*STM8S208 or STM8S207 or STM8S007 or STM8S103 or STM8S003 or STM8S001 or STM8S903 or STM8AF52Ax or STM8AF62Ax */ 
 551                     ; 164 #if defined(STM8AF622x)
 551                     ; 165   case ITC_IRQ_UART4_TX:
 551                     ; 166   case ITC_IRQ_UART4_RX:
 551                     ; 167 #endif /*STM8AF622x */
 551                     ; 168   case ITC_IRQ_I2C:
 551                     ; 169     Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
 553  0049 c67f74        	ld	a,32628
 554                     ; 170     break;
 556  004c 2008          	jp	LC001
 557  004e               L35:
 558                     ; 178   case ITC_IRQ_UART3_TX:
 558                     ; 179   case ITC_IRQ_UART3_RX:
 558                     ; 180   case ITC_IRQ_ADC2:
 558                     ; 181 #endif /*STM8S208 or STM8S207 or STM8AF52Ax or STM8AF62Ax */
 558                     ; 182 #if defined(STM8S105) || defined(STM8S005) || defined(STM8S103) || defined(STM8S003) || \
 558                     ; 183     defined(STM8S001) || defined(STM8S903) || defined(STM8AF626x) || defined(STM8AF622x)
 558                     ; 184   case ITC_IRQ_ADC1:
 558                     ; 185 #endif /*STM8S105, STM8S005, STM8S103 or STM8S003 or STM8S001 or STM8S903 or STM8AF626x or STM8AF622x */
 558                     ; 186 #if defined (STM8S903) || defined (STM8AF622x)
 558                     ; 187   case ITC_IRQ_TIM6_OVFTRI:
 558                     ; 188 #else
 558                     ; 189   case ITC_IRQ_TIM4_OVF:
 558                     ; 190 #endif /*STM8S903 or STM8AF622x */
 558                     ; 191     Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
 560  004e c67f75        	ld	a,32629
 561                     ; 192     break;
 563  0051 2003          	jp	LC001
 564  0053               L55:
 565                     ; 194   case ITC_IRQ_EEPROM_EEC:
 565                     ; 195     Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
 567  0053 c67f76        	ld	a,32630
 568  0056               LC001:
 569  0056 1401          	and	a,(OFST-1,sp)
 570  0058 6b02          	ld	(OFST+0,sp),a
 572                     ; 196     break;
 574                     ; 198   default:
 574                     ; 199     break;
 576  005a 7b03          	ld	a,(OFST+1,sp)
 577  005c               L112:
 578                     ; 202   Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
 580  005c a403          	and	a,#3
 581  005e 48            	sll	a
 582  005f 5f            	clrw	x
 583  0060 97            	ld	xl,a
 584  0061 7b02          	ld	a,(OFST+0,sp)
 585  0063 5d            	tnzw	x
 586  0064 2704          	jreq	L43
 587  0066               L63:
 588  0066 44            	srl	a
 589  0067 5a            	decw	x
 590  0068 26fc          	jrne	L63
 591  006a               L43:
 593                     ; 204   return((ITC_PriorityLevel_TypeDef)Value);
 597  006a 5b03          	addw	sp,#3
 598  006c 81            	ret	
 660                     	switch	.const
 661  0032               L201:
 662  0032 0066          	dc.w	L312
 663  0034 0066          	dc.w	L312
 664  0036 0066          	dc.w	L312
 665  0038 0066          	dc.w	L312
 666  003a 0078          	dc.w	L512
 667  003c 0078          	dc.w	L512
 668  003e 0078          	dc.w	L512
 669  0040 0078          	dc.w	L512
 670  0042 008a          	dc.w	L712
 671  0044 008a          	dc.w	L712
 672  0046 008a          	dc.w	L712
 673  0048 008a          	dc.w	L712
 674  004a 009c          	dc.w	L122
 675  004c 009c          	dc.w	L122
 676  004e 009c          	dc.w	L122
 677  0050 009c          	dc.w	L122
 678  0052 00ae          	dc.w	L322
 679  0054 00ae          	dc.w	L322
 680  0056 00ae          	dc.w	L322
 681  0058 00ae          	dc.w	L322
 682  005a 00c0          	dc.w	L522
 683  005c 00c0          	dc.w	L522
 684  005e 00c0          	dc.w	L522
 685  0060 00c0          	dc.w	L522
 686  0062 00d2          	dc.w	L722
 687                     ; 220 void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
 687                     ; 221 {
 688                     .text:	section	.text,new
 689  0000               _ITC_SetSoftwarePriority:
 691  0000 89            	pushw	x
 692  0001 89            	pushw	x
 693       00000002      OFST:	set	2
 696                     ; 222   uint8_t Mask = 0;
 698                     ; 223   uint8_t NewPriority = 0;
 700                     ; 226   assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 702  0002 9e            	ld	a,xh
 703  0003 a119          	cp	a,#25
 704  0005 2506          	jrult	L44
 705  0007 ae00e2        	ldw	x,#226
 706  000a cd00e5        	call	LC002
 707  000d               L44:
 708                     ; 227   assert_param(IS_ITC_PRIORITY_OK(PriorityValue));
 710  000d 7b04          	ld	a,(OFST+2,sp)
 711  000f a102          	cp	a,#2
 712  0011 2711          	jreq	L45
 713  0013 a101          	cp	a,#1
 714  0015 270d          	jreq	L45
 715  0017 4d            	tnz	a
 716  0018 270a          	jreq	L45
 717  001a a103          	cp	a,#3
 718  001c 2706          	jreq	L45
 719  001e ae00e3        	ldw	x,#227
 720  0021 cd00e5        	call	LC002
 721  0024               L45:
 722                     ; 230   assert_param(IS_ITC_INTERRUPTS_DISABLED);
 724  0024 cd0000        	call	_ITC_GetSoftIntStatus
 726  0027 a128          	cp	a,#40
 727  0029 2706          	jreq	L46
 728  002b ae00e6        	ldw	x,#230
 729  002e cd00e5        	call	LC002
 730  0031               L46:
 731                     ; 234   Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
 733  0031 7b03          	ld	a,(OFST+1,sp)
 734  0033 a403          	and	a,#3
 735  0035 48            	sll	a
 736  0036 5f            	clrw	x
 737  0037 97            	ld	xl,a
 738  0038 a603          	ld	a,#3
 739  003a 5d            	tnzw	x
 740  003b 2704          	jreq	L07
 741  003d               L27:
 742  003d 48            	sll	a
 743  003e 5a            	decw	x
 744  003f 26fc          	jrne	L27
 745  0041               L07:
 746  0041 43            	cpl	a
 747  0042 6b01          	ld	(OFST-1,sp),a
 749                     ; 237   NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
 751  0044 7b03          	ld	a,(OFST+1,sp)
 752  0046 a403          	and	a,#3
 753  0048 48            	sll	a
 754  0049 5f            	clrw	x
 755  004a 97            	ld	xl,a
 756  004b 7b04          	ld	a,(OFST+2,sp)
 757  004d 5d            	tnzw	x
 758  004e 2704          	jreq	L47
 759  0050               L67:
 760  0050 48            	sll	a
 761  0051 5a            	decw	x
 762  0052 26fc          	jrne	L67
 763  0054               L47:
 764  0054 6b02          	ld	(OFST+0,sp),a
 766                     ; 239   switch (IrqNum)
 768  0056 7b03          	ld	a,(OFST+1,sp)
 770                     ; 329   default:
 770                     ; 330     break;
 771  0058 a119          	cp	a,#25
 772  005a 2503cc00e2    	jruge	L362
 773  005f 5f            	clrw	x
 774  0060 97            	ld	xl,a
 775  0061 58            	sllw	x
 776  0062 de0032        	ldw	x,(L201,x)
 777  0065 fc            	jp	(x)
 778  0066               L312:
 779                     ; 241   case ITC_IRQ_TLI: /* TLI software priority can be written but has no meaning */
 779                     ; 242   case ITC_IRQ_AWU:
 779                     ; 243   case ITC_IRQ_CLK:
 779                     ; 244   case ITC_IRQ_PORTA:
 779                     ; 245     ITC->ISPR1 &= Mask;
 781  0066 c67f70        	ld	a,32624
 782  0069 1401          	and	a,(OFST-1,sp)
 783  006b c77f70        	ld	32624,a
 784                     ; 246     ITC->ISPR1 |= NewPriority;
 786  006e c67f70        	ld	a,32624
 787  0071 1a02          	or	a,(OFST+0,sp)
 788  0073 c77f70        	ld	32624,a
 789                     ; 247     break;
 791  0076 206a          	jra	L362
 792  0078               L512:
 793                     ; 249   case ITC_IRQ_PORTB:
 793                     ; 250   case ITC_IRQ_PORTC:
 793                     ; 251   case ITC_IRQ_PORTD:
 793                     ; 252   case ITC_IRQ_PORTE:
 793                     ; 253     ITC->ISPR2 &= Mask;
 795  0078 c67f71        	ld	a,32625
 796  007b 1401          	and	a,(OFST-1,sp)
 797  007d c77f71        	ld	32625,a
 798                     ; 254     ITC->ISPR2 |= NewPriority;
 800  0080 c67f71        	ld	a,32625
 801  0083 1a02          	or	a,(OFST+0,sp)
 802  0085 c77f71        	ld	32625,a
 803                     ; 255     break;
 805  0088 2058          	jra	L362
 806  008a               L712:
 807                     ; 258   case ITC_IRQ_CAN_RX:
 807                     ; 259   case ITC_IRQ_CAN_TX:
 807                     ; 260 #endif /*STM8S208 or STM8AF52Ax */
 807                     ; 261 #if defined(STM8S903) || defined(STM8AF622x)
 807                     ; 262   case ITC_IRQ_PORTF:
 807                     ; 263 #endif /*STM8S903 or STM8AF622x */
 807                     ; 264   case ITC_IRQ_SPI:
 807                     ; 265   case ITC_IRQ_TIM1_OVF:
 807                     ; 266     ITC->ISPR3 &= Mask;
 809  008a c67f72        	ld	a,32626
 810  008d 1401          	and	a,(OFST-1,sp)
 811  008f c77f72        	ld	32626,a
 812                     ; 267     ITC->ISPR3 |= NewPriority;
 814  0092 c67f72        	ld	a,32626
 815  0095 1a02          	or	a,(OFST+0,sp)
 816  0097 c77f72        	ld	32626,a
 817                     ; 268     break;
 819  009a 2046          	jra	L362
 820  009c               L122:
 821                     ; 270   case ITC_IRQ_TIM1_CAPCOM:
 821                     ; 271 #if defined(STM8S903) || defined(STM8AF622x) 
 821                     ; 272   case ITC_IRQ_TIM5_OVFTRI:
 821                     ; 273   case ITC_IRQ_TIM5_CAPCOM:
 821                     ; 274 #else
 821                     ; 275   case ITC_IRQ_TIM2_OVF:
 821                     ; 276   case ITC_IRQ_TIM2_CAPCOM:
 821                     ; 277 #endif /*STM8S903 or STM8AF622x */
 821                     ; 278   case ITC_IRQ_TIM3_OVF:
 821                     ; 279     ITC->ISPR4 &= Mask;
 823  009c c67f73        	ld	a,32627
 824  009f 1401          	and	a,(OFST-1,sp)
 825  00a1 c77f73        	ld	32627,a
 826                     ; 280     ITC->ISPR4 |= NewPriority;
 828  00a4 c67f73        	ld	a,32627
 829  00a7 1a02          	or	a,(OFST+0,sp)
 830  00a9 c77f73        	ld	32627,a
 831                     ; 281     break;
 833  00ac 2034          	jra	L362
 834  00ae               L322:
 835                     ; 283   case ITC_IRQ_TIM3_CAPCOM:
 835                     ; 284 #if defined(STM8S208) ||defined(STM8S207) || defined (STM8S007) || defined(STM8S103) || \
 835                     ; 285     defined(STM8S001) ||defined(STM8S003) ||defined(STM8S903) || defined (STM8AF52Ax) || defined (STM8AF62Ax)
 835                     ; 286   case ITC_IRQ_UART1_TX:
 835                     ; 287   case ITC_IRQ_UART1_RX:
 835                     ; 288 #endif /*STM8S208 or STM8S207 or STM8S007 or STM8S103 or STM8S003 or STM8S001 or STM8S903 or STM8AF52Ax or STM8AF62Ax */ 
 835                     ; 289 #if defined(STM8AF622x)
 835                     ; 290   case ITC_IRQ_UART4_TX:
 835                     ; 291   case ITC_IRQ_UART4_RX:
 835                     ; 292 #endif /*STM8AF622x */
 835                     ; 293   case ITC_IRQ_I2C:
 835                     ; 294     ITC->ISPR5 &= Mask;
 837  00ae c67f74        	ld	a,32628
 838  00b1 1401          	and	a,(OFST-1,sp)
 839  00b3 c77f74        	ld	32628,a
 840                     ; 295     ITC->ISPR5 |= NewPriority;
 842  00b6 c67f74        	ld	a,32628
 843  00b9 1a02          	or	a,(OFST+0,sp)
 844  00bb c77f74        	ld	32628,a
 845                     ; 296     break;
 847  00be 2022          	jra	L362
 848  00c0               L522:
 849                     ; 305   case ITC_IRQ_UART3_TX:
 849                     ; 306   case ITC_IRQ_UART3_RX:
 849                     ; 307   case ITC_IRQ_ADC2:
 849                     ; 308 #endif /*STM8S208 or STM8S207 or STM8AF52Ax or STM8AF62Ax */
 849                     ; 309     
 849                     ; 310 #if defined(STM8S105) || defined(STM8S005) || defined(STM8S103) || defined(STM8S003) || \
 849                     ; 311     defined(STM8S001) || defined(STM8S903) || defined(STM8AF626x) || defined (STM8AF622x)
 849                     ; 312   case ITC_IRQ_ADC1:
 849                     ; 313 #endif /*STM8S105, STM8S005, STM8S103 or STM8S003 or STM8S001 or STM8S903 or STM8AF626x or STM8AF622x */
 849                     ; 314     
 849                     ; 315 #if defined (STM8S903) || defined (STM8AF622x)
 849                     ; 316   case ITC_IRQ_TIM6_OVFTRI:
 849                     ; 317 #else
 849                     ; 318   case ITC_IRQ_TIM4_OVF:
 849                     ; 319 #endif /* STM8S903 or STM8AF622x */
 849                     ; 320     ITC->ISPR6 &= Mask;
 851  00c0 c67f75        	ld	a,32629
 852  00c3 1401          	and	a,(OFST-1,sp)
 853  00c5 c77f75        	ld	32629,a
 854                     ; 321     ITC->ISPR6 |= NewPriority;
 856  00c8 c67f75        	ld	a,32629
 857  00cb 1a02          	or	a,(OFST+0,sp)
 858  00cd c77f75        	ld	32629,a
 859                     ; 322     break;
 861  00d0 2010          	jra	L362
 862  00d2               L722:
 863                     ; 324   case ITC_IRQ_EEPROM_EEC:
 863                     ; 325     ITC->ISPR7 &= Mask;
 865  00d2 c67f76        	ld	a,32630
 866  00d5 1401          	and	a,(OFST-1,sp)
 867  00d7 c77f76        	ld	32630,a
 868                     ; 326     ITC->ISPR7 |= NewPriority;
 870  00da c67f76        	ld	a,32630
 871  00dd 1a02          	or	a,(OFST+0,sp)
 872  00df c77f76        	ld	32630,a
 873                     ; 327     break;
 875                     ; 329   default:
 875                     ; 330     break;
 877  00e2               L362:
 878                     ; 332 }
 881  00e2 5b04          	addw	sp,#4
 882  00e4 81            	ret	
 883  00e5               LC002:
 884  00e5 89            	pushw	x
 885  00e6 5f            	clrw	x
 886  00e7 89            	pushw	x
 887  00e8 ae0064        	ldw	x,#L502
 888  00eb cd0000        	call	_assert_failed
 890  00ee 5b04          	addw	sp,#4
 891  00f0 81            	ret	
 904                     	xdef	_ITC_GetSoftwarePriority
 905                     	xdef	_ITC_SetSoftwarePriority
 906                     	xdef	_ITC_GetSoftIntStatus
 907                     	xdef	_ITC_DeInit
 908                     	xdef	_ITC_GetCPUCC
 909                     	xref	_assert_failed
 910                     	switch	.const
 911  0064               L502:
 912  0064 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 913  0076 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 914  0088 685f64726976  	dc.b	"h_driver\src\stm8s"
 915  009a 5f6974632e63  	dc.b	"_itc.c",0
 935                     	end
