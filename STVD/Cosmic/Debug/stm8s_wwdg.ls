   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
   4                     ; Optimizer V4.5.6 - 18 Jul 2023
  67                     ; 53 void WWDG_Init(uint8_t Counter, uint8_t WindowValue)
  67                     ; 54 {
  69                     .text:	section	.text,new
  70  0000               _WWDG_Init:
  72  0000 89            	pushw	x
  73       00000000      OFST:	set	0
  76                     ; 56   assert_param(IS_WWDG_WINDOWLIMITVALUE_OK(WindowValue));
  78  0001 9f            	ld	a,xl
  79  0002 a180          	cp	a,#128
  80  0004 250e          	jrult	L01
  81  0006 ae0038        	ldw	x,#56
  82  0009 89            	pushw	x
  83  000a 5f            	clrw	x
  84  000b 89            	pushw	x
  85  000c ae0000        	ldw	x,#L72
  86  000f cd0000        	call	_assert_failed
  88  0012 5b04          	addw	sp,#4
  89  0014               L01:
  90                     ; 58   WWDG->WR = WWDG_WR_RESET_VALUE;
  92  0014 357f50d2      	mov	20690,#127
  93                     ; 59   WWDG->CR = (uint8_t)((uint8_t)(WWDG_CR_WDGA | WWDG_CR_T6) | (uint8_t)Counter);
  95  0018 7b01          	ld	a,(OFST+1,sp)
  96  001a aac0          	or	a,#192
  97  001c c750d1        	ld	20689,a
  98                     ; 60   WWDG->WR = (uint8_t)((uint8_t)(~WWDG_CR_WDGA) & (uint8_t)(WWDG_CR_T6 | WindowValue));
 100  001f 7b02          	ld	a,(OFST+2,sp)
 101  0021 a47f          	and	a,#127
 102  0023 aa40          	or	a,#64
 103  0025 c750d2        	ld	20690,a
 104                     ; 61 }
 107  0028 85            	popw	x
 108  0029 81            	ret	
 141                     ; 69 void WWDG_SetCounter(uint8_t Counter)
 141                     ; 70 {
 142                     .text:	section	.text,new
 143  0000               _WWDG_SetCounter:
 145  0000 88            	push	a
 146       00000000      OFST:	set	0
 149                     ; 72   assert_param(IS_WWDG_COUNTERVALUE_OK(Counter));
 151  0001 a180          	cp	a,#128
 152  0003 250e          	jrult	L02
 153  0005 ae0048        	ldw	x,#72
 154  0008 89            	pushw	x
 155  0009 5f            	clrw	x
 156  000a 89            	pushw	x
 157  000b ae0000        	ldw	x,#L72
 158  000e cd0000        	call	_assert_failed
 160  0011 5b04          	addw	sp,#4
 161  0013               L02:
 162                     ; 76   WWDG->CR = (uint8_t)(Counter & (uint8_t)BIT_MASK);
 164  0013 7b01          	ld	a,(OFST+1,sp)
 165  0015 a47f          	and	a,#127
 166  0017 c750d1        	ld	20689,a
 167                     ; 77 }
 170  001a 84            	pop	a
 171  001b 81            	ret	
 194                     ; 86 uint8_t WWDG_GetCounter(void)
 194                     ; 87 {
 195                     .text:	section	.text,new
 196  0000               _WWDG_GetCounter:
 200                     ; 88   return(WWDG->CR);
 202  0000 c650d1        	ld	a,20689
 205  0003 81            	ret	
 228                     ; 96 void WWDG_SWReset(void)
 228                     ; 97 {
 229                     .text:	section	.text,new
 230  0000               _WWDG_SWReset:
 234                     ; 98   WWDG->CR = WWDG_CR_WDGA; /* Activate WWDG, with clearing T6 */
 236  0000 358050d1      	mov	20689,#128
 237                     ; 99 }
 240  0004 81            	ret	
 274                     ; 108 void WWDG_SetWindowValue(uint8_t WindowValue)
 274                     ; 109 {
 275                     .text:	section	.text,new
 276  0000               _WWDG_SetWindowValue:
 278  0000 88            	push	a
 279       00000000      OFST:	set	0
 282                     ; 111   assert_param(IS_WWDG_WINDOWLIMITVALUE_OK(WindowValue));
 284  0001 a180          	cp	a,#128
 285  0003 250e          	jrult	L43
 286  0005 ae006f        	ldw	x,#111
 287  0008 89            	pushw	x
 288  0009 5f            	clrw	x
 289  000a 89            	pushw	x
 290  000b ae0000        	ldw	x,#L72
 291  000e cd0000        	call	_assert_failed
 293  0011 5b04          	addw	sp,#4
 294  0013               L43:
 295                     ; 113   WWDG->WR = (uint8_t)((uint8_t)(~WWDG_CR_WDGA) & (uint8_t)(WWDG_CR_T6 | WindowValue));
 297  0013 7b01          	ld	a,(OFST+1,sp)
 298  0015 a47f          	and	a,#127
 299  0017 aa40          	or	a,#64
 300  0019 c750d2        	ld	20690,a
 301                     ; 114 }
 304  001c 84            	pop	a
 305  001d 81            	ret	
 318                     	xdef	_WWDG_SetWindowValue
 319                     	xdef	_WWDG_SWReset
 320                     	xdef	_WWDG_GetCounter
 321                     	xdef	_WWDG_SetCounter
 322                     	xdef	_WWDG_Init
 323                     	xref	_assert_failed
 324                     .const:	section	.text
 325  0000               L72:
 326  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 327  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 328  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
 329  0036 5f777764672e  	dc.b	"_wwdg.c",0
 349                     	end
