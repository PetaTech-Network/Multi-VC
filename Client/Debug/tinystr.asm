; Listing generated by Microsoft (R) Optimizing Compiler Version 15.00.30729.01 

	TITLE	d:\vice-players-master\Shared\TinyXML\tinystr.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

PUBLIC	?npos@TiXmlString@@2IB				; TiXmlString::npos
PUBLIC	?nullrep_@TiXmlString@@0URep@1@A		; TiXmlString::nullrep_
_BSS	SEGMENT
?nullrep_@TiXmlString@@0URep@1@A DB 0cH DUP (?)		; TiXmlString::nullrep_
_BSS	ENDS
CONST	SEGMENT
?npos@TiXmlString@@2IB DD 0ffffffffH			; TiXmlString::npos
CONST	ENDS
PUBLIC	??1TiXmlString@@QAE@XZ				; TiXmlString::~TiXmlString
PUBLIC	?swap@TiXmlString@@QAEXAAV1@@Z			; TiXmlString::swap
PUBLIC	?start@TiXmlString@@ABEPADXZ			; TiXmlString::start
PUBLIC	?data@TiXmlString@@QBEPBDXZ			; TiXmlString::data
PUBLIC	?init@TiXmlString@@AAEXII@Z			; TiXmlString::init
PUBLIC	?length@TiXmlString@@QBEIXZ			; TiXmlString::length
PUBLIC	??0TiXmlString@@QAE@XZ				; TiXmlString::TiXmlString
PUBLIC	?capacity@TiXmlString@@QBEIXZ			; TiXmlString::capacity
PUBLIC	?reserve@TiXmlString@@QAEXI@Z			; TiXmlString::reserve
EXTRN	_memcpy:PROC
EXTRN	___security_cookie:DWORD
EXTRN	___CxxFrameHandler3:PROC
EXTRN	@__security_check_cookie@4:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	@_RTC_CheckStackVars@8:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT xdata$x
; File d:\vice-players-master\shared\tinyxml\tinystr.cpp
xdata$x	SEGMENT
__unwindtable$?reserve@TiXmlString@@QAEXI@Z DD 0ffffffffH
	DD	FLAT:__unwindfunclet$?reserve@TiXmlString@@QAEXI@Z$0
__ehfuncinfo$?reserve@TiXmlString@@QAEXI@Z DD 019930522H
	DD	01H
	DD	FLAT:__unwindtable$?reserve@TiXmlString@@QAEXI@Z
	DD	2 DUP(00H)
	DD	2 DUP(00H)
	DD	00H
	DD	01H
xdata$x	ENDS
;	COMDAT rtc$TMZ
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT ?reserve@TiXmlString@@QAEXI@Z
_TEXT	SEGMENT
_tmp$209251 = -32					; size = 4
_this$ = -20						; size = 4
__$EHRec$ = -12						; size = 12
_cap$ = 8						; size = 4
?reserve@TiXmlString@@QAEXI@Z PROC			; TiXmlString::reserve, COMDAT
; _this$ = ecx

; 44   : {

	push	ebp
	mov	ebp, esp
	push	-1
	push	__ehhandler$?reserve@TiXmlString@@QAEXI@Z
	mov	eax, DWORD PTR fs:0
	push	eax
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-228]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	push	eax
	lea	eax, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, eax
	mov	DWORD PTR _this$[ebp], ecx

; 45   : 	if (cap > capacity())

	mov	ecx, DWORD PTR _this$[ebp]
	call	?capacity@TiXmlString@@QBEIXZ		; TiXmlString::capacity
	cmp	DWORD PTR _cap$[ebp], eax
	jbe	SHORT $LN2@reserve

; 46   : 	{
; 47   : 		TiXmlString tmp;

	lea	ecx, DWORD PTR _tmp$209251[ebp]
	call	??0TiXmlString@@QAE@XZ			; TiXmlString::TiXmlString
	mov	DWORD PTR __$EHRec$[ebp+8], 0

; 48   : 		tmp.init(length(), cap);

	mov	eax, DWORD PTR _cap$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?length@TiXmlString@@QBEIXZ		; TiXmlString::length
	push	eax
	lea	ecx, DWORD PTR _tmp$209251[ebp]
	call	?init@TiXmlString@@AAEXII@Z		; TiXmlString::init

; 49   : 		memcpy(tmp.start(), data(), length());

	mov	ecx, DWORD PTR _this$[ebp]
	call	?length@TiXmlString@@QBEIXZ		; TiXmlString::length
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?data@TiXmlString@@QBEPBDXZ		; TiXmlString::data
	push	eax
	lea	ecx, DWORD PTR _tmp$209251[ebp]
	call	?start@TiXmlString@@ABEPADXZ		; TiXmlString::start
	push	eax
	call	_memcpy
	add	esp, 12					; 0000000cH

; 50   : 		swap(tmp);

	lea	eax, DWORD PTR _tmp$209251[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?swap@TiXmlString@@QAEXAAV1@@Z		; TiXmlString::swap

; 51   : 	}

	mov	DWORD PTR __$EHRec$[ebp+8], -1
	lea	ecx, DWORD PTR _tmp$209251[ebp]
	call	??1TiXmlString@@QAE@XZ			; TiXmlString::~TiXmlString
$LN2@reserve:

; 52   : }

	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN8@reserve
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	mov	ecx, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, ecx
	pop	ecx
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 228				; 000000e4H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
	npad	1
$LN8@reserve:
	DD	1
	DD	$LN7@reserve
$LN7@reserve:
	DD	-32					; ffffffe0H
	DD	4
	DD	$LN5@reserve
$LN5@reserve:
	DB	116					; 00000074H
	DB	109					; 0000006dH
	DB	112					; 00000070H
	DB	0
_TEXT	ENDS
;	COMDAT text$x
text$x	SEGMENT
__unwindfunclet$?reserve@TiXmlString@@QAEXI@Z$0:
	lea	ecx, DWORD PTR _tmp$209251[ebp]
	jmp	??1TiXmlString@@QAE@XZ			; TiXmlString::~TiXmlString
__ehhandler$?reserve@TiXmlString@@QAEXI@Z:
	mov	edx, DWORD PTR [esp+8]
	lea	eax, DWORD PTR [edx+12]
	mov	ecx, DWORD PTR [edx-232]
	xor	ecx, eax
	call	@__security_check_cookie@4
	mov	eax, OFFSET __ehfuncinfo$?reserve@TiXmlString@@QAEXI@Z
	jmp	___CxxFrameHandler3
text$x	ENDS
?reserve@TiXmlString@@QAEXI@Z ENDP			; TiXmlString::reserve
PUBLIC	?set_size@TiXmlString@@AAEXI@Z			; TiXmlString::set_size
PUBLIC	?init@TiXmlString@@AAEXI@Z			; TiXmlString::init
PUBLIC	?assign@TiXmlString@@QAEAAV1@PBDI@Z		; TiXmlString::assign
EXTRN	_memmove:PROC
;	COMDAT xdata$x
xdata$x	SEGMENT
__unwindtable$?assign@TiXmlString@@QAEAAV1@PBDI@Z DD 0ffffffffH
	DD	FLAT:__unwindfunclet$?assign@TiXmlString@@QAEAAV1@PBDI@Z$0
__ehfuncinfo$?assign@TiXmlString@@QAEAAV1@PBDI@Z DD 019930522H
	DD	01H
	DD	FLAT:__unwindtable$?assign@TiXmlString@@QAEAAV1@PBDI@Z
	DD	2 DUP(00H)
	DD	2 DUP(00H)
	DD	00H
	DD	01H
; Function compile flags: /Odtp /RTCsu /ZI
xdata$x	ENDS
;	COMDAT ?assign@TiXmlString@@QAEAAV1@PBDI@Z
_TEXT	SEGMENT
_tmp$209260 = -44					; size = 4
_cap$ = -32						; size = 4
_this$ = -20						; size = 4
__$EHRec$ = -12						; size = 12
_str$ = 8						; size = 4
_len$ = 12						; size = 4
?assign@TiXmlString@@QAEAAV1@PBDI@Z PROC		; TiXmlString::assign, COMDAT
; _this$ = ecx

; 56   : {

	push	ebp
	mov	ebp, esp
	push	-1
	push	__ehhandler$?assign@TiXmlString@@QAEAAV1@PBDI@Z
	mov	eax, DWORD PTR fs:0
	push	eax
	sub	esp, 228				; 000000e4H
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-240]
	mov	ecx, 57					; 00000039H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	push	eax
	lea	eax, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, eax
	mov	DWORD PTR _this$[ebp], ecx

; 57   : 	size_type cap = capacity();

	mov	ecx, DWORD PTR _this$[ebp]
	call	?capacity@TiXmlString@@QBEIXZ		; TiXmlString::capacity
	mov	DWORD PTR _cap$[ebp], eax

; 58   : 	if (len > cap || cap > 3*(len + 8))

	mov	eax, DWORD PTR _len$[ebp]
	cmp	eax, DWORD PTR _cap$[ebp]
	ja	SHORT $LN2@assign
	mov	eax, DWORD PTR _len$[ebp]
	add	eax, 8
	imul	eax, 3
	cmp	DWORD PTR _cap$[ebp], eax
	jbe	SHORT $LN3@assign
$LN2@assign:

; 59   : 	{
; 60   : 		TiXmlString tmp;

	lea	ecx, DWORD PTR _tmp$209260[ebp]
	call	??0TiXmlString@@QAE@XZ			; TiXmlString::TiXmlString
	mov	DWORD PTR __$EHRec$[ebp+8], 0

; 61   : 		tmp.init(len);

	mov	eax, DWORD PTR _len$[ebp]
	push	eax
	lea	ecx, DWORD PTR _tmp$209260[ebp]
	call	?init@TiXmlString@@AAEXI@Z		; TiXmlString::init

; 62   : 		memcpy(tmp.start(), str, len);

	mov	eax, DWORD PTR _len$[ebp]
	push	eax
	mov	ecx, DWORD PTR _str$[ebp]
	push	ecx
	lea	ecx, DWORD PTR _tmp$209260[ebp]
	call	?start@TiXmlString@@ABEPADXZ		; TiXmlString::start
	push	eax
	call	_memcpy
	add	esp, 12					; 0000000cH

; 63   : 		swap(tmp);

	lea	eax, DWORD PTR _tmp$209260[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?swap@TiXmlString@@QAEXAAV1@@Z		; TiXmlString::swap

; 64   : 	}

	mov	DWORD PTR __$EHRec$[ebp+8], -1
	lea	ecx, DWORD PTR _tmp$209260[ebp]
	call	??1TiXmlString@@QAE@XZ			; TiXmlString::~TiXmlString

; 65   : 	else

	jmp	SHORT $LN1@assign
$LN3@assign:

; 66   : 	{
; 67   : 		memmove(start(), str, len);

	mov	eax, DWORD PTR _len$[ebp]
	push	eax
	mov	ecx, DWORD PTR _str$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?start@TiXmlString@@ABEPADXZ		; TiXmlString::start
	push	eax
	call	_memmove
	add	esp, 12					; 0000000cH

; 68   : 		set_size(len);

	mov	eax, DWORD PTR _len$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?set_size@TiXmlString@@AAEXI@Z		; TiXmlString::set_size
$LN1@assign:

; 69   : 	}
; 70   : 	return *this;

	mov	eax, DWORD PTR _this$[ebp]

; 71   : }

	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN10@assign
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	mov	ecx, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, ecx
	pop	ecx
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 240				; 000000f0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	8
	npad	2
$LN10@assign:
	DD	1
	DD	$LN9@assign
$LN9@assign:
	DD	-44					; ffffffd4H
	DD	4
	DD	$LN7@assign
$LN7@assign:
	DB	116					; 00000074H
	DB	109					; 0000006dH
	DB	112					; 00000070H
	DB	0
_TEXT	ENDS
;	COMDAT text$x
text$x	SEGMENT
__unwindfunclet$?assign@TiXmlString@@QAEAAV1@PBDI@Z$0:
	lea	ecx, DWORD PTR _tmp$209260[ebp]
	jmp	??1TiXmlString@@QAE@XZ			; TiXmlString::~TiXmlString
__ehhandler$?assign@TiXmlString@@QAEAAV1@PBDI@Z:
	mov	edx, DWORD PTR [esp+8]
	lea	eax, DWORD PTR [edx+12]
	mov	ecx, DWORD PTR [edx-244]
	xor	ecx, eax
	call	@__security_check_cookie@4
	mov	eax, OFFSET __ehfuncinfo$?assign@TiXmlString@@QAEAAV1@PBDI@Z
	jmp	___CxxFrameHandler3
text$x	ENDS
?assign@TiXmlString@@QAEAAV1@PBDI@Z ENDP		; TiXmlString::assign
PUBLIC	?finish@TiXmlString@@ABEPADXZ			; TiXmlString::finish
PUBLIC	?append@TiXmlString@@QAEAAV1@PBDI@Z		; TiXmlString::append
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ?append@TiXmlString@@QAEAAV1@PBDI@Z
_TEXT	SEGMENT
_newsize$ = -20						; size = 4
_this$ = -8						; size = 4
_str$ = 8						; size = 4
_len$ = 12						; size = 4
?append@TiXmlString@@QAEAAV1@PBDI@Z PROC		; TiXmlString::append, COMDAT
; _this$ = ecx

; 75   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 76   : 	size_type newsize = length() + len;

	mov	ecx, DWORD PTR _this$[ebp]
	call	?length@TiXmlString@@QBEIXZ		; TiXmlString::length
	add	eax, DWORD PTR _len$[ebp]
	mov	DWORD PTR _newsize$[ebp], eax

; 77   : 	if (newsize > capacity())

	mov	ecx, DWORD PTR _this$[ebp]
	call	?capacity@TiXmlString@@QBEIXZ		; TiXmlString::capacity
	cmp	DWORD PTR _newsize$[ebp], eax
	jbe	SHORT $LN1@append

; 78   : 	{
; 79   : 		reserve (newsize + capacity());

	mov	ecx, DWORD PTR _this$[ebp]
	call	?capacity@TiXmlString@@QBEIXZ		; TiXmlString::capacity
	add	eax, DWORD PTR _newsize$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?reserve@TiXmlString@@QAEXI@Z		; TiXmlString::reserve
$LN1@append:

; 80   : 	}
; 81   : 	memmove(finish(), str, len);

	mov	eax, DWORD PTR _len$[ebp]
	push	eax
	mov	ecx, DWORD PTR _str$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?finish@TiXmlString@@ABEPADXZ		; TiXmlString::finish
	push	eax
	call	_memmove
	add	esp, 12					; 0000000cH

; 82   : 	set_size(newsize);

	mov	eax, DWORD PTR _newsize$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?set_size@TiXmlString@@AAEXI@Z		; TiXmlString::set_size

; 83   : 	return *this;

	mov	eax, DWORD PTR _this$[ebp]

; 84   : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	8
?append@TiXmlString@@QAEAAV1@PBDI@Z ENDP		; TiXmlString::append
_TEXT	ENDS
PUBLIC	??0TiXmlString@@QAE@ABV0@@Z			; TiXmlString::TiXmlString
PUBLIC	??YTiXmlString@@QAEAAV0@ABV0@@Z			; TiXmlString::operator+=
PUBLIC	??H@YA?AVTiXmlString@@ABV0@0@Z			; operator+
;	COMDAT xdata$x
xdata$x	SEGMENT
__unwindtable$??H@YA?AVTiXmlString@@ABV0@0@Z DD 0ffffffffH
	DD	FLAT:__unwindfunclet$??H@YA?AVTiXmlString@@ABV0@0@Z$1
	DD	00H
	DD	FLAT:__unwindfunclet$??H@YA?AVTiXmlString@@ABV0@0@Z$0
__ehfuncinfo$??H@YA?AVTiXmlString@@ABV0@0@Z DD 019930522H
	DD	02H
	DD	FLAT:__unwindtable$??H@YA?AVTiXmlString@@ABV0@0@Z
	DD	2 DUP(00H)
	DD	2 DUP(00H)
	DD	00H
	DD	01H
; Function compile flags: /Odtp /RTCsu /ZI
xdata$x	ENDS
;	COMDAT ??H@YA?AVTiXmlString@@ABV0@0@Z
_TEXT	SEGMENT
$T209360 = -224						; size = 4
_tmp$ = -20						; size = 4
__$EHRec$ = -12						; size = 12
___$ReturnUdt$ = 8					; size = 4
_a$ = 12						; size = 4
_b$ = 16						; size = 4
??H@YA?AVTiXmlString@@ABV0@0@Z PROC			; operator+, COMDAT

; 88   : {

	push	ebp
	mov	ebp, esp
	push	-1
	push	__ehhandler$??H@YA?AVTiXmlString@@ABV0@0@Z
	mov	eax, DWORD PTR fs:0
	push	eax
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-228]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	push	eax
	lea	eax, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, eax
	mov	DWORD PTR $T209360[ebp], 0

; 89   : 	TiXmlString tmp;

	lea	ecx, DWORD PTR _tmp$[ebp]
	call	??0TiXmlString@@QAE@XZ			; TiXmlString::TiXmlString
	mov	DWORD PTR __$EHRec$[ebp+8], 1

; 90   : 	tmp.reserve(a.length() + b.length());

	mov	ecx, DWORD PTR _a$[ebp]
	call	?length@TiXmlString@@QBEIXZ		; TiXmlString::length
	mov	esi, eax
	mov	ecx, DWORD PTR _b$[ebp]
	call	?length@TiXmlString@@QBEIXZ		; TiXmlString::length
	add	esi, eax
	push	esi
	lea	ecx, DWORD PTR _tmp$[ebp]
	call	?reserve@TiXmlString@@QAEXI@Z		; TiXmlString::reserve

; 91   : 	tmp += a;

	mov	eax, DWORD PTR _a$[ebp]
	push	eax
	lea	ecx, DWORD PTR _tmp$[ebp]
	call	??YTiXmlString@@QAEAAV0@ABV0@@Z		; TiXmlString::operator+=

; 92   : 	tmp += b;

	mov	eax, DWORD PTR _b$[ebp]
	push	eax
	lea	ecx, DWORD PTR _tmp$[ebp]
	call	??YTiXmlString@@QAEAAV0@ABV0@@Z		; TiXmlString::operator+=

; 93   : 	return tmp;

	lea	eax, DWORD PTR _tmp$[ebp]
	push	eax
	mov	ecx, DWORD PTR ___$ReturnUdt$[ebp]
	call	??0TiXmlString@@QAE@ABV0@@Z		; TiXmlString::TiXmlString
	mov	ecx, DWORD PTR $T209360[ebp]
	or	ecx, 1
	mov	DWORD PTR $T209360[ebp], ecx
	mov	BYTE PTR __$EHRec$[ebp+8], 0
	lea	ecx, DWORD PTR _tmp$[ebp]
	call	??1TiXmlString@@QAE@XZ			; TiXmlString::~TiXmlString
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 94   : }

	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN9@operator
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	mov	ecx, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, ecx
	pop	ecx
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 228				; 000000e4H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	3
$LN9@operator:
	DD	1
	DD	$LN8@operator
$LN8@operator:
	DD	-20					; ffffffecH
	DD	4
	DD	$LN6@operator
$LN6@operator:
	DB	116					; 00000074H
	DB	109					; 0000006dH
	DB	112					; 00000070H
	DB	0
_TEXT	ENDS
;	COMDAT text$x
text$x	SEGMENT
__unwindfunclet$??H@YA?AVTiXmlString@@ABV0@0@Z$0:
	lea	ecx, DWORD PTR _tmp$[ebp]
	jmp	??1TiXmlString@@QAE@XZ			; TiXmlString::~TiXmlString
__unwindfunclet$??H@YA?AVTiXmlString@@ABV0@0@Z$1:
	mov	eax, DWORD PTR $T209360[ebp]
	and	eax, 1
	je	$LN5@operator
	and	DWORD PTR $T209360[ebp], -2		; fffffffeH
	mov	ecx, DWORD PTR ___$ReturnUdt$[ebp]
	jmp	??1TiXmlString@@QAE@XZ			; TiXmlString::~TiXmlString
$LN5@operator:
	ret	0
__ehhandler$??H@YA?AVTiXmlString@@ABV0@0@Z:
	mov	edx, DWORD PTR [esp+8]
	lea	eax, DWORD PTR [edx+12]
	mov	ecx, DWORD PTR [edx-232]
	xor	ecx, eax
	call	@__security_check_cookie@4
	mov	eax, OFFSET __ehfuncinfo$??H@YA?AVTiXmlString@@ABV0@0@Z
	jmp	___CxxFrameHandler3
text$x	ENDS
??H@YA?AVTiXmlString@@ABV0@0@Z ENDP			; operator+
PUBLIC	??H@YA?AVTiXmlString@@ABV0@PBD@Z		; operator+
EXTRN	_strlen:PROC
;	COMDAT xdata$x
xdata$x	SEGMENT
__unwindtable$??H@YA?AVTiXmlString@@ABV0@PBD@Z DD 0ffffffffH
	DD	FLAT:__unwindfunclet$??H@YA?AVTiXmlString@@ABV0@PBD@Z$1
	DD	00H
	DD	FLAT:__unwindfunclet$??H@YA?AVTiXmlString@@ABV0@PBD@Z$0
__ehfuncinfo$??H@YA?AVTiXmlString@@ABV0@PBD@Z DD 019930522H
	DD	02H
	DD	FLAT:__unwindtable$??H@YA?AVTiXmlString@@ABV0@PBD@Z
	DD	2 DUP(00H)
	DD	2 DUP(00H)
	DD	00H
	DD	01H
; Function compile flags: /Odtp /RTCsu /ZI
xdata$x	ENDS
;	COMDAT ??H@YA?AVTiXmlString@@ABV0@PBD@Z
_TEXT	SEGMENT
$T209375 = -236						; size = 4
_b_len$ = -32						; size = 4
_tmp$ = -20						; size = 4
__$EHRec$ = -12						; size = 12
___$ReturnUdt$ = 8					; size = 4
_a$ = 12						; size = 4
_b$ = 16						; size = 4
??H@YA?AVTiXmlString@@ABV0@PBD@Z PROC			; operator+, COMDAT

; 97   : {

	push	ebp
	mov	ebp, esp
	push	-1
	push	__ehhandler$??H@YA?AVTiXmlString@@ABV0@PBD@Z
	mov	eax, DWORD PTR fs:0
	push	eax
	sub	esp, 228				; 000000e4H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-240]
	mov	ecx, 57					; 00000039H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	push	eax
	lea	eax, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, eax
	mov	DWORD PTR $T209375[ebp], 0

; 98   : 	TiXmlString tmp;

	lea	ecx, DWORD PTR _tmp$[ebp]
	call	??0TiXmlString@@QAE@XZ			; TiXmlString::TiXmlString
	mov	DWORD PTR __$EHRec$[ebp+8], 1

; 99   : 	TiXmlString::size_type b_len = static_cast<TiXmlString::size_type>( strlen(b) );

	mov	eax, DWORD PTR _b$[ebp]
	push	eax
	call	_strlen
	add	esp, 4
	mov	DWORD PTR _b_len$[ebp], eax

; 100  : 	tmp.reserve(a.length() + b_len);

	mov	ecx, DWORD PTR _a$[ebp]
	call	?length@TiXmlString@@QBEIXZ		; TiXmlString::length
	add	eax, DWORD PTR _b_len$[ebp]
	push	eax
	lea	ecx, DWORD PTR _tmp$[ebp]
	call	?reserve@TiXmlString@@QAEXI@Z		; TiXmlString::reserve

; 101  : 	tmp += a;

	mov	eax, DWORD PTR _a$[ebp]
	push	eax
	lea	ecx, DWORD PTR _tmp$[ebp]
	call	??YTiXmlString@@QAEAAV0@ABV0@@Z		; TiXmlString::operator+=

; 102  : 	tmp.append(b, b_len);

	mov	eax, DWORD PTR _b_len$[ebp]
	push	eax
	mov	ecx, DWORD PTR _b$[ebp]
	push	ecx
	lea	ecx, DWORD PTR _tmp$[ebp]
	call	?append@TiXmlString@@QAEAAV1@PBDI@Z	; TiXmlString::append

; 103  : 	return tmp;

	lea	eax, DWORD PTR _tmp$[ebp]
	push	eax
	mov	ecx, DWORD PTR ___$ReturnUdt$[ebp]
	call	??0TiXmlString@@QAE@ABV0@@Z		; TiXmlString::TiXmlString
	mov	ecx, DWORD PTR $T209375[ebp]
	or	ecx, 1
	mov	DWORD PTR $T209375[ebp], ecx
	mov	BYTE PTR __$EHRec$[ebp+8], 0
	lea	ecx, DWORD PTR _tmp$[ebp]
	call	??1TiXmlString@@QAE@XZ			; TiXmlString::~TiXmlString
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 104  : }

	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN9@operator@2
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	mov	ecx, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, ecx
	pop	ecx
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 240				; 000000f0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	1
$LN9@operator@2:
	DD	1
	DD	$LN8@operator@2
$LN8@operator@2:
	DD	-20					; ffffffecH
	DD	4
	DD	$LN6@operator@2
$LN6@operator@2:
	DB	116					; 00000074H
	DB	109					; 0000006dH
	DB	112					; 00000070H
	DB	0
_TEXT	ENDS
;	COMDAT text$x
text$x	SEGMENT
__unwindfunclet$??H@YA?AVTiXmlString@@ABV0@PBD@Z$0:
	lea	ecx, DWORD PTR _tmp$[ebp]
	jmp	??1TiXmlString@@QAE@XZ			; TiXmlString::~TiXmlString
__unwindfunclet$??H@YA?AVTiXmlString@@ABV0@PBD@Z$1:
	mov	eax, DWORD PTR $T209375[ebp]
	and	eax, 1
	je	$LN5@operator@2
	and	DWORD PTR $T209375[ebp], -2		; fffffffeH
	mov	ecx, DWORD PTR ___$ReturnUdt$[ebp]
	jmp	??1TiXmlString@@QAE@XZ			; TiXmlString::~TiXmlString
$LN5@operator@2:
	ret	0
__ehhandler$??H@YA?AVTiXmlString@@ABV0@PBD@Z:
	mov	edx, DWORD PTR [esp+8]
	lea	eax, DWORD PTR [edx+12]
	mov	ecx, DWORD PTR [edx-244]
	xor	ecx, eax
	call	@__security_check_cookie@4
	mov	eax, OFFSET __ehfuncinfo$??H@YA?AVTiXmlString@@ABV0@PBD@Z
	jmp	___CxxFrameHandler3
text$x	ENDS
??H@YA?AVTiXmlString@@ABV0@PBD@Z ENDP			; operator+
PUBLIC	??H@YA?AVTiXmlString@@PBDABV0@@Z		; operator+
;	COMDAT xdata$x
xdata$x	SEGMENT
__unwindtable$??H@YA?AVTiXmlString@@PBDABV0@@Z DD 0ffffffffH
	DD	FLAT:__unwindfunclet$??H@YA?AVTiXmlString@@PBDABV0@@Z$1
	DD	00H
	DD	FLAT:__unwindfunclet$??H@YA?AVTiXmlString@@PBDABV0@@Z$0
__ehfuncinfo$??H@YA?AVTiXmlString@@PBDABV0@@Z DD 019930522H
	DD	02H
	DD	FLAT:__unwindtable$??H@YA?AVTiXmlString@@PBDABV0@@Z
	DD	2 DUP(00H)
	DD	2 DUP(00H)
	DD	00H
	DD	01H
; Function compile flags: /Odtp /RTCsu /ZI
xdata$x	ENDS
;	COMDAT ??H@YA?AVTiXmlString@@PBDABV0@@Z
_TEXT	SEGMENT
$T209390 = -236						; size = 4
_a_len$ = -32						; size = 4
_tmp$ = -20						; size = 4
__$EHRec$ = -12						; size = 12
___$ReturnUdt$ = 8					; size = 4
_a$ = 12						; size = 4
_b$ = 16						; size = 4
??H@YA?AVTiXmlString@@PBDABV0@@Z PROC			; operator+, COMDAT

; 107  : {

	push	ebp
	mov	ebp, esp
	push	-1
	push	__ehhandler$??H@YA?AVTiXmlString@@PBDABV0@@Z
	mov	eax, DWORD PTR fs:0
	push	eax
	sub	esp, 228				; 000000e4H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-240]
	mov	ecx, 57					; 00000039H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	push	eax
	lea	eax, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, eax
	mov	DWORD PTR $T209390[ebp], 0

; 108  : 	TiXmlString tmp;

	lea	ecx, DWORD PTR _tmp$[ebp]
	call	??0TiXmlString@@QAE@XZ			; TiXmlString::TiXmlString
	mov	DWORD PTR __$EHRec$[ebp+8], 1

; 109  : 	TiXmlString::size_type a_len = static_cast<TiXmlString::size_type>( strlen(a) );

	mov	eax, DWORD PTR _a$[ebp]
	push	eax
	call	_strlen
	add	esp, 4
	mov	DWORD PTR _a_len$[ebp], eax

; 110  : 	tmp.reserve(a_len + b.length());

	mov	ecx, DWORD PTR _b$[ebp]
	call	?length@TiXmlString@@QBEIXZ		; TiXmlString::length
	add	eax, DWORD PTR _a_len$[ebp]
	push	eax
	lea	ecx, DWORD PTR _tmp$[ebp]
	call	?reserve@TiXmlString@@QAEXI@Z		; TiXmlString::reserve

; 111  : 	tmp.append(a, a_len);

	mov	eax, DWORD PTR _a_len$[ebp]
	push	eax
	mov	ecx, DWORD PTR _a$[ebp]
	push	ecx
	lea	ecx, DWORD PTR _tmp$[ebp]
	call	?append@TiXmlString@@QAEAAV1@PBDI@Z	; TiXmlString::append

; 112  : 	tmp += b;

	mov	eax, DWORD PTR _b$[ebp]
	push	eax
	lea	ecx, DWORD PTR _tmp$[ebp]
	call	??YTiXmlString@@QAEAAV0@ABV0@@Z		; TiXmlString::operator+=

; 113  : 	return tmp;

	lea	eax, DWORD PTR _tmp$[ebp]
	push	eax
	mov	ecx, DWORD PTR ___$ReturnUdt$[ebp]
	call	??0TiXmlString@@QAE@ABV0@@Z		; TiXmlString::TiXmlString
	mov	ecx, DWORD PTR $T209390[ebp]
	or	ecx, 1
	mov	DWORD PTR $T209390[ebp], ecx
	mov	BYTE PTR __$EHRec$[ebp+8], 0
	lea	ecx, DWORD PTR _tmp$[ebp]
	call	??1TiXmlString@@QAE@XZ			; TiXmlString::~TiXmlString
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 114  : }

	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN9@operator@3
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	mov	ecx, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, ecx
	pop	ecx
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 240				; 000000f0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	1
$LN9@operator@3:
	DD	1
	DD	$LN8@operator@3
$LN8@operator@3:
	DD	-20					; ffffffecH
	DD	4
	DD	$LN6@operator@3
$LN6@operator@3:
	DB	116					; 00000074H
	DB	109					; 0000006dH
	DB	112					; 00000070H
	DB	0
_TEXT	ENDS
;	COMDAT text$x
text$x	SEGMENT
__unwindfunclet$??H@YA?AVTiXmlString@@PBDABV0@@Z$0:
	lea	ecx, DWORD PTR _tmp$[ebp]
	jmp	??1TiXmlString@@QAE@XZ			; TiXmlString::~TiXmlString
__unwindfunclet$??H@YA?AVTiXmlString@@PBDABV0@@Z$1:
	mov	eax, DWORD PTR $T209390[ebp]
	and	eax, 1
	je	$LN5@operator@3
	and	DWORD PTR $T209390[ebp], -2		; fffffffeH
	mov	ecx, DWORD PTR ___$ReturnUdt$[ebp]
	jmp	??1TiXmlString@@QAE@XZ			; TiXmlString::~TiXmlString
$LN5@operator@3:
	ret	0
__ehhandler$??H@YA?AVTiXmlString@@PBDABV0@@Z:
	mov	edx, DWORD PTR [esp+8]
	lea	eax, DWORD PTR [edx+12]
	mov	ecx, DWORD PTR [edx-244]
	xor	ecx, eax
	call	@__security_check_cookie@4
	mov	eax, OFFSET __ehfuncinfo$??H@YA?AVTiXmlString@@PBDABV0@@Z
	jmp	___CxxFrameHandler3
text$x	ENDS
??H@YA?AVTiXmlString@@PBDABV0@@Z ENDP			; operator+
; Function compile flags: /Odtp /RTCsu /ZI
; File d:\vice-players-master\shared\tinyxml\tinystr.h
;	COMDAT ??0TiXmlString@@QAE@XZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
??0TiXmlString@@QAE@XZ PROC				; TiXmlString::TiXmlString, COMDAT
; _this$ = ecx

; 79   : 	{

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET ?nullrep_@TiXmlString@@0URep@1@A ; TiXmlString::nullrep_

; 80   : 	}

	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
??0TiXmlString@@QAE@XZ ENDP				; TiXmlString::TiXmlString
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT ??0TiXmlString@@QAE@ABV0@@Z
_TEXT	SEGMENT
_this$ = -8						; size = 4
_copy$ = 8						; size = 4
??0TiXmlString@@QAE@ABV0@@Z PROC			; TiXmlString::TiXmlString, COMDAT
; _this$ = ecx

; 84   : 	{

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], 0

; 85   : 		init(copy.length());

	mov	ecx, DWORD PTR _copy$[ebp]
	call	?length@TiXmlString@@QBEIXZ		; TiXmlString::length
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?init@TiXmlString@@AAEXI@Z		; TiXmlString::init

; 86   : 		memcpy(start(), copy.data(), length());

	mov	ecx, DWORD PTR _this$[ebp]
	call	?length@TiXmlString@@QBEIXZ		; TiXmlString::length
	push	eax
	mov	ecx, DWORD PTR _copy$[ebp]
	call	?data@TiXmlString@@QBEPBDXZ		; TiXmlString::data
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?start@TiXmlString@@ABEPADXZ		; TiXmlString::start
	push	eax
	call	_memcpy
	add	esp, 12					; 0000000cH

; 87   : 	}

	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
??0TiXmlString@@QAE@ABV0@@Z ENDP			; TiXmlString::TiXmlString
_TEXT	ENDS
PUBLIC	?quit@TiXmlString@@AAEXXZ			; TiXmlString::quit
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ??1TiXmlString@@QAE@XZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
??1TiXmlString@@QAE@XZ PROC				; TiXmlString::~TiXmlString, COMDAT
; _this$ = ecx

; 105  : 	{

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 106  : 		quit();

	mov	ecx, DWORD PTR _this$[ebp]
	call	?quit@TiXmlString@@AAEXXZ		; TiXmlString::quit

; 107  : 	}

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
??1TiXmlString@@QAE@XZ ENDP				; TiXmlString::~TiXmlString
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT ??YTiXmlString@@QAEAAV0@ABV0@@Z
_TEXT	SEGMENT
_this$ = -8						; size = 4
_suffix$ = 8						; size = 4
??YTiXmlString@@QAEAAV0@ABV0@@Z PROC			; TiXmlString::operator+=, COMDAT
; _this$ = ecx

; 136  : 	{

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 137  : 		return append(suffix.data(), suffix.length());

	mov	ecx, DWORD PTR _suffix$[ebp]
	call	?length@TiXmlString@@QBEIXZ		; TiXmlString::length
	push	eax
	mov	ecx, DWORD PTR _suffix$[ebp]
	call	?data@TiXmlString@@QBEPBDXZ		; TiXmlString::data
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?append@TiXmlString@@QAEAAV1@PBDI@Z	; TiXmlString::append

; 138  : 	}

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
??YTiXmlString@@QAEAAV0@ABV0@@Z ENDP			; TiXmlString::operator+=
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT ?data@TiXmlString@@QBEPBDXZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
?data@TiXmlString@@QBEPBDXZ PROC			; TiXmlString::data, COMDAT
; _this$ = ecx

; 145  : 	const char * data () const { return rep_->str; }

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax]
	add	eax, 8
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?data@TiXmlString@@QBEPBDXZ ENDP			; TiXmlString::data
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT ?length@TiXmlString@@QBEIXZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
?length@TiXmlString@@QBEIXZ PROC			; TiXmlString::length, COMDAT
; _this$ = ecx

; 148  : 	size_type length () const { return rep_->size; }

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	eax, DWORD PTR [ecx]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?length@TiXmlString@@QBEIXZ ENDP			; TiXmlString::length
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT ?capacity@TiXmlString@@QBEIXZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
?capacity@TiXmlString@@QBEIXZ PROC			; TiXmlString::capacity, COMDAT
; _this$ = ecx

; 157  : 	size_type capacity () const { return rep_->capacity; }

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	eax, DWORD PTR [ecx+4]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?capacity@TiXmlString@@QBEIXZ ENDP			; TiXmlString::capacity
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT ?swap@TiXmlString@@QAEXAAV1@@Z
_TEXT	SEGMENT
_r$ = -20						; size = 4
_this$ = -8						; size = 4
_other$ = 8						; size = 4
?swap@TiXmlString@@QAEXAAV1@@Z PROC			; TiXmlString::swap, COMDAT
; _this$ = ecx

; 212  : 	{

	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 213  : 		Rep* r = rep_;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _r$[ebp], ecx

; 214  : 		rep_ = other.rep_;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _other$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR [eax], edx

; 215  : 		other.rep_ = r;

	mov	eax, DWORD PTR _other$[ebp]
	mov	ecx, DWORD PTR _r$[ebp]
	mov	DWORD PTR [eax], ecx

; 216  : 	}

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
?swap@TiXmlString@@QAEXAAV1@@Z ENDP			; TiXmlString::swap
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT ?init@TiXmlString@@AAEXI@Z
_TEXT	SEGMENT
_this$ = -8						; size = 4
_sz$ = 8						; size = 4
?init@TiXmlString@@AAEXI@Z PROC				; TiXmlString::init, COMDAT
; _this$ = ecx

; 220  : 	void init(size_type sz) { init(sz, sz); }

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _sz$[ebp]
	push	eax
	mov	ecx, DWORD PTR _sz$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?init@TiXmlString@@AAEXII@Z		; TiXmlString::init
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
?init@TiXmlString@@AAEXI@Z ENDP				; TiXmlString::init
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT ?set_size@TiXmlString@@AAEXI@Z
_TEXT	SEGMENT
_this$ = -8						; size = 4
_sz$ = 8						; size = 4
?set_size@TiXmlString@@AAEXI@Z PROC			; TiXmlString::set_size, COMDAT
; _this$ = ecx

; 221  : 	void set_size(size_type sz) { rep_->str[ rep_->size = sz ] = '\0'; }

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR _sz$[ebp]
	mov	DWORD PTR [ecx], edx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR _sz$[ebp]
	mov	BYTE PTR [ecx+edx+8], 0
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
?set_size@TiXmlString@@AAEXI@Z ENDP			; TiXmlString::set_size
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT ?start@TiXmlString@@ABEPADXZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
?start@TiXmlString@@ABEPADXZ PROC			; TiXmlString::start, COMDAT
; _this$ = ecx

; 222  : 	char* start() const { return rep_->str; }

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax]
	add	eax, 8
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?start@TiXmlString@@ABEPADXZ ENDP			; TiXmlString::start
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT ?finish@TiXmlString@@ABEPADXZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
?finish@TiXmlString@@ABEPADXZ PROC			; TiXmlString::finish, COMDAT
; _this$ = ecx

; 223  : 	char* finish() const { return rep_->str + rep_->size; }

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	edx, DWORD PTR [eax]
	lea	eax, DWORD PTR [ecx+edx+8]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?finish@TiXmlString@@ABEPADXZ ENDP			; TiXmlString::finish
_TEXT	ENDS
EXTRN	??_U@YAPAXI@Z:PROC				; operator new[]
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ?init@TiXmlString@@AAEXII@Z
_TEXT	SEGMENT
$T209427 = -236						; size = 4
_intsNeeded$193277 = -32				; size = 4
_bytesNeeded$193275 = -20				; size = 4
_this$ = -8						; size = 4
_sz$ = 8						; size = 4
_cap$ = 12						; size = 4
?init@TiXmlString@@AAEXII@Z PROC			; TiXmlString::init, COMDAT
; _this$ = ecx

; 232  : 	{

	push	ebp
	mov	ebp, esp
	sub	esp, 240				; 000000f0H
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-240]
	mov	ecx, 60					; 0000003cH
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 233  : 		if (cap)

	cmp	DWORD PTR _cap$[ebp], 0
	je	SHORT $LN2@init

; 234  : 		{
; 235  : 			// Lee: the original form:
; 236  : 			//	rep_ = static_cast<Rep*>(operator new(sizeof(Rep) + cap));
; 237  : 			// doesn't work in some cases of new being overloaded. Switching
; 238  : 			// to the normal allocation, although use an 'int' for systems
; 239  : 			// that are overly picky about structure alignment.
; 240  : 			const size_type bytesNeeded = sizeof(Rep) + cap;

	mov	eax, DWORD PTR _cap$[ebp]
	add	eax, 12					; 0000000cH
	mov	DWORD PTR _bytesNeeded$193275[ebp], eax

; 241  : 			const size_type intsNeeded = ( bytesNeeded + sizeof(int) - 1 ) / sizeof( int ); 

	mov	eax, DWORD PTR _bytesNeeded$193275[ebp]
	add	eax, 3
	shr	eax, 2
	mov	DWORD PTR _intsNeeded$193277[ebp], eax

; 242  : 			rep_ = reinterpret_cast<Rep*>( new int[ intsNeeded ] );

	xor	ecx, ecx
	mov	eax, DWORD PTR _intsNeeded$193277[ebp]
	mov	edx, 4
	mul	edx
	seto	cl
	neg	ecx
	or	ecx, eax
	push	ecx
	call	??_U@YAPAXI@Z				; operator new[]
	add	esp, 4
	mov	DWORD PTR $T209427[ebp], eax
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR $T209427[ebp]
	mov	DWORD PTR [eax], ecx

; 243  : 
; 244  : 			rep_->str[ rep_->size = sz ] = '\0';

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR _sz$[ebp]
	mov	DWORD PTR [ecx], edx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR _sz$[ebp]
	mov	BYTE PTR [ecx+edx+8], 0

; 245  : 			rep_->capacity = cap;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR _cap$[ebp]
	mov	DWORD PTR [ecx+4], edx

; 246  : 		}
; 247  : 		else

	jmp	SHORT $LN3@init
$LN2@init:

; 248  : 		{
; 249  : 			rep_ = &nullrep_;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET ?nullrep_@TiXmlString@@0URep@1@A ; TiXmlString::nullrep_
$LN3@init:

; 250  : 		}
; 251  : 	}

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 240				; 000000f0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	8
?init@TiXmlString@@AAEXII@Z ENDP			; TiXmlString::init
_TEXT	ENDS
EXTRN	??_V@YAXPAX@Z:PROC				; operator delete[]
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ?quit@TiXmlString@@AAEXXZ
_TEXT	SEGMENT
$T209430 = -212						; size = 4
_this$ = -8						; size = 4
?quit@TiXmlString@@AAEXXZ PROC				; TiXmlString::quit, COMDAT
; _this$ = ecx

; 254  : 	{

	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 255  : 		if (rep_ != &nullrep_)

	mov	eax, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [eax], OFFSET ?nullrep_@TiXmlString@@0URep@1@A ; TiXmlString::nullrep_
	je	SHORT $LN2@quit

; 256  : 		{
; 257  : 			// The rep_ is really an array of ints. (see the allocator, above).
; 258  : 			// Cast it back before delete, so the compiler won't incorrectly call destructors.
; 259  : 			delete [] ( reinterpret_cast<int*>( rep_ ) );

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR $T209430[ebp], ecx
	mov	edx, DWORD PTR $T209430[ebp]
	push	edx
	call	??_V@YAXPAX@Z				; operator delete[]
	add	esp, 4
$LN2@quit:

; 260  : 		}
; 261  : 	}

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?quit@TiXmlString@@AAEXXZ ENDP				; TiXmlString::quit
_TEXT	ENDS
END
