   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
   4                     ; Optimizer V4.5.6 - 18 Jul 2023
 125                     ; 54 FlagStatus RST_GetFlagStatus(RST_Flag_TypeDef RST_Flag)
 125                     ; 55 {
 127                     .text:	section	.text,new
 128  0000               _RST_GetFlagStatus:
 130  0000 88            	push	a
 131       00000000      OFST:	set	0
 134                     ; 57   assert_param(IS_RST_FLAG_OK(RST_Flag));
 136  0001 a110          	cp	a,#16
 137  0003 271d          	jreq	L21
 138  0005 a108          	cp	a,#8
 139  0007 2719          	jreq	L21
 140  0009 a104          	cp	a,#4
 141  000b 2715          	jreq	L21
 142  000d a102          	cp	a,#2
 143  000f 2711          	jreq	L21
 144  0011 4a            	dec	a
 145  0012 270e          	jreq	L21
 146  0014 ae0039        	ldw	x,#57
 147  0017 89            	pushw	x
 148  0018 5f            	clrw	x
 149  0019 89            	pushw	x
 150  001a ae0000        	ldw	x,#L55
 151  001d cd0000        	call	_assert_failed
 153  0020 5b04          	addw	sp,#4
 154  0022               L21:
 155                     ; 60   return((FlagStatus)(((uint8_t)(RST->SR & RST_Flag) == (uint8_t)0x00) ? RESET : SET));
 157  0022 c650b3        	ld	a,20659
 158  0025 1501          	bcp	a,(OFST+1,sp)
 159  0027 2603          	jrne	L61
 160  0029 4f            	clr	a
 161  002a 2002          	jra	L02
 162  002c               L61:
 163  002c a601          	ld	a,#1
 164  002e               L02:
 167  002e 5b01          	addw	sp,#1
 168  0030 81            	ret	
 204                     ; 69 void RST_ClearFlag(RST_Flag_TypeDef RST_Flag)
 204                     ; 70 {
 205                     .text:	section	.text,new
 206  0000               _RST_ClearFlag:
 208  0000 88            	push	a
 209       00000000      OFST:	set	0
 212                     ; 72   assert_param(IS_RST_FLAG_OK(RST_Flag));
 214  0001 a110          	cp	a,#16
 215  0003 271d          	jreq	L03
 216  0005 a108          	cp	a,#8
 217  0007 2719          	jreq	L03
 218  0009 a104          	cp	a,#4
 219  000b 2715          	jreq	L03
 220  000d a102          	cp	a,#2
 221  000f 2711          	jreq	L03
 222  0011 4a            	dec	a
 223  0012 270e          	jreq	L03
 224  0014 ae0048        	ldw	x,#72
 225  0017 89            	pushw	x
 226  0018 5f            	clrw	x
 227  0019 89            	pushw	x
 228  001a ae0000        	ldw	x,#L55
 229  001d cd0000        	call	_assert_failed
 231  0020 5b04          	addw	sp,#4
 232  0022               L03:
 233                     ; 74   RST->SR = (uint8_t)RST_Flag;
 235  0022 7b01          	ld	a,(OFST+1,sp)
 236  0024 c750b3        	ld	20659,a
 237                     ; 75 }
 240  0027 84            	pop	a
 241  0028 81            	ret	
 254                     	xdef	_RST_ClearFlag
 255                     	xdef	_RST_GetFlagStatus
 256                     	xref	_assert_failed
 257                     .const:	section	.text
 258  0000               L55:
 259  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 260  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 261  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
 262  0036 5f7273742e63  	dc.b	"_rst.c",0
 282                     	end
