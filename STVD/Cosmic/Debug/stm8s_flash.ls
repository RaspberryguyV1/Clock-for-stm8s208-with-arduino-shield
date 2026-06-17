   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
   4                     ; Optimizer V4.5.6 - 18 Jul 2023
  83                     ; 87 void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
  83                     ; 88 {
  85                     .text:	section	.text,new
  86  0000               _FLASH_Unlock:
  88  0000 88            	push	a
  89       00000000      OFST:	set	0
  92                     ; 90   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
  94  0001 a1fd          	cp	a,#253
  95  0003 2712          	jreq	L21
  96  0005 a1f7          	cp	a,#247
  97  0007 270e          	jreq	L21
  98  0009 ae005a        	ldw	x,#90
  99  000c 89            	pushw	x
 100  000d 5f            	clrw	x
 101  000e 89            	pushw	x
 102  000f ae0010        	ldw	x,#L73
 103  0012 cd0000        	call	_assert_failed
 105  0015 5b04          	addw	sp,#4
 106  0017               L21:
 107                     ; 93   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
 109  0017 7b01          	ld	a,(OFST+1,sp)
 110  0019 a1fd          	cp	a,#253
 111  001b 260a          	jrne	L14
 112                     ; 95     FLASH->PUKR = FLASH_RASS_KEY1;
 114  001d 35565062      	mov	20578,#86
 115                     ; 96     FLASH->PUKR = FLASH_RASS_KEY2;
 117  0021 35ae5062      	mov	20578,#174
 119  0025 2008          	jra	L34
 120  0027               L14:
 121                     ; 101     FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
 123  0027 35ae5064      	mov	20580,#174
 124                     ; 102     FLASH->DUKR = FLASH_RASS_KEY1;
 126  002b 35565064      	mov	20580,#86
 127  002f               L34:
 128                     ; 104 }
 131  002f 84            	pop	a
 132  0030 81            	ret	
 168                     ; 112 void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
 168                     ; 113 {
 169                     .text:	section	.text,new
 170  0000               _FLASH_Lock:
 172  0000 88            	push	a
 173       00000000      OFST:	set	0
 176                     ; 115   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
 178  0001 a1fd          	cp	a,#253
 179  0003 2712          	jreq	L42
 180  0005 a1f7          	cp	a,#247
 181  0007 270e          	jreq	L42
 182  0009 ae0073        	ldw	x,#115
 183  000c 89            	pushw	x
 184  000d 5f            	clrw	x
 185  000e 89            	pushw	x
 186  000f ae0010        	ldw	x,#L73
 187  0012 cd0000        	call	_assert_failed
 189  0015 5b04          	addw	sp,#4
 190  0017               L42:
 191                     ; 118   FLASH->IAPSR &= (uint8_t)FLASH_MemType;
 193  0017 c6505f        	ld	a,20575
 194  001a 1401          	and	a,(OFST+1,sp)
 195  001c c7505f        	ld	20575,a
 196                     ; 119 }
 199  001f 84            	pop	a
 200  0020 81            	ret	
 223                     ; 126 void FLASH_DeInit(void)
 223                     ; 127 {
 224                     .text:	section	.text,new
 225  0000               _FLASH_DeInit:
 229                     ; 128   FLASH->CR1 = FLASH_CR1_RESET_VALUE;
 231  0000 725f505a      	clr	20570
 232                     ; 129   FLASH->CR2 = FLASH_CR2_RESET_VALUE;
 234  0004 725f505b      	clr	20571
 235                     ; 130   FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
 237  0008 35ff505c      	mov	20572,#255
 238                     ; 131   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
 240  000c 7217505f      	bres	20575,#3
 241                     ; 132   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
 243  0010 7213505f      	bres	20575,#1
 244                     ; 133   (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
 246  0014 c6505f        	ld	a,20575
 247                     ; 134 }
 250  0017 81            	ret	
 306                     ; 142 void FLASH_ITConfig(FunctionalState NewState)
 306                     ; 143 {
 307                     .text:	section	.text,new
 308  0000               _FLASH_ITConfig:
 310  0000 88            	push	a
 311       00000000      OFST:	set	0
 314                     ; 145   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 316  0001 4d            	tnz	a
 317  0002 2711          	jreq	L04
 318  0004 4a            	dec	a
 319  0005 270e          	jreq	L04
 320  0007 ae0091        	ldw	x,#145
 321  000a 89            	pushw	x
 322  000b 5f            	clrw	x
 323  000c 89            	pushw	x
 324  000d ae0010        	ldw	x,#L73
 325  0010 cd0000        	call	_assert_failed
 327  0013 5b04          	addw	sp,#4
 328  0015               L04:
 329                     ; 147   if(NewState != DISABLE)
 331  0015 7b01          	ld	a,(OFST+1,sp)
 332  0017 2706          	jreq	L121
 333                     ; 149     FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
 335  0019 7212505a      	bset	20570,#1
 337  001d 2004          	jra	L321
 338  001f               L121:
 339                     ; 153     FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
 341  001f 7213505a      	bres	20570,#1
 342  0023               L321:
 343                     ; 155 }
 346  0023 84            	pop	a
 347  0024 81            	ret	
 380                     .const:	section	.text
 381  0000               L45:
 382  0000 00008000      	dc.l	32768
 383  0004               L65:
 384  0004 00028000      	dc.l	163840
 385  0008               L06:
 386  0008 00004000      	dc.l	16384
 387  000c               L26:
 388  000c 00004800      	dc.l	18432
 389                     ; 164 void FLASH_EraseByte(uint32_t Address)
 389                     ; 165 {
 390                     .text:	section	.text,new
 391  0000               _FLASH_EraseByte:
 393       00000000      OFST:	set	0
 396                     ; 167   assert_param(IS_FLASH_ADDRESS_OK(Address));
 398  0000 96            	ldw	x,sp
 399  0001 1c0003        	addw	x,#OFST+3
 400  0004 cd0000        	call	c_ltor
 402  0007 ae0000        	ldw	x,#L45
 403  000a cd0000        	call	c_lcmp
 405  000d 250f          	jrult	L25
 406  000f 96            	ldw	x,sp
 407  0010 1c0003        	addw	x,#OFST+3
 408  0013 cd0000        	call	c_ltor
 410  0016 ae0004        	ldw	x,#L65
 411  0019 cd0000        	call	c_lcmp
 413  001c 252c          	jrult	L46
 414  001e               L25:
 415  001e 96            	ldw	x,sp
 416  001f 1c0003        	addw	x,#OFST+3
 417  0022 cd0000        	call	c_ltor
 419  0025 ae0008        	ldw	x,#L06
 420  0028 cd0000        	call	c_lcmp
 422  002b 250f          	jrult	L64
 423  002d 96            	ldw	x,sp
 424  002e 1c0003        	addw	x,#OFST+3
 425  0031 cd0000        	call	c_ltor
 427  0034 ae000c        	ldw	x,#L26
 428  0037 cd0000        	call	c_lcmp
 430  003a 250e          	jrult	L46
 431  003c               L64:
 432  003c ae00a7        	ldw	x,#167
 433  003f 89            	pushw	x
 434  0040 5f            	clrw	x
 435  0041 89            	pushw	x
 436  0042 ae0010        	ldw	x,#L73
 437  0045 cd0000        	call	_assert_failed
 439  0048 5b04          	addw	sp,#4
 440  004a               L46:
 441                     ; 170   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = FLASH_CLEAR_BYTE; 
 443  004a 7b04          	ld	a,(OFST+4,sp)
 444  004c b700          	ld	c_x,a
 445  004e 1e05          	ldw	x,(OFST+5,sp)
 446  0050 bf01          	ldw	c_x+1,x
 447  0052 4f            	clr	a
 448  0053 92bd0000      	ldf	[c_x.e],a
 449                     ; 171 }
 452  0057 81            	ret	
 492                     ; 181 void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
 492                     ; 182 {
 493                     .text:	section	.text,new
 494  0000               _FLASH_ProgramByte:
 496       00000000      OFST:	set	0
 499                     ; 184   assert_param(IS_FLASH_ADDRESS_OK(Address));
 501  0000 96            	ldw	x,sp
 502  0001 1c0003        	addw	x,#OFST+3
 503  0004 cd0000        	call	c_ltor
 505  0007 ae0000        	ldw	x,#L45
 506  000a cd0000        	call	c_lcmp
 508  000d 250f          	jrult	L67
 509  000f 96            	ldw	x,sp
 510  0010 1c0003        	addw	x,#OFST+3
 511  0013 cd0000        	call	c_ltor
 513  0016 ae0004        	ldw	x,#L65
 514  0019 cd0000        	call	c_lcmp
 516  001c 252c          	jrult	L001
 517  001e               L67:
 518  001e 96            	ldw	x,sp
 519  001f 1c0003        	addw	x,#OFST+3
 520  0022 cd0000        	call	c_ltor
 522  0025 ae0008        	ldw	x,#L06
 523  0028 cd0000        	call	c_lcmp
 525  002b 250f          	jrult	L27
 526  002d 96            	ldw	x,sp
 527  002e 1c0003        	addw	x,#OFST+3
 528  0031 cd0000        	call	c_ltor
 530  0034 ae000c        	ldw	x,#L26
 531  0037 cd0000        	call	c_lcmp
 533  003a 250e          	jrult	L001
 534  003c               L27:
 535  003c ae00b8        	ldw	x,#184
 536  003f 89            	pushw	x
 537  0040 5f            	clrw	x
 538  0041 89            	pushw	x
 539  0042 ae0010        	ldw	x,#L73
 540  0045 cd0000        	call	_assert_failed
 542  0048 5b04          	addw	sp,#4
 543  004a               L001:
 544                     ; 185   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = Data;
 546  004a 7b07          	ld	a,(OFST+7,sp)
 547  004c 88            	push	a
 548  004d 7b05          	ld	a,(OFST+5,sp)
 549  004f b700          	ld	c_x,a
 550  0051 1e06          	ldw	x,(OFST+6,sp)
 551  0053 bf01          	ldw	c_x+1,x
 552  0055 84            	pop	a
 553  0056 92bd0000      	ldf	[c_x.e],a
 554                     ; 186 }
 557  005a 81            	ret	
 590                     ; 195 uint8_t FLASH_ReadByte(uint32_t Address)
 590                     ; 196 {
 591                     .text:	section	.text,new
 592  0000               _FLASH_ReadByte:
 594       00000000      OFST:	set	0
 597                     ; 198   assert_param(IS_FLASH_ADDRESS_OK(Address));
 599  0000 96            	ldw	x,sp
 600  0001 1c0003        	addw	x,#OFST+3
 601  0004 cd0000        	call	c_ltor
 603  0007 ae0000        	ldw	x,#L45
 604  000a cd0000        	call	c_lcmp
 606  000d 250f          	jrult	L211
 607  000f 96            	ldw	x,sp
 608  0010 1c0003        	addw	x,#OFST+3
 609  0013 cd0000        	call	c_ltor
 611  0016 ae0004        	ldw	x,#L65
 612  0019 cd0000        	call	c_lcmp
 614  001c 252c          	jrult	L411
 615  001e               L211:
 616  001e 96            	ldw	x,sp
 617  001f 1c0003        	addw	x,#OFST+3
 618  0022 cd0000        	call	c_ltor
 620  0025 ae0008        	ldw	x,#L06
 621  0028 cd0000        	call	c_lcmp
 623  002b 250f          	jrult	L601
 624  002d 96            	ldw	x,sp
 625  002e 1c0003        	addw	x,#OFST+3
 626  0031 cd0000        	call	c_ltor
 628  0034 ae000c        	ldw	x,#L26
 629  0037 cd0000        	call	c_lcmp
 631  003a 250e          	jrult	L411
 632  003c               L601:
 633  003c ae00c6        	ldw	x,#198
 634  003f 89            	pushw	x
 635  0040 5f            	clrw	x
 636  0041 89            	pushw	x
 637  0042 ae0010        	ldw	x,#L73
 638  0045 cd0000        	call	_assert_failed
 640  0048 5b04          	addw	sp,#4
 641  004a               L411:
 642                     ; 201   return(*(PointerAttr uint8_t *) (MemoryAddressCast)Address); 
 644  004a 7b04          	ld	a,(OFST+4,sp)
 645  004c b700          	ld	c_x,a
 646  004e 1e05          	ldw	x,(OFST+5,sp)
 647  0050 bf01          	ldw	c_x+1,x
 648  0052 92bc0000      	ldf	a,[c_x.e]
 651  0056 81            	ret	
 691                     ; 212 void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
 691                     ; 213 {
 692                     .text:	section	.text,new
 693  0000               _FLASH_ProgramWord:
 695       00000000      OFST:	set	0
 698                     ; 215   assert_param(IS_FLASH_ADDRESS_OK(Address));
 700  0000 96            	ldw	x,sp
 701  0001 1c0003        	addw	x,#OFST+3
 702  0004 cd0000        	call	c_ltor
 704  0007 ae0000        	ldw	x,#L45
 705  000a cd0000        	call	c_lcmp
 707  000d 250f          	jrult	L621
 708  000f 96            	ldw	x,sp
 709  0010 1c0003        	addw	x,#OFST+3
 710  0013 cd0000        	call	c_ltor
 712  0016 ae0004        	ldw	x,#L65
 713  0019 cd0000        	call	c_lcmp
 715  001c 252c          	jrult	L031
 716  001e               L621:
 717  001e 96            	ldw	x,sp
 718  001f 1c0003        	addw	x,#OFST+3
 719  0022 cd0000        	call	c_ltor
 721  0025 ae0008        	ldw	x,#L06
 722  0028 cd0000        	call	c_lcmp
 724  002b 250f          	jrult	L221
 725  002d 96            	ldw	x,sp
 726  002e 1c0003        	addw	x,#OFST+3
 727  0031 cd0000        	call	c_ltor
 729  0034 ae000c        	ldw	x,#L26
 730  0037 cd0000        	call	c_lcmp
 732  003a 250e          	jrult	L031
 733  003c               L221:
 734  003c ae00d7        	ldw	x,#215
 735  003f 89            	pushw	x
 736  0040 5f            	clrw	x
 737  0041 89            	pushw	x
 738  0042 ae0010        	ldw	x,#L73
 739  0045 cd0000        	call	_assert_failed
 741  0048 5b04          	addw	sp,#4
 742  004a               L031:
 743                     ; 218   FLASH->CR2 |= FLASH_CR2_WPRG;
 745  004a 721c505b      	bset	20571,#6
 746                     ; 219   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
 748  004e 721d505c      	bres	20572,#6
 749                     ; 222   *((PointerAttr uint8_t*)(MemoryAddressCast)Address)       = *((uint8_t*)(&Data));
 751  0052 7b07          	ld	a,(OFST+7,sp)
 752  0054 88            	push	a
 753  0055 7b05          	ld	a,(OFST+5,sp)
 754  0057 b700          	ld	c_x,a
 755  0059 1e06          	ldw	x,(OFST+6,sp)
 756  005b bf01          	ldw	c_x+1,x
 757  005d 84            	pop	a
 758  005e 92bd0000      	ldf	[c_x.e],a
 759                     ; 224   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 1) = *((uint8_t*)(&Data)+1); 
 761  0062 7b08          	ld	a,(OFST+8,sp)
 762  0064 88            	push	a
 763  0065 7b05          	ld	a,(OFST+5,sp)
 764  0067 b700          	ld	c_x,a
 765  0069 1e06          	ldw	x,(OFST+6,sp)
 766  006b bf01          	ldw	c_x+1,x
 767  006d ae0001        	ldw	x,#1
 768  0070 84            	pop	a
 769  0071 92a70000      	ldf	([c_x.e],x),a
 770                     ; 226   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 2) = *((uint8_t*)(&Data)+2); 
 772  0075 7b09          	ld	a,(OFST+9,sp)
 773  0077 88            	push	a
 774  0078 7b05          	ld	a,(OFST+5,sp)
 775  007a b700          	ld	c_x,a
 776  007c 1e06          	ldw	x,(OFST+6,sp)
 777  007e bf01          	ldw	c_x+1,x
 778  0080 ae0002        	ldw	x,#2
 779  0083 84            	pop	a
 780  0084 92a70000      	ldf	([c_x.e],x),a
 781                     ; 228   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 3) = *((uint8_t*)(&Data)+3); 
 783  0088 7b0a          	ld	a,(OFST+10,sp)
 784  008a 88            	push	a
 785  008b 7b05          	ld	a,(OFST+5,sp)
 786  008d b700          	ld	c_x,a
 787  008f 1e06          	ldw	x,(OFST+6,sp)
 788  0091 bf01          	ldw	c_x+1,x
 789  0093 ae0003        	ldw	x,#3
 790  0096 84            	pop	a
 791  0097 92a70000      	ldf	([c_x.e],x),a
 792                     ; 229 }
 795  009b 81            	ret	
 837                     ; 237 void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
 837                     ; 238 {
 838                     .text:	section	.text,new
 839  0000               _FLASH_ProgramOptionByte:
 841  0000 89            	pushw	x
 842       00000000      OFST:	set	0
 845                     ; 240   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 847  0001 a34800        	cpw	x,#18432
 848  0004 2505          	jrult	L631
 849  0006 a34880        	cpw	x,#18560
 850  0009 250e          	jrult	L041
 851  000b               L631:
 852  000b ae00f0        	ldw	x,#240
 853  000e 89            	pushw	x
 854  000f 5f            	clrw	x
 855  0010 89            	pushw	x
 856  0011 ae0010        	ldw	x,#L73
 857  0014 cd0000        	call	_assert_failed
 859  0017 5b04          	addw	sp,#4
 860  0019               L041:
 861                     ; 243   FLASH->CR2 |= FLASH_CR2_OPT;
 863  0019 721e505b      	bset	20571,#7
 864                     ; 244   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 866  001d 721f505c      	bres	20572,#7
 867                     ; 247   if(Address == 0x4800)
 869  0021 1e01          	ldw	x,(OFST+1,sp)
 870  0023 a34800        	cpw	x,#18432
 871  0026 2605          	jrne	L722
 872                     ; 250     *((NEAR uint8_t*)Address) = Data;
 874  0028 7b05          	ld	a,(OFST+5,sp)
 875  002a f7            	ld	(x),a
 877  002b 2006          	jra	L132
 878  002d               L722:
 879                     ; 255     *((NEAR uint8_t*)Address) = Data;
 881  002d 7b05          	ld	a,(OFST+5,sp)
 882  002f f7            	ld	(x),a
 883                     ; 256     *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
 885  0030 43            	cpl	a
 886  0031 e701          	ld	(1,x),a
 887  0033               L132:
 888                     ; 258   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 890  0033 a6fd          	ld	a,#253
 891  0035 cd0000        	call	_FLASH_WaitForLastOperation
 893                     ; 261   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 895  0038 721f505b      	bres	20571,#7
 896                     ; 262   FLASH->NCR2 |= FLASH_NCR2_NOPT;
 898  003c 721e505c      	bset	20572,#7
 899                     ; 263 }
 902  0040 85            	popw	x
 903  0041 81            	ret	
 938                     ; 270 void FLASH_EraseOptionByte(uint16_t Address)
 938                     ; 271 {
 939                     .text:	section	.text,new
 940  0000               _FLASH_EraseOptionByte:
 942  0000 89            	pushw	x
 943       00000000      OFST:	set	0
 946                     ; 273   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 948  0001 a34800        	cpw	x,#18432
 949  0004 2505          	jrult	L051
 950  0006 a34880        	cpw	x,#18560
 951  0009 250e          	jrult	L251
 952  000b               L051:
 953  000b ae0111        	ldw	x,#273
 954  000e 89            	pushw	x
 955  000f 5f            	clrw	x
 956  0010 89            	pushw	x
 957  0011 ae0010        	ldw	x,#L73
 958  0014 cd0000        	call	_assert_failed
 960  0017 5b04          	addw	sp,#4
 961  0019               L251:
 962                     ; 276   FLASH->CR2 |= FLASH_CR2_OPT;
 964  0019 721e505b      	bset	20571,#7
 965                     ; 277   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 967  001d 721f505c      	bres	20572,#7
 968                     ; 280   if(Address == 0x4800)
 970  0021 1e01          	ldw	x,(OFST+1,sp)
 971  0023 a34800        	cpw	x,#18432
 972  0026 2603          	jrne	L742
 973                     ; 283     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 975  0028 7f            	clr	(x)
 977  0029 2005          	jra	L152
 978  002b               L742:
 979                     ; 288     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 981  002b 7f            	clr	(x)
 982                     ; 289     *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
 984  002c a6ff          	ld	a,#255
 985  002e e701          	ld	(1,x),a
 986  0030               L152:
 987                     ; 291   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 989  0030 a6fd          	ld	a,#253
 990  0032 cd0000        	call	_FLASH_WaitForLastOperation
 992                     ; 294   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 994  0035 721f505b      	bres	20571,#7
 995                     ; 295   FLASH->NCR2 |= FLASH_NCR2_NOPT;
 997  0039 721e505c      	bset	20572,#7
 998                     ; 296 }
1001  003d 85            	popw	x
1002  003e 81            	ret	
1058                     ; 303 uint16_t FLASH_ReadOptionByte(uint16_t Address)
1058                     ; 304 {
1059                     .text:	section	.text,new
1060  0000               _FLASH_ReadOptionByte:
1062  0000 89            	pushw	x
1063  0001 5204          	subw	sp,#4
1064       00000004      OFST:	set	4
1067                     ; 305   uint8_t value_optbyte, value_optbyte_complement = 0;
1069                     ; 306   uint16_t res_value = 0;
1071                     ; 309   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
1073  0003 a34800        	cpw	x,#18432
1074  0006 2505          	jrult	L261
1075  0008 a34880        	cpw	x,#18560
1076  000b 250e          	jrult	L461
1077  000d               L261:
1078  000d ae0135        	ldw	x,#309
1079  0010 89            	pushw	x
1080  0011 5f            	clrw	x
1081  0012 89            	pushw	x
1082  0013 ae0010        	ldw	x,#L73
1083  0016 cd0000        	call	_assert_failed
1085  0019 5b04          	addw	sp,#4
1086  001b               L461:
1087                     ; 311   value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
1089  001b 1e05          	ldw	x,(OFST+1,sp)
1090  001d f6            	ld	a,(x)
1091  001e 6b01          	ld	(OFST-3,sp),a
1093                     ; 312   value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
1095  0020 e601          	ld	a,(1,x)
1096  0022 6b02          	ld	(OFST-2,sp),a
1098                     ; 315   if(Address == 0x4800)	 
1100  0024 a34800        	cpw	x,#18432
1101  0027 2606          	jrne	L572
1102                     ; 317     res_value =	 value_optbyte;
1104  0029 7b01          	ld	a,(OFST-3,sp)
1105  002b 5f            	clrw	x
1106  002c 97            	ld	xl,a
1109  002d 201c          	jra	L772
1110  002f               L572:
1111                     ; 321     if(value_optbyte == (uint8_t)(~value_optbyte_complement))
1113  002f 43            	cpl	a
1114  0030 1101          	cp	a,(OFST-3,sp)
1115  0032 2614          	jrne	L103
1116                     ; 323       res_value = (uint16_t)((uint16_t)value_optbyte << 8);
1118  0034 7b01          	ld	a,(OFST-3,sp)
1119  0036 97            	ld	xl,a
1120  0037 4f            	clr	a
1121  0038 02            	rlwa	x,a
1122  0039 1f03          	ldw	(OFST-1,sp),x
1124                     ; 324       res_value = res_value | (uint16_t)value_optbyte_complement;
1126  003b 5f            	clrw	x
1127  003c 7b02          	ld	a,(OFST-2,sp)
1128  003e 97            	ld	xl,a
1129  003f 01            	rrwa	x,a
1130  0040 1a04          	or	a,(OFST+0,sp)
1131  0042 01            	rrwa	x,a
1132  0043 1a03          	or	a,(OFST-1,sp)
1133  0045 01            	rrwa	x,a
1136  0046 2003          	jra	L772
1137  0048               L103:
1138                     ; 328       res_value = FLASH_OPTIONBYTE_ERROR;
1140  0048 ae5555        	ldw	x,#21845
1142  004b               L772:
1143                     ; 331   return(res_value);
1147  004b 5b06          	addw	sp,#6
1148  004d 81            	ret	
1223                     ; 340 void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
1223                     ; 341 {
1224                     .text:	section	.text,new
1225  0000               _FLASH_SetLowPowerMode:
1227  0000 88            	push	a
1228       00000000      OFST:	set	0
1231                     ; 343   assert_param(IS_FLASH_LOW_POWER_MODE_OK(FLASH_LPMode));
1233  0001 a104          	cp	a,#4
1234  0003 2719          	jreq	L671
1235  0005 a108          	cp	a,#8
1236  0007 2715          	jreq	L671
1237  0009 4d            	tnz	a
1238  000a 2712          	jreq	L671
1239  000c a10c          	cp	a,#12
1240  000e 270e          	jreq	L671
1241  0010 ae0157        	ldw	x,#343
1242  0013 89            	pushw	x
1243  0014 5f            	clrw	x
1244  0015 89            	pushw	x
1245  0016 ae0010        	ldw	x,#L73
1246  0019 cd0000        	call	_assert_failed
1248  001c 5b04          	addw	sp,#4
1249  001e               L671:
1250                     ; 346   FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT)); 
1252  001e c6505a        	ld	a,20570
1253  0021 a4f3          	and	a,#243
1254  0023 c7505a        	ld	20570,a
1255                     ; 349   FLASH->CR1 |= (uint8_t)FLASH_LPMode; 
1257  0026 c6505a        	ld	a,20570
1258  0029 1a01          	or	a,(OFST+1,sp)
1259  002b c7505a        	ld	20570,a
1260                     ; 350 }
1263  002e 84            	pop	a
1264  002f 81            	ret	
1323                     ; 358 void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
1323                     ; 359 {
1324                     .text:	section	.text,new
1325  0000               _FLASH_SetProgrammingTime:
1327  0000 88            	push	a
1328       00000000      OFST:	set	0
1331                     ; 361   assert_param(IS_FLASH_PROGRAM_TIME_OK(FLASH_ProgTime));
1333  0001 4d            	tnz	a
1334  0002 2711          	jreq	L012
1335  0004 4a            	dec	a
1336  0005 270e          	jreq	L012
1337  0007 ae0169        	ldw	x,#361
1338  000a 89            	pushw	x
1339  000b 5f            	clrw	x
1340  000c 89            	pushw	x
1341  000d ae0010        	ldw	x,#L73
1342  0010 cd0000        	call	_assert_failed
1344  0013 5b04          	addw	sp,#4
1345  0015               L012:
1346                     ; 363   FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
1348  0015 7211505a      	bres	20570,#0
1349                     ; 364   FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
1351  0019 c6505a        	ld	a,20570
1352  001c 1a01          	or	a,(OFST+1,sp)
1353  001e c7505a        	ld	20570,a
1354                     ; 365 }
1357  0021 84            	pop	a
1358  0022 81            	ret	
1383                     ; 372 FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
1383                     ; 373 {
1384                     .text:	section	.text,new
1385  0000               _FLASH_GetLowPowerMode:
1389                     ; 374   return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
1391  0000 c6505a        	ld	a,20570
1392  0003 a40c          	and	a,#12
1395  0005 81            	ret	
1420                     ; 382 FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
1420                     ; 383 {
1421                     .text:	section	.text,new
1422  0000               _FLASH_GetProgrammingTime:
1426                     ; 384   return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
1428  0000 c6505a        	ld	a,20570
1429  0003 a401          	and	a,#1
1432  0005 81            	ret	
1464                     ; 392 uint32_t FLASH_GetBootSize(void)
1464                     ; 393 {
1465                     .text:	section	.text,new
1466  0000               _FLASH_GetBootSize:
1468  0000 5204          	subw	sp,#4
1469       00000004      OFST:	set	4
1472                     ; 394   uint32_t temp = 0;
1474                     ; 397   temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
1476  0002 c6505d        	ld	a,20573
1477  0005 5f            	clrw	x
1478  0006 97            	ld	xl,a
1479  0007 90ae0200      	ldw	y,#512
1480  000b cd0000        	call	c_umul
1482  000e 96            	ldw	x,sp
1483  000f 5c            	incw	x
1484  0010 cd0000        	call	c_rtol
1487                     ; 400   if(FLASH->FPR == 0xFF)
1489  0013 c6505d        	ld	a,20573
1490  0016 4c            	inc	a
1491  0017 260d          	jrne	L124
1492                     ; 402     temp += 512;
1494  0019 ae0200        	ldw	x,#512
1495  001c bf02          	ldw	c_lreg+2,x
1496  001e 5f            	clrw	x
1497  001f bf00          	ldw	c_lreg,x
1498  0021 96            	ldw	x,sp
1499  0022 5c            	incw	x
1500  0023 cd0000        	call	c_lgadd
1503  0026               L124:
1504                     ; 406   return(temp);
1506  0026 96            	ldw	x,sp
1507  0027 5c            	incw	x
1508  0028 cd0000        	call	c_ltor
1512  002b 5b04          	addw	sp,#4
1513  002d 81            	ret	
1623                     ; 417 FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
1623                     ; 418 {
1624                     .text:	section	.text,new
1625  0000               _FLASH_GetFlagStatus:
1627  0000 88            	push	a
1628  0001 88            	push	a
1629       00000001      OFST:	set	1
1632                     ; 419   FlagStatus status = RESET;
1634                     ; 421   assert_param(IS_FLASH_FLAGS_OK(FLASH_FLAG));
1636  0002 a140          	cp	a,#64
1637  0004 271d          	jreq	L032
1638  0006 a108          	cp	a,#8
1639  0008 2719          	jreq	L032
1640  000a a104          	cp	a,#4
1641  000c 2715          	jreq	L032
1642  000e a102          	cp	a,#2
1643  0010 2711          	jreq	L032
1644  0012 4a            	dec	a
1645  0013 270e          	jreq	L032
1646  0015 ae01a5        	ldw	x,#421
1647  0018 89            	pushw	x
1648  0019 5f            	clrw	x
1649  001a 89            	pushw	x
1650  001b ae0010        	ldw	x,#L73
1651  001e cd0000        	call	_assert_failed
1653  0021 5b04          	addw	sp,#4
1654  0023               L032:
1655                     ; 424   if((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
1657  0023 c6505f        	ld	a,20575
1658  0026 1502          	bcp	a,(OFST+1,sp)
1659  0028 2704          	jreq	L374
1660                     ; 426     status = SET; /* FLASH_FLAG is set */
1662  002a a601          	ld	a,#1
1665  002c 2001          	jra	L574
1666  002e               L374:
1667                     ; 430     status = RESET; /* FLASH_FLAG is reset*/
1669  002e 4f            	clr	a
1671  002f               L574:
1672                     ; 434   return status;
1676  002f 85            	popw	x
1677  0030 81            	ret	
1766                     ; 549 IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType)) 
1766                     ; 550 {
1767                     .text:	section	.text,new
1768  0000               _FLASH_WaitForLastOperation:
1770  0000 5203          	subw	sp,#3
1771       00000003      OFST:	set	3
1774                     ; 551   uint8_t flagstatus = 0x00;
1776  0002 0f03          	clr	(OFST+0,sp)
1778                     ; 552   uint16_t timeout = OPERATION_TIMEOUT;
1780  0004 aeffff        	ldw	x,#65535
1781  0007 1f01          	ldw	(OFST-2,sp),x
1783                     ; 557     if(FLASH_MemType == FLASH_MEMTYPE_PROG)
1785  0009 a1fd          	cp	a,#253
1786  000b 2620          	jrne	L355
1788  000d 200a          	jra	L145
1789  000f               L735:
1790                     ; 561         flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_EOP |
1790                     ; 562                                                         FLASH_IAPSR_WR_PG_DIS));
1792  000f c6505f        	ld	a,20575
1793  0012 a405          	and	a,#5
1794  0014 6b03          	ld	(OFST+0,sp),a
1796                     ; 563         timeout--;
1798  0016 5a            	decw	x
1799  0017 1f01          	ldw	(OFST-2,sp),x
1801  0019               L145:
1802                     ; 559       while((flagstatus == 0x00) && (timeout != 0x00))
1804  0019 7b03          	ld	a,(OFST+0,sp)
1805  001b 2618          	jrne	L745
1807  001d 1e01          	ldw	x,(OFST-2,sp)
1808  001f 26ee          	jrne	L735
1809  0021 2012          	jra	L745
1810  0023               L155:
1811                     ; 570         flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_HVOFF |
1811                     ; 571                                                         FLASH_IAPSR_WR_PG_DIS));
1813  0023 c6505f        	ld	a,20575
1814  0026 a441          	and	a,#65
1815  0028 6b03          	ld	(OFST+0,sp),a
1817                     ; 572         timeout--;
1819  002a 5a            	decw	x
1820  002b 1f01          	ldw	(OFST-2,sp),x
1822  002d               L355:
1823                     ; 568       while((flagstatus == 0x00) && (timeout != 0x00))
1825  002d 7b03          	ld	a,(OFST+0,sp)
1826  002f 2604          	jrne	L745
1828  0031 1e01          	ldw	x,(OFST-2,sp)
1829  0033 26ee          	jrne	L155
1830  0035               L745:
1831                     ; 584   if(timeout == 0x00 )
1833  0035 1e01          	ldw	x,(OFST-2,sp)
1834  0037 2602          	jrne	L165
1835                     ; 586     flagstatus = FLASH_STATUS_TIMEOUT;
1837  0039 a602          	ld	a,#2
1839  003b               L165:
1840                     ; 589   return((FLASH_Status_TypeDef)flagstatus);
1844  003b 5b03          	addw	sp,#3
1845  003d 81            	ret	
1905                     ; 599 IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
1905                     ; 600 {
1906                     .text:	section	.text,new
1907  0000               _FLASH_EraseBlock:
1909  0000 89            	pushw	x
1910  0001 5207          	subw	sp,#7
1911       00000007      OFST:	set	7
1914                     ; 601   uint32_t startaddress = 0;
1916                     ; 611   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
1918  0003 7b0c          	ld	a,(OFST+5,sp)
1919  0005 a1fd          	cp	a,#253
1920  0007 270b          	jreq	L442
1921  0009 a1f7          	cp	a,#247
1922  000b 2707          	jreq	L442
1923  000d ae0263        	ldw	x,#611
1924  0010 ad72          	call	LC001
1925  0012 7b0c          	ld	a,(OFST+5,sp)
1926  0014               L442:
1927                     ; 612   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
1929  0014 a1fd          	cp	a,#253
1930  0016 2611          	jrne	L116
1931                     ; 614     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
1933  0018 1e08          	ldw	x,(OFST+1,sp)
1934  001a a30400        	cpw	x,#1024
1935  001d 2505          	jrult	L252
1936  001f ae0266        	ldw	x,#614
1937  0022 ad60          	call	LC001
1938  0024               L252:
1939                     ; 615     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
1941  0024 ae8000        	ldw	x,#32768
1943  0027 200f          	jra	L316
1944  0029               L116:
1945                     ; 619     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
1947  0029 1e08          	ldw	x,(OFST+1,sp)
1948  002b a30010        	cpw	x,#16
1949  002e 2505          	jrult	L062
1950  0030 ae026b        	ldw	x,#619
1951  0033 ad4f          	call	LC001
1952  0035               L062:
1953                     ; 620     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
1955  0035 ae4000        	ldw	x,#16384
1956  0038               L316:
1957  0038 1f03          	ldw	(OFST-4,sp),x
1958  003a 5f            	clrw	x
1959  003b 1f01          	ldw	(OFST-6,sp),x
1961                     ; 625   pwFlash = (PointerAttr uint8_t *)(MemoryAddressCast)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
1963  003d a680          	ld	a,#128
1964  003f 1e08          	ldw	x,(OFST+1,sp)
1965  0041 cd0000        	call	c_cmulx
1967  0044 96            	ldw	x,sp
1968  0045 5c            	incw	x
1969  0046 cd0000        	call	c_ladd
1971  0049 450100        	mov	c_x,c_lreg+1
1972  004c b600          	ld	a,c_x
1973  004e be02          	ldw	x,c_lreg+2
1974  0050 6b05          	ld	(OFST-2,sp),a
1975  0052 1f06          	ldw	(OFST-1,sp),x
1977                     ; 632   FLASH->CR2 |= FLASH_CR2_ERASE;
1979  0054 721a505b      	bset	20571,#5
1980                     ; 633   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
1982  0058 721b505c      	bres	20572,#5
1983                     ; 640     *pwFlash = (uint8_t)0;
1985  005c b700          	ld	c_x,a
1986  005e bf01          	ldw	c_x+1,x
1987  0060 4f            	clr	a
1988  0061 92bd0000      	ldf	[c_x.e],a
1989                     ; 641   *(pwFlash + 1) = (uint8_t)0;
1991  0065 7b05          	ld	a,(OFST-2,sp)
1992  0067 b700          	ld	c_x,a
1993  0069 ae0001        	ldw	x,#1
1994  006c 4f            	clr	a
1995  006d 92a70000      	ldf	([c_x.e],x),a
1996                     ; 642   *(pwFlash + 2) = (uint8_t)0;
1998  0071 1e06          	ldw	x,(OFST-1,sp)
1999  0073 bf01          	ldw	c_x+1,x
2000  0075 ae0002        	ldw	x,#2
2001  0078 92a70000      	ldf	([c_x.e],x),a
2002                     ; 643   *(pwFlash + 3) = (uint8_t)0;    
2004  007c 5c            	incw	x
2005  007d 92a70000      	ldf	([c_x.e],x),a
2006                     ; 645 }
2009  0081 5b09          	addw	sp,#9
2010  0083 81            	ret	
2011  0084               LC001:
2012  0084 89            	pushw	x
2013  0085 5f            	clrw	x
2014  0086 89            	pushw	x
2015  0087 ae0010        	ldw	x,#L73
2016  008a cd0000        	call	_assert_failed
2018  008d 5b04          	addw	sp,#4
2019  008f 81            	ret	
2118                     ; 656 IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType, 
2118                     ; 657                         FLASH_ProgramMode_TypeDef FLASH_ProgMode, uint8_t *Buffer))
2118                     ; 658 {
2119                     .text:	section	.text,new
2120  0000               _FLASH_ProgramBlock:
2122  0000 89            	pushw	x
2123  0001 5206          	subw	sp,#6
2124       00000006      OFST:	set	6
2127                     ; 659   uint16_t Count = 0;
2129                     ; 660   uint32_t startaddress = 0;
2131                     ; 663   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
2133  0003 7b0b          	ld	a,(OFST+5,sp)
2134  0005 a1fd          	cp	a,#253
2135  0007 2709          	jreq	L272
2136  0009 a1f7          	cp	a,#247
2137  000b 2705          	jreq	L272
2138  000d ae0297        	ldw	x,#663
2139  0010 ad7e          	call	LC002
2140  0012               L272:
2141                     ; 664   assert_param(IS_FLASH_PROGRAM_MODE_OK(FLASH_ProgMode));
2143  0012 7b0c          	ld	a,(OFST+6,sp)
2144  0014 2709          	jreq	L203
2145  0016 a110          	cp	a,#16
2146  0018 2705          	jreq	L203
2147  001a ae0298        	ldw	x,#664
2148  001d ad71          	call	LC002
2149  001f               L203:
2150                     ; 665   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
2152  001f 7b0b          	ld	a,(OFST+5,sp)
2153  0021 a1fd          	cp	a,#253
2154  0023 2611          	jrne	L166
2155                     ; 667     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
2157  0025 1e07          	ldw	x,(OFST+1,sp)
2158  0027 a30400        	cpw	x,#1024
2159  002a 2505          	jrult	L013
2160  002c ae029b        	ldw	x,#667
2161  002f ad5f          	call	LC002
2162  0031               L013:
2163                     ; 668     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
2165  0031 ae8000        	ldw	x,#32768
2167  0034 200f          	jra	L366
2168  0036               L166:
2169                     ; 672     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
2171  0036 1e07          	ldw	x,(OFST+1,sp)
2172  0038 a30010        	cpw	x,#16
2173  003b 2505          	jrult	L613
2174  003d ae02a0        	ldw	x,#672
2175  0040 ad4e          	call	LC002
2176  0042               L613:
2177                     ; 673     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
2179  0042 ae4000        	ldw	x,#16384
2180  0045               L366:
2181  0045 1f03          	ldw	(OFST-3,sp),x
2182  0047 5f            	clrw	x
2183  0048 1f01          	ldw	(OFST-5,sp),x
2185                     ; 677   startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
2187  004a a680          	ld	a,#128
2188  004c 1e07          	ldw	x,(OFST+1,sp)
2189  004e cd0000        	call	c_cmulx
2191  0051 96            	ldw	x,sp
2192  0052 5c            	incw	x
2193  0053 cd0000        	call	c_lgadd
2196                     ; 680   if(FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
2198  0056 7b0c          	ld	a,(OFST+6,sp)
2199  0058 260a          	jrne	L566
2200                     ; 683     FLASH->CR2 |= FLASH_CR2_PRG;
2202  005a 7210505b      	bset	20571,#0
2203                     ; 684     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
2205  005e 7211505c      	bres	20572,#0
2207  0062 2008          	jra	L766
2208  0064               L566:
2209                     ; 689     FLASH->CR2 |= FLASH_CR2_FPRG;
2211  0064 7218505b      	bset	20571,#4
2212                     ; 690     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
2214  0068 7219505c      	bres	20572,#4
2215  006c               L766:
2216                     ; 694   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2218  006c 5f            	clrw	x
2219  006d 1f05          	ldw	(OFST-1,sp),x
2221  006f               L176:
2222                     ; 696     *((PointerAttr uint8_t*) (MemoryAddressCast)startaddress + Count) = ((uint8_t)(Buffer[Count]));
2224  006f 1e0d          	ldw	x,(OFST+7,sp)
2225  0071 72fb05        	addw	x,(OFST-1,sp)
2226  0074 f6            	ld	a,(x)
2227  0075 88            	push	a
2228  0076 7b03          	ld	a,(OFST-3,sp)
2229  0078 b700          	ld	c_x,a
2230  007a 1e04          	ldw	x,(OFST-2,sp)
2231  007c bf01          	ldw	c_x+1,x
2232  007e 84            	pop	a
2233  007f 1e05          	ldw	x,(OFST-1,sp)
2234  0081 92a70000      	ldf	([c_x.e],x),a
2235                     ; 694   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2237  0085 5c            	incw	x
2238  0086 1f05          	ldw	(OFST-1,sp),x
2242  0088 a30080        	cpw	x,#128
2243  008b 25e2          	jrult	L176
2244                     ; 698 }
2247  008d 5b08          	addw	sp,#8
2248  008f 81            	ret	
2249  0090               LC002:
2250  0090 89            	pushw	x
2251  0091 5f            	clrw	x
2252  0092 89            	pushw	x
2253  0093 ae0010        	ldw	x,#L73
2254  0096 cd0000        	call	_assert_failed
2256  0099 5b04          	addw	sp,#4
2257  009b 81            	ret	
2270                     	xdef	_FLASH_WaitForLastOperation
2271                     	xdef	_FLASH_ProgramBlock
2272                     	xdef	_FLASH_EraseBlock
2273                     	xdef	_FLASH_GetFlagStatus
2274                     	xdef	_FLASH_GetBootSize
2275                     	xdef	_FLASH_GetProgrammingTime
2276                     	xdef	_FLASH_GetLowPowerMode
2277                     	xdef	_FLASH_SetProgrammingTime
2278                     	xdef	_FLASH_SetLowPowerMode
2279                     	xdef	_FLASH_EraseOptionByte
2280                     	xdef	_FLASH_ProgramOptionByte
2281                     	xdef	_FLASH_ReadOptionByte
2282                     	xdef	_FLASH_ProgramWord
2283                     	xdef	_FLASH_ReadByte
2284                     	xdef	_FLASH_ProgramByte
2285                     	xdef	_FLASH_EraseByte
2286                     	xdef	_FLASH_ITConfig
2287                     	xdef	_FLASH_DeInit
2288                     	xdef	_FLASH_Lock
2289                     	xdef	_FLASH_Unlock
2290                     	xref	_assert_failed
2291                     	switch	.const
2292  0010               L73:
2293  0010 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
2294  0022 6965735c7374  	dc.b	"ies\stm8s_stdperip"
2295  0034 685f64726976  	dc.b	"h_driver\src\stm8s"
2296  0046 5f666c617368  	dc.b	"_flash.c",0
2297                     	xref.b	c_lreg
2298                     	xref.b	c_x
2299                     	xref.b	c_y
2319                     	xref	c_ladd
2320                     	xref	c_cmulx
2321                     	xref	c_lgadd
2322                     	xref	c_rtol
2323                     	xref	c_umul
2324                     	xref	c_lcmp
2325                     	xref	c_ltor
2326                     	end
