; Listing generated by Microsoft (R) Optimizing Compiler Version 15.00.30729.01 

	TITLE	d:\vice-players-master\Client\scripting\sq_utils.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

PUBLIC	?RegisterFunction@@YAXPAUSQVM@@PADP6AH0@ZHPBD@Z	; RegisterFunction
EXTRN	_sq_newslot:PROC
EXTRN	_sq_setparamscheck:PROC
EXTRN	_sq_newclosure:PROC
EXTRN	_sq_pushstring:PROC
EXTRN	_sq_pushroottable:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File d:\vice-players-master\client\scripting\sq_utils.cpp
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT ?RegisterFunction@@YAXPAUSQVM@@PADP6AH0@ZHPBD@Z
_TEXT	SEGMENT
_pVM$ = 8						; size = 4
_szFunc$ = 12						; size = 4
_func$ = 16						; size = 4
_params$ = 20						; size = 4
_szTemplate$ = 24					; size = 4
?RegisterFunction@@YAXPAUSQVM@@PADP6AH0@ZHPBD@Z PROC	; RegisterFunction, COMDAT

; 15   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd

; 16   : 	sq_pushroottable(pVM);

	mov	eax, DWORD PTR _pVM$[ebp]
	push	eax
	call	_sq_pushroottable
	add	esp, 4

; 17   : 
; 18   : 	sq_pushstring(pVM, szFunc, -1);

	push	-1
	mov	eax, DWORD PTR _szFunc$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pVM$[ebp]
	push	ecx
	call	_sq_pushstring
	add	esp, 12					; 0000000cH

; 19   : 	sq_newclosure(pVM, func, 0);

	push	0
	mov	eax, DWORD PTR _func$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pVM$[ebp]
	push	ecx
	call	_sq_newclosure
	add	esp, 12					; 0000000cH

; 20   : 	if(params != -1)

	cmp	DWORD PTR _params$[ebp], -1
	je	SHORT $LN1@RegisterFu

; 21   : 	{
; 22   : 		sq_setparamscheck(pVM, params, szTemplate);

	mov	eax, DWORD PTR _szTemplate$[ebp]
	push	eax
	mov	ecx, DWORD PTR _params$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pVM$[ebp]
	push	edx
	call	_sq_setparamscheck
	add	esp, 12					; 0000000cH
$LN1@RegisterFu:

; 23   : 	}
; 24   : 	sq_createslot(pVM, -3);

	push	0
	push	-3					; fffffffdH
	mov	eax, DWORD PTR _pVM$[ebp]
	push	eax
	call	_sq_newslot
	add	esp, 12					; 0000000cH

; 25   : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?RegisterFunction@@YAXPAUSQVM@@PADP6AH0@ZHPBD@Z ENDP	; RegisterFunction
_TEXT	ENDS
PUBLIC	?RegisterVariable@@YAXPAUSQVM@@PBD_N@Z		; RegisterVariable
EXTRN	_sq_pushbool:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ?RegisterVariable@@YAXPAUSQVM@@PBD_N@Z
_TEXT	SEGMENT
_pVM$ = 8						; size = 4
_szVarName$ = 12					; size = 4
_bValue$ = 16						; size = 1
?RegisterVariable@@YAXPAUSQVM@@PBD_N@Z PROC		; RegisterVariable, COMDAT

; 28   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd

; 29   : 	sq_pushstring(pVM, szVarName, -1);

	push	-1
	mov	eax, DWORD PTR _szVarName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pVM$[ebp]
	push	ecx
	call	_sq_pushstring
	add	esp, 12					; 0000000cH

; 30   : 	sq_pushbool(pVM, bValue);

	movzx	eax, BYTE PTR _bValue$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pVM$[ebp]
	push	ecx
	call	_sq_pushbool
	add	esp, 8

; 31   : 	sq_createslot(pVM, -3);

	push	0
	push	-3					; fffffffdH
	mov	eax, DWORD PTR _pVM$[ebp]
	push	eax
	call	_sq_newslot
	add	esp, 12					; 0000000cH

; 32   : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?RegisterVariable@@YAXPAUSQVM@@PBD_N@Z ENDP		; RegisterVariable
_TEXT	ENDS
PUBLIC	?RegisterVariable@@YAXPAUSQVM@@PBDH@Z		; RegisterVariable
EXTRN	_sq_pushinteger:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ?RegisterVariable@@YAXPAUSQVM@@PBDH@Z
_TEXT	SEGMENT
_pVM$ = 8						; size = 4
_szVarName$ = 12					; size = 4
_iValue$ = 16						; size = 4
?RegisterVariable@@YAXPAUSQVM@@PBDH@Z PROC		; RegisterVariable, COMDAT

; 35   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd

; 36   : 	sq_pushstring(pVM, szVarName, -1);

	push	-1
	mov	eax, DWORD PTR _szVarName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pVM$[ebp]
	push	ecx
	call	_sq_pushstring
	add	esp, 12					; 0000000cH

; 37   : 	sq_pushinteger(pVM, iValue);

	mov	eax, DWORD PTR _iValue$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pVM$[ebp]
	push	ecx
	call	_sq_pushinteger
	add	esp, 8

; 38   : 	sq_createslot(pVM, -3);

	push	0
	push	-3					; fffffffdH
	mov	eax, DWORD PTR _pVM$[ebp]
	push	eax
	call	_sq_newslot
	add	esp, 12					; 0000000cH

; 39   : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?RegisterVariable@@YAXPAUSQVM@@PBDH@Z ENDP		; RegisterVariable
_TEXT	ENDS
PUBLIC	?RegisterVariable@@YAXPAUSQVM@@PBDM@Z		; RegisterVariable
EXTRN	_sq_pushfloat:PROC
EXTRN	__fltused:DWORD
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ?RegisterVariable@@YAXPAUSQVM@@PBDM@Z
_TEXT	SEGMENT
_pVM$ = 8						; size = 4
_szVarName$ = 12					; size = 4
_fValue$ = 16						; size = 4
?RegisterVariable@@YAXPAUSQVM@@PBDM@Z PROC		; RegisterVariable, COMDAT

; 42   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd

; 43   : 	sq_pushstring(pVM, szVarName, -1);

	push	-1
	mov	eax, DWORD PTR _szVarName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pVM$[ebp]
	push	ecx
	call	_sq_pushstring
	add	esp, 12					; 0000000cH

; 44   : 	sq_pushfloat(pVM, fValue);

	push	ecx
	fld	DWORD PTR _fValue$[ebp]
	fstp	DWORD PTR [esp]
	mov	eax, DWORD PTR _pVM$[ebp]
	push	eax
	call	_sq_pushfloat
	add	esp, 8

; 45   : 	sq_createslot(pVM, -3);

	push	0
	push	-3					; fffffffdH
	mov	eax, DWORD PTR _pVM$[ebp]
	push	eax
	call	_sq_newslot
	add	esp, 12					; 0000000cH

; 46   : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?RegisterVariable@@YAXPAUSQVM@@PBDM@Z ENDP		; RegisterVariable
_TEXT	ENDS
PUBLIC	?RegisterVariable@@YAXPAUSQVM@@PBD1@Z		; RegisterVariable
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ?RegisterVariable@@YAXPAUSQVM@@PBD1@Z
_TEXT	SEGMENT
_pVM$ = 8						; size = 4
_szVarName$ = 12					; size = 4
_szValue$ = 16						; size = 4
?RegisterVariable@@YAXPAUSQVM@@PBD1@Z PROC		; RegisterVariable, COMDAT

; 49   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd

; 50   : 	sq_pushstring(pVM, szVarName, -1);

	push	-1
	mov	eax, DWORD PTR _szVarName$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pVM$[ebp]
	push	ecx
	call	_sq_pushstring
	add	esp, 12					; 0000000cH

; 51   : 	sq_pushstring(pVM, szValue, -1);

	push	-1
	mov	eax, DWORD PTR _szValue$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pVM$[ebp]
	push	ecx
	call	_sq_pushstring
	add	esp, 12					; 0000000cH

; 52   : 	sq_createslot(pVM, -3);

	push	0
	push	-3					; fffffffdH
	mov	eax, DWORD PTR _pVM$[ebp]
	push	eax
	call	_sq_newslot
	add	esp, 12					; 0000000cH

; 53   : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?RegisterVariable@@YAXPAUSQVM@@PBD1@Z ENDP		; RegisterVariable
_TEXT	ENDS
END
