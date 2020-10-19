pcode dump


	New pBlock

code, dbName =C
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=12previous max_key=14 
S_adc__Start_conversion_Int	code
_Start_conversion_Int:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7642:genReceive *{*
;; ***	genReceive  7643
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x104E, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x104E 
	.line	37; "adc.c"	void Start_conversion_Int(unsigned char channel)
	MOVWF	r0x1000
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 4059 result AOP_REG=r0x104F, size=1, left AOP_REG=r0x104E, size=1, right AOP_LIT=0x04, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4294:genAnd
	.line	40; "adc.c"	ADC_SELECT_CHANNEL(channel);
	MOVLW	0x04
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4295:genAnd
;;	1126 rIdx = r0x104E 
	ANDWF	r0x1000,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4296:genAnd
;;	1126 rIdx = r0x104F 
	MOVWF	r0x1001
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;;shiftRight_Left2ResultLit:5474: shCount=1, size=1, sign=0, same=0, offr=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5530:shiftRight_Left2ResultLit
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5545:shiftRight_Left2ResultLit
;;	1126 rIdx = r0x104F 
	RRF	r0x1001,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5546:shiftRight_Left2ResultLit
;;	1126 rIdx = r0x1050 
	MOVWF	r0x1002
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;;shiftRight_Left2ResultLit:5474: shCount=1, size=1, sign=0, same=1, offr=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5530:shiftRight_Left2ResultLit
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5541:shiftRight_Left2ResultLit
;;	1126 rIdx = r0x1050 
	RRF	r0x1002,F
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6951:genPointerSet *{*
;; ***	genPointerSet  6952
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6871:genNearPointerSet *{*
;; ***	genNearPointerSet  6872
;;	627
;;	aopForRemat 406
;;	432: rname _ADCON0bits, val 0, const = 0
;; ***	genNearPointerSet  6886
;;	589
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON0bits
;; 	line = 6888 result AOP_PCODE=_ADCON0bits, size=2, left -=-, size=0, right AOP_REG=r0x1050, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6689:genPackBits *{*
;; ***	genPackBits  6690
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON0bits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6756:genPackBits
;;	1126 rIdx = r0x1050 
	RRF	r0x1002,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6757:genPackBits
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6758:genPackBits
	BCF	_ADCON0bits,5
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6759:genPackBits
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6760:genPackBits
	BSF	_ADCON0bits,5
;; ***	genNearPointerSet  6905
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 4059 result AOP_REG=r0x104F, size=1, left AOP_REG=r0x104E, size=1, right AOP_LIT=0x02, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4294:genAnd
	MOVLW	0x02
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4295:genAnd
;;	1126 rIdx = r0x104E 
	ANDWF	r0x1000,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4296:genAnd
;;	1126 rIdx = r0x104F 
	MOVWF	r0x1001
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;;shiftRight_Left2ResultLit:5474: shCount=1, size=1, sign=0, same=0, offr=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5530:shiftRight_Left2ResultLit
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5545:shiftRight_Left2ResultLit
;;	1126 rIdx = r0x104F 
	RRF	r0x1001,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5546:shiftRight_Left2ResultLit
;;	1126 rIdx = r0x1050 
	MOVWF	r0x1002
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6951:genPointerSet *{*
;; ***	genPointerSet  6952
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6871:genNearPointerSet *{*
;; ***	genNearPointerSet  6872
;;	627
;;	aopForRemat 406
;;	432: rname _ADCON0bits, val 0, const = 0
;; ***	genNearPointerSet  6886
;;	589
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON0bits
;; 	line = 6888 result AOP_PCODE=_ADCON0bits, size=2, left -=-, size=0, right AOP_REG=r0x1050, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6689:genPackBits *{*
;; ***	genPackBits  6690
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON0bits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6756:genPackBits
;;	1126 rIdx = r0x1050 
	RRF	r0x1002,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6757:genPackBits
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6758:genPackBits
	BCF	_ADCON0bits,4
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6759:genPackBits
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6760:genPackBits
	BSF	_ADCON0bits,4
;; ***	genNearPointerSet  6905
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7192:genAssign *{*
;; ***	genAssign  7193
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7202 result AOP_REG=r0x104E, size=1, left -=-, size=0, right AOP_REG=r0x104E, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6951:genPointerSet *{*
;; ***	genPointerSet  6952
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6871:genNearPointerSet *{*
;; ***	genNearPointerSet  6872
;;	627
;;	aopForRemat 406
;;	432: rname _ADCON0bits, val 0, const = 0
;; ***	genNearPointerSet  6886
;;	708 register type nRegs=1
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON0bits
;; 	line = 6888 result AOP_PCODE=_ADCON0bits, size=2, left -=-, size=0, right AOP_REG=r0x104E, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6689:genPackBits *{*
;; ***	genPackBits  6690
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON0bits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6756:genPackBits
;;	1126 rIdx = r0x104E 
	RRF	r0x1000,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6757:genPackBits
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6758:genPackBits
	BCF	_ADCON0bits,3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6759:genPackBits
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6760:genPackBits
	BSF	_ADCON0bits,3
;; ***	genNearPointerSet  6905
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6951:genPointerSet *{*
;; ***	genPointerSet  6952
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6871:genNearPointerSet *{*
;; ***	genNearPointerSet  6872
;;	627
;;	aopForRemat 406
;;	432: rname _ADCON1bits, val 0, const = 0
;; ***	genNearPointerSet  6886
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON1bits
;; 	line = 6888 result AOP_PCODE=_ADCON1bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6689:genPackBits *{*
;; ***	genPackBits  6690
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON1bits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6712:genPackBits
	.line	41; "adc.c"	ADC_SELECT_RESULT_JUSTIFICATION(1);
	BSF	_ADCON1bits,7
;; ***	genNearPointerSet  6905
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6951:genPointerSet *{*
;; ***	genPointerSet  6952
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6871:genNearPointerSet *{*
;; ***	genNearPointerSet  6872
;;	627
;;	aopForRemat 406
;;	432: rname _ADCON0bits, val 0, const = 0
;; ***	genNearPointerSet  6886
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON0bits
;; 	line = 6888 result AOP_PCODE=_ADCON0bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6689:genPackBits *{*
;; ***	genPackBits  6690
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON0bits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6712:genPackBits
	.line	42; "adc.c"	ADC_SET_STATE(1);                    //Set ADC ON
	BSF	_ADCON0bits,0
;; ***	genNearPointerSet  6905
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6951:genPointerSet *{*
;; ***	genPointerSet  6952
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6871:genNearPointerSet *{*
;; ***	genNearPointerSet  6872
;;	627
;;	aopForRemat 406
;;	432: rname _ADCON0bits, val 0, const = 0
;; ***	genNearPointerSet  6886
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON0bits
;; 	line = 6888 result AOP_PCODE=_ADCON0bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6689:genPackBits *{*
;; ***	genPackBits  6690
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON0bits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6712:genPackBits
	.line	43; "adc.c"	ADC_START_CONVERSION();
	BSF	_ADCON0bits,2
;; ***	genNearPointerSet  6905
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6951:genPointerSet *{*
;; ***	genPointerSet  6952
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6871:genNearPointerSet *{*
;; ***	genNearPointerSet  6872
;;	627
;;	aopForRemat 406
;;	432: rname _INTCONbits, val 0, const = 0
;; ***	genNearPointerSet  6886
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; 	line = 6888 result AOP_PCODE=_INTCONbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6689:genPackBits *{*
;; ***	genPackBits  6690
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6712:genPackBits
	.line	44; "adc.c"	GIE  = 1 ;
	BSF	_INTCONbits,7
;; ***	genNearPointerSet  6905
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6951:genPointerSet *{*
;; ***	genPointerSet  6952
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6871:genNearPointerSet *{*
;; ***	genNearPointerSet  6872
;;	627
;;	aopForRemat 406
;;	432: rname _INTCONbits, val 0, const = 0
;; ***	genNearPointerSet  6886
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; 	line = 6888 result AOP_PCODE=_INTCONbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6689:genPackBits *{*
;; ***	genPackBits  6690
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6712:genPackBits
	.line	45; "adc.c"	PEIE = 1 ;
	BSF	_INTCONbits,6
;; ***	genNearPointerSet  6905
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6951:genPointerSet *{*
;; ***	genPointerSet  6952
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6871:genNearPointerSet *{*
;; ***	genNearPointerSet  6872
;;	627
;;	aopForRemat 406
;;	432: rname _PIE1bits, val 0, const = 0
;; ***	genNearPointerSet  6886
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PIE1bits
;; 	line = 6888 result AOP_PCODE=_PIE1bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6689:genPackBits *{*
;; ***	genPackBits  6690
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PIE1bits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6712:genPackBits
	.line	46; "adc.c"	ADIE = 1 ;
	BSF	_PIE1bits,6
;; ***	genNearPointerSet  6905
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	47; "adc.c"	}
	RETURN	
; exit point of _Start_conversion_Int

	New pBlock

code, dbName =C
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=8previous max_key=0 
S_adc__ADC_GetResult	code
_ADC_GetResult:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7642:genReceive *{*
;; ***	genReceive  7643
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1048, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1048 
	.line	20; "adc.c"	unsigned int ADC_GetResult(unsigned char channel)
	MOVWF	r0x1003
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 4059 result AOP_REG=r0x1049, size=1, left AOP_REG=r0x1048, size=1, right AOP_LIT=0x04, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4294:genAnd
	.line	25; "adc.c"	ADC_SELECT_CHANNEL(channel);
	MOVLW	0x04
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4295:genAnd
;;	1126 rIdx = r0x1048 
	ANDWF	r0x1003,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4296:genAnd
;;	1126 rIdx = r0x1049 
	MOVWF	r0x1004
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;;shiftRight_Left2ResultLit:5474: shCount=1, size=1, sign=0, same=0, offr=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5530:shiftRight_Left2ResultLit
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5545:shiftRight_Left2ResultLit
;;	1126 rIdx = r0x1049 
	RRF	r0x1004,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5546:shiftRight_Left2ResultLit
;;	1126 rIdx = r0x104A 
	MOVWF	r0x1005
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;;shiftRight_Left2ResultLit:5474: shCount=1, size=1, sign=0, same=1, offr=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5530:shiftRight_Left2ResultLit
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5541:shiftRight_Left2ResultLit
;;	1126 rIdx = r0x104A 
	RRF	r0x1005,F
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6951:genPointerSet *{*
;; ***	genPointerSet  6952
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6871:genNearPointerSet *{*
;; ***	genNearPointerSet  6872
;;	627
;;	aopForRemat 406
;;	432: rname _ADCON0bits, val 0, const = 0
;; ***	genNearPointerSet  6886
;;	589
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON0bits
;; 	line = 6888 result AOP_PCODE=_ADCON0bits, size=2, left -=-, size=0, right AOP_REG=r0x104A, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6689:genPackBits *{*
;; ***	genPackBits  6690
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON0bits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6756:genPackBits
;;	1126 rIdx = r0x104A 
	RRF	r0x1005,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6757:genPackBits
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6758:genPackBits
	BCF	_ADCON0bits,5
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6759:genPackBits
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6760:genPackBits
	BSF	_ADCON0bits,5
;; ***	genNearPointerSet  6905
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 4059 result AOP_REG=r0x1049, size=1, left AOP_REG=r0x1048, size=1, right AOP_LIT=0x02, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4294:genAnd
	MOVLW	0x02
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4295:genAnd
;;	1126 rIdx = r0x1048 
	ANDWF	r0x1003,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4296:genAnd
;;	1126 rIdx = r0x1049 
	MOVWF	r0x1004
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;;shiftRight_Left2ResultLit:5474: shCount=1, size=1, sign=0, same=0, offr=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5530:shiftRight_Left2ResultLit
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5545:shiftRight_Left2ResultLit
;;	1126 rIdx = r0x1049 
	RRF	r0x1004,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5546:shiftRight_Left2ResultLit
;;	1126 rIdx = r0x104A 
	MOVWF	r0x1005
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6951:genPointerSet *{*
;; ***	genPointerSet  6952
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6871:genNearPointerSet *{*
;; ***	genNearPointerSet  6872
;;	627
;;	aopForRemat 406
;;	432: rname _ADCON0bits, val 0, const = 0
;; ***	genNearPointerSet  6886
;;	589
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON0bits
;; 	line = 6888 result AOP_PCODE=_ADCON0bits, size=2, left -=-, size=0, right AOP_REG=r0x104A, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6689:genPackBits *{*
;; ***	genPackBits  6690
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON0bits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6756:genPackBits
;;	1126 rIdx = r0x104A 
	RRF	r0x1005,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6757:genPackBits
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6758:genPackBits
	BCF	_ADCON0bits,4
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6759:genPackBits
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6760:genPackBits
	BSF	_ADCON0bits,4
;; ***	genNearPointerSet  6905
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7192:genAssign *{*
;; ***	genAssign  7193
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7202 result AOP_REG=r0x1048, size=1, left -=-, size=0, right AOP_REG=r0x1048, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6951:genPointerSet *{*
;; ***	genPointerSet  6952
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6871:genNearPointerSet *{*
;; ***	genNearPointerSet  6872
;;	627
;;	aopForRemat 406
;;	432: rname _ADCON0bits, val 0, const = 0
;; ***	genNearPointerSet  6886
;;	708 register type nRegs=1
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON0bits
;; 	line = 6888 result AOP_PCODE=_ADCON0bits, size=2, left -=-, size=0, right AOP_REG=r0x1048, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6689:genPackBits *{*
;; ***	genPackBits  6690
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON0bits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6756:genPackBits
;;	1126 rIdx = r0x1048 
	RRF	r0x1003,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6757:genPackBits
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6758:genPackBits
	BCF	_ADCON0bits,3
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6759:genPackBits
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6760:genPackBits
	BSF	_ADCON0bits,3
;; ***	genNearPointerSet  6905
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6951:genPointerSet *{*
;; ***	genPointerSet  6952
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6871:genNearPointerSet *{*
;; ***	genNearPointerSet  6872
;;	627
;;	aopForRemat 406
;;	432: rname _ADCON1bits, val 0, const = 0
;; ***	genNearPointerSet  6886
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON1bits
;; 	line = 6888 result AOP_PCODE=_ADCON1bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6689:genPackBits *{*
;; ***	genPackBits  6690
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON1bits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6712:genPackBits
	.line	26; "adc.c"	ADC_SELECT_RESULT_JUSTIFICATION(1);
	BSF	_ADCON1bits,7
;; ***	genNearPointerSet  6905
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6951:genPointerSet *{*
;; ***	genPointerSet  6952
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6871:genNearPointerSet *{*
;; ***	genNearPointerSet  6872
;;	627
;;	aopForRemat 406
;;	432: rname _ADCON0bits, val 0, const = 0
;; ***	genNearPointerSet  6886
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON0bits
;; 	line = 6888 result AOP_PCODE=_ADCON0bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6689:genPackBits *{*
;; ***	genPackBits  6690
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON0bits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6712:genPackBits
	.line	27; "adc.c"	ADC_SET_STATE(1);                    //Set ADC ON
	BSF	_ADCON0bits,0
;; ***	genNearPointerSet  6905
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6951:genPointerSet *{*
;; ***	genPointerSet  6952
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6871:genNearPointerSet *{*
;; ***	genNearPointerSet  6872
;;	627
;;	aopForRemat 406
;;	432: rname _ADCON0bits, val 0, const = 0
;; ***	genNearPointerSet  6886
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON0bits
;; 	line = 6888 result AOP_PCODE=_ADCON0bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6689:genPackBits *{*
;; ***	genPackBits  6690
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON0bits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6712:genPackBits
	.line	28; "adc.c"	ADC_START_CONVERSION();
	BSF	_ADCON0bits,2
;; ***	genNearPointerSet  6905
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6399:genPointerGet *{*
;; ***	genPointerGet  6400
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6285:genNearPointerGet *{*
;; ***	genNearPointerGet  6286
;;	627
;;	aopForRemat 406
;;	432: rname _ADCON0bits, val 0, const = 0
;; ***	genNearPointerGet  6302
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6143:genUnpackBits *{*
;; ***	genUnpackBits  6144
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6182:genUnpackBits
;;	1126 rIdx = r0x1048 
_00113_DS_:
	.line	29; "adc.c"	ADC_WAIT_FOR_RESULT();
	CLRF	r0x1003
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6188:genUnpackBits
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON0bits
	BTFSC	_ADCON0bits,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6218:genUnpackBits
;;	1126 rIdx = r0x1048 
	INCF	r0x1003,F
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3689:genCmpEq *{*
;; ***	genCmpEq  3690
;; ifx is non-null
;;	708 register type nRegs=1
;; 	line = 3701 result AOP_CRY=0x00, size=0, left AOP_REG=r0x1048, size=1, right AOP_LIT=0x01, size=1
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1048 
	MOVF	r0x1003,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3769:genCmpEq
	.line	31; "adc.c"	ret = ADC_READ_RESULT(1);
	XORLW	0x01
	BTFSC	STATUS,2
	GOTO	_00113_DS_
	MOVF	_ADRESH,W
	MOVWF	r0x1003
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1107:addSign
;;	1126 rIdx = r0x1049 
	CLRF	r0x1004
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5273:movLeft2Result *{*
;; ***	movLeft2Result  5274
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5279:movLeft2Result
;;	1126 rIdx = r0x1048 
	MOVF	r0x1003,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5280:movLeft2Result
;;	1126 rIdx = r0x104B 
	MOVWF	r0x1006
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5416:shiftLeft_Left2ResultLit
;;	1126 rIdx = r0x104A 
	CLRF	r0x1005
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast *{*
;; ***	genCast  7387
;; ***	aopForSym 324
;;	336 sym->rname = _ADRESL, size = 1
;;	708 register type nRegs=2
;; 	line = 7395 result AOP_REG=r0x1048, size=2, left -=-, size=0, right AOP_DIR=_ADRESL, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7582:genCast
;;	1027
;;	1041  _ADRESL   offset=0 - had to alloc by reg name
	MOVF	_ADRESL,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7583:genCast
;;	1126 rIdx = r0x1048 
	MOVWF	r0x1003
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1107:addSign
;;	1126 rIdx = r0x1049 
	CLRF	r0x1004
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; 	line = 4331 result AOP_REG=r0x104A, size=2, left AOP_REG=r0x104A, size=2, right AOP_REG=r0x1048, size=2
;; 	line = 4357 result AOP_REG=r0x104A, size=2, left AOP_REG=r0x104A, size=2, right AOP_REG=r0x1048, size=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4522:genOr
;;	1126 rIdx = r0x1048 
	MOVF	r0x1003,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4523:genOr
;;	1126 rIdx = r0x104A 
	IORWF	r0x1005,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4522:genOr
;;	1126 rIdx = r0x1049 
	MOVF	r0x1004,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4523:genOr
;;	1126 rIdx = r0x104B 
	IORWF	r0x1006,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2725:genRet *{*
;; ***	genRet  2727
;;	708 register type nRegs=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x104A 
	.line	33; "adc.c"	return ret;
	MOVF	r0x1005,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1430:pass_argument
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x104B 
	MOVF	r0x1006,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	35; "adc.c"	}
	RETURN	
; exit point of _ADC_GetResult
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7710:genpic14Code *{*

	New pBlock

code, dbName =C
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=4previous max_key=0 
S_adc__ADC_Update	code
_ADC_Update:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	17; "adc.c"	{}
	RETURN	
; exit point of _ADC_Update
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7710:genpic14Code *{*

	New pBlock

code, dbName =C
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=0previous max_key=0 
S_adc__ADC_Init	code
_ADC_Init:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7642:genReceive *{*
;; ***	genReceive  7643
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1045, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1045 
	.line	5; "adc.c"	void ADC_Init(unsigned char clock_source)
	MOVWF	r0x1007
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6951:genPointerSet *{*
;; ***	genPointerSet  6952
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6871:genNearPointerSet *{*
;; ***	genNearPointerSet  6872
;;	627
;;	aopForRemat 406
;;	432: rname _ADCON0bits, val 0, const = 0
;; ***	genNearPointerSet  6886
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON0bits
;; 	line = 6888 result AOP_PCODE=_ADCON0bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6689:genPackBits *{*
;; ***	genPackBits  6690
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON0bits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6712:genPackBits
	.line	8; "adc.c"	ADC_SET_STATE(0);                      //Set ADC off
	BCF	_ADCON0bits,0
;; ***	genNearPointerSet  6905
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 4059 result AOP_REG=r0x1046, size=1, left AOP_REG=r0x1045, size=1, right AOP_LIT=0x04, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4294:genAnd
	.line	9; "adc.c"	ADC_SELECT_CLOCK_SOURCE(clock_source); ///////////////////////////////////
	MOVLW	0x04
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4295:genAnd
;;	1126 rIdx = r0x1045 
	ANDWF	r0x1007,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4296:genAnd
;;	1126 rIdx = r0x1046 
	MOVWF	r0x1008
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;;shiftRight_Left2ResultLit:5474: shCount=1, size=1, sign=0, same=0, offr=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5530:shiftRight_Left2ResultLit
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5545:shiftRight_Left2ResultLit
;;	1126 rIdx = r0x1046 
	RRF	r0x1008,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5546:shiftRight_Left2ResultLit
;;	1126 rIdx = r0x1047 
	MOVWF	r0x1009
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;;shiftRight_Left2ResultLit:5474: shCount=1, size=1, sign=0, same=1, offr=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5530:shiftRight_Left2ResultLit
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5541:shiftRight_Left2ResultLit
;;	1126 rIdx = r0x1047 
	RRF	r0x1009,F
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6951:genPointerSet *{*
;; ***	genPointerSet  6952
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6871:genNearPointerSet *{*
;; ***	genNearPointerSet  6872
;;	627
;;	aopForRemat 406
;;	432: rname _ADCON1bits, val 0, const = 0
;; ***	genNearPointerSet  6886
;;	589
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON1bits
;; 	line = 6888 result AOP_PCODE=_ADCON1bits, size=2, left -=-, size=0, right AOP_REG=r0x1047, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6689:genPackBits *{*
;; ***	genPackBits  6690
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON1bits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6756:genPackBits
;;	1126 rIdx = r0x1047 
	RRF	r0x1009,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6757:genPackBits
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6758:genPackBits
	BCF	_ADCON1bits,6
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6759:genPackBits
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6760:genPackBits
	BSF	_ADCON1bits,6
;; ***	genNearPointerSet  6905
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 4059 result AOP_REG=r0x1046, size=1, left AOP_REG=r0x1045, size=1, right AOP_LIT=0x02, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4294:genAnd
	MOVLW	0x02
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4295:genAnd
;;	1126 rIdx = r0x1045 
	ANDWF	r0x1007,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4296:genAnd
;;	1126 rIdx = r0x1046 
	MOVWF	r0x1008
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;;shiftRight_Left2ResultLit:5474: shCount=1, size=1, sign=0, same=0, offr=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5530:shiftRight_Left2ResultLit
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5545:shiftRight_Left2ResultLit
;;	1126 rIdx = r0x1046 
	RRF	r0x1008,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5546:shiftRight_Left2ResultLit
;;	1126 rIdx = r0x1047 
	MOVWF	r0x1009
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6951:genPointerSet *{*
;; ***	genPointerSet  6952
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6871:genNearPointerSet *{*
;; ***	genNearPointerSet  6872
;;	627
;;	aopForRemat 406
;;	432: rname _ADCON0bits, val 0, const = 0
;; ***	genNearPointerSet  6886
;;	589
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON0bits
;; 	line = 6888 result AOP_PCODE=_ADCON0bits, size=2, left -=-, size=0, right AOP_REG=r0x1047, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6689:genPackBits *{*
;; ***	genPackBits  6690
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON0bits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6756:genPackBits
;;	1126 rIdx = r0x1047 
	RRF	r0x1009,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6757:genPackBits
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6758:genPackBits
	BCF	_ADCON0bits,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6759:genPackBits
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6760:genPackBits
	BSF	_ADCON0bits,7
;; ***	genNearPointerSet  6905
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7192:genAssign *{*
;; ***	genAssign  7193
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7202 result AOP_REG=r0x1045, size=1, left -=-, size=0, right AOP_REG=r0x1045, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6951:genPointerSet *{*
;; ***	genPointerSet  6952
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6871:genNearPointerSet *{*
;; ***	genNearPointerSet  6872
;;	627
;;	aopForRemat 406
;;	432: rname _ADCON0bits, val 0, const = 0
;; ***	genNearPointerSet  6886
;;	708 register type nRegs=1
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON0bits
;; 	line = 6888 result AOP_PCODE=_ADCON0bits, size=2, left -=-, size=0, right AOP_REG=r0x1045, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6689:genPackBits *{*
;; ***	genPackBits  6690
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON0bits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6756:genPackBits
;;	1126 rIdx = r0x1045 
	RRF	r0x1007,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6757:genPackBits
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6758:genPackBits
	BCF	_ADCON0bits,6
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6759:genPackBits
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6760:genPackBits
	BSF	_ADCON0bits,6
;; ***	genNearPointerSet  6905
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6951:genPointerSet *{*
;; ***	genPointerSet  6952
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6871:genNearPointerSet *{*
;; ***	genNearPointerSet  6872
;;	627
;;	aopForRemat 406
;;	432: rname _ADCON1bits, val 0, const = 0
;; ***	genNearPointerSet  6886
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON1bits
;; 	line = 6888 result AOP_PCODE=_ADCON1bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6689:genPackBits *{*
;; ***	genPackBits  6690
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON1bits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6712:genPackBits
	.line	12; "adc.c"	ADC_CONFIGURE_PORT();               /////////////////////////////////////////////
	BCF	_ADCON1bits,3
;; ***	genNearPointerSet  6905
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6951:genPointerSet *{*
;; ***	genPointerSet  6952
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6871:genNearPointerSet *{*
;; ***	genNearPointerSet  6872
;;	627
;;	aopForRemat 406
;;	432: rname _ADCON1bits, val 0, const = 0
;; ***	genNearPointerSet  6886
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON1bits
;; 	line = 6888 result AOP_PCODE=_ADCON1bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6689:genPackBits *{*
;; ***	genPackBits  6690
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON1bits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6712:genPackBits
	BCF	_ADCON1bits,2
;; ***	genNearPointerSet  6905
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6951:genPointerSet *{*
;; ***	genPointerSet  6952
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6871:genNearPointerSet *{*
;; ***	genNearPointerSet  6872
;;	627
;;	aopForRemat 406
;;	432: rname _ADCON1bits, val 0, const = 0
;; ***	genNearPointerSet  6886
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON1bits
;; 	line = 6888 result AOP_PCODE=_ADCON1bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6689:genPackBits *{*
;; ***	genPackBits  6690
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON1bits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6712:genPackBits
	BSF	_ADCON1bits,1
;; ***	genNearPointerSet  6905
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6951:genPointerSet *{*
;; ***	genPointerSet  6952
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6871:genNearPointerSet *{*
;; ***	genNearPointerSet  6872
;;	627
;;	aopForRemat 406
;;	432: rname _ADCON1bits, val 0, const = 0
;; ***	genNearPointerSet  6886
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON1bits
;; 	line = 6888 result AOP_PCODE=_ADCON1bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6689:genPackBits *{*
;; ***	genPackBits  6690
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_ADCON1bits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6712:genPackBits
	BCF	_ADCON1bits,0
;; ***	genNearPointerSet  6905
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	14; "adc.c"	}
	RETURN	
; exit point of _ADC_Init
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7710:genpic14Code *{*
