; Listing generated by Microsoft (R) Optimizing Compiler Version 15.00.30729.01 

	TITLE	d:\vice-players-master\Client\net\CObjectManager.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

PUBLIC	??0CObjectManager@@QAE@XZ			; CObjectManager::CObjectManager
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File d:\vice-players-master\client\net\cobjectmanager.cpp
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT ??0CObjectManager@@QAE@XZ
_TEXT	SEGMENT
_ObjectID$209251 = -17					; size = 1
_this$ = -8						; size = 4
??0CObjectManager@@QAE@XZ PROC				; CObjectManager::CObjectManager, COMDAT
; _this$ = ecx

; 18   : {

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

; 19   : 	for(EntityId ObjectID = 0; ObjectID < MAX_OBJECTS; ObjectID++) 

	mov	BYTE PTR _ObjectID$209251[ebp], 0
	jmp	SHORT $LN3@CObjectMan
$LN2@CObjectMan:
	mov	al, BYTE PTR _ObjectID$209251[ebp]
	add	al, 1
	mov	BYTE PTR _ObjectID$209251[ebp], al
$LN3@CObjectMan:
	movzx	eax, BYTE PTR _ObjectID$209251[ebp]
	cmp	eax, 100				; 00000064H
	jge	SHORT $LN4@CObjectMan

; 20   : 	{
; 21   : 		m_bObjectSlotState[ObjectID] = FALSE;

	movzx	eax, BYTE PTR _ObjectID$209251[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+eax*4], 0

; 22   : 		m_pObjects[ObjectID] = NULL;

	movzx	eax, BYTE PTR _ObjectID$209251[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+eax*4+400], 0
	jmp	SHORT $LN2@CObjectMan
$LN4@CObjectMan:

; 23   : 	}
; 24   : }

	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
??0CObjectManager@@QAE@XZ ENDP				; CObjectManager::CObjectManager
_TEXT	ENDS
PUBLIC	?Delete@CObjectManager@@QAEHE@Z			; CObjectManager::Delete
PUBLIC	??1CObjectManager@@QAE@XZ			; CObjectManager::~CObjectManager
EXTRN	__RTC_CheckEsp:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ??1CObjectManager@@QAE@XZ
_TEXT	SEGMENT
_i$209258 = -17						; size = 1
_this$ = -8						; size = 4
??1CObjectManager@@QAE@XZ PROC				; CObjectManager::~CObjectManager, COMDAT
; _this$ = ecx

; 27   : {

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

; 28   : 	for(EntityId i = 0; i < MAX_OBJECTS; i++)

	mov	BYTE PTR _i$209258[ebp], 0
	jmp	SHORT $LN3@CObjectMan@2
$LN2@CObjectMan@2:
	mov	al, BYTE PTR _i$209258[ebp]
	add	al, 1
	mov	BYTE PTR _i$209258[ebp], al
$LN3@CObjectMan@2:
	movzx	eax, BYTE PTR _i$209258[ebp]
	cmp	eax, 100				; 00000064H
	jge	SHORT $LN4@CObjectMan@2

; 29   : 	{
; 30   : 		Delete(i);

	movzx	eax, BYTE PTR _i$209258[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?Delete@CObjectManager@@QAEHE@Z		; CObjectManager::Delete
	jmp	SHORT $LN2@CObjectMan@2
$LN4@CObjectMan@2:

; 31   : 	}
; 32   : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
??1CObjectManager@@QAE@XZ ENDP				; CObjectManager::~CObjectManager
_TEXT	ENDS
PUBLIC	?New@CObjectManager@@QAEHEHUVector3@@0@Z	; CObjectManager::New
EXTRN	??3@YAXPAX@Z:PROC				; operator delete
EXTRN	??0CObject@@QAE@HPAUVector3@@0@Z:PROC		; CObject::CObject
EXTRN	??2@YAPAXI@Z:PROC				; operator new
EXTRN	___security_cookie:DWORD
EXTRN	___CxxFrameHandler3:PROC
EXTRN	@__security_check_cookie@4:PROC
;	COMDAT xdata$x
xdata$x	SEGMENT
__unwindtable$?New@CObjectManager@@QAEHEHUVector3@@0@Z DD 0ffffffffH
	DD	FLAT:__unwindfunclet$?New@CObjectManager@@QAEHEHUVector3@@0@Z$0
__ehfuncinfo$?New@CObjectManager@@QAEHEHUVector3@@0@Z DD 019930522H
	DD	01H
	DD	FLAT:__unwindtable$?New@CObjectManager@@QAEHEHUVector3@@0@Z
	DD	2 DUP(00H)
	DD	2 DUP(00H)
	DD	00H
	DD	01H
; Function compile flags: /Odtp /RTCsu /ZI
xdata$x	ENDS
;	COMDAT ?New@CObjectManager@@QAEHEHUVector3@@0@Z
_TEXT	SEGMENT
tv85 = -244						; size = 4
$T209310 = -236						; size = 4
$T209311 = -224						; size = 4
_this$ = -20						; size = 4
__$EHRec$ = -12						; size = 12
_ObjectID$ = 8						; size = 1
_iModel$ = 12						; size = 4
_vecPos$ = 16						; size = 12
_vecRot$ = 28						; size = 12
?New@CObjectManager@@QAEHEHUVector3@@0@Z PROC		; CObjectManager::New, COMDAT
; _this$ = ecx

; 35   : {

	push	ebp
	mov	ebp, esp
	push	-1
	push	__ehhandler$?New@CObjectManager@@QAEHEHUVector3@@0@Z
	mov	eax, DWORD PTR fs:0
	push	eax
	sub	esp, 232				; 000000e8H
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-244]
	mov	ecx, 58					; 0000003aH
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	push	eax
	lea	eax, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, eax
	mov	DWORD PTR _this$[ebp], ecx

; 36   : 	if(m_pObjects[ObjectID])

	movzx	eax, BYTE PTR _ObjectID$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [ecx+eax*4+400], 0
	je	SHORT $LN2@New@3

; 37   : 	{
; 38   : 		Delete(ObjectID);

	movzx	eax, BYTE PTR _ObjectID$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?Delete@CObjectManager@@QAEHE@Z		; CObjectManager::Delete
$LN2@New@3:

; 39   : 	}
; 40   : 
; 41   : 	m_pObjects[ObjectID] = new CObject(iModel, &vecPos, &vecRot);

	push	8
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T209311[ebp], eax
	mov	DWORD PTR __$EHRec$[ebp+8], 0
	cmp	DWORD PTR $T209311[ebp], 0
	je	SHORT $LN5@New@3
	lea	eax, DWORD PTR _vecRot$[ebp]
	push	eax
	lea	ecx, DWORD PTR _vecPos$[ebp]
	push	ecx
	mov	edx, DWORD PTR _iModel$[ebp]
	push	edx
	mov	ecx, DWORD PTR $T209311[ebp]
	call	??0CObject@@QAE@HPAUVector3@@0@Z	; CObject::CObject
	mov	DWORD PTR tv85[ebp], eax
	jmp	SHORT $LN6@New@3
$LN5@New@3:
	mov	DWORD PTR tv85[ebp], 0
$LN6@New@3:
	mov	eax, DWORD PTR tv85[ebp]
	mov	DWORD PTR $T209310[ebp], eax
	mov	DWORD PTR __$EHRec$[ebp+8], -1
	movzx	ecx, BYTE PTR _ObjectID$[ebp]
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR $T209310[ebp]
	mov	DWORD PTR [edx+ecx*4+400], eax

; 42   : 
; 43   : 	if (m_pObjects[ObjectID])

	movzx	eax, BYTE PTR _ObjectID$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [ecx+eax*4+400], 0
	je	SHORT $LN1@New@3

; 44   : 	{
; 45   : 		m_bObjectSlotState[ObjectID] = TRUE;

	movzx	eax, BYTE PTR _ObjectID$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+eax*4], 1

; 46   : 
; 47   : 		return TRUE;

	mov	eax, 1
	jmp	SHORT $LN3@New@3
$LN1@New@3:

; 48   : 	}
; 49   : 
; 50   : 	return FALSE;

	xor	eax, eax
$LN3@New@3:

; 51   : }

	mov	ecx, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, ecx
	pop	ecx
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 244				; 000000f4H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	32					; 00000020H
_TEXT	ENDS
;	COMDAT text$x
text$x	SEGMENT
__unwindfunclet$?New@CObjectManager@@QAEHEHUVector3@@0@Z$0:
	mov	eax, DWORD PTR $T209311[ebp]
	push	eax
	call	??3@YAXPAX@Z				; operator delete
	pop	ecx
	ret	0
__ehhandler$?New@CObjectManager@@QAEHEHUVector3@@0@Z:
	mov	edx, DWORD PTR [esp+8]
	lea	eax, DWORD PTR [edx+12]
	mov	ecx, DWORD PTR [edx-248]
	xor	ecx, eax
	call	@__security_check_cookie@4
	mov	eax, OFFSET __ehfuncinfo$?New@CObjectManager@@QAEHEHUVector3@@0@Z
	jmp	___CxxFrameHandler3
text$x	ENDS
?New@CObjectManager@@QAEHEHUVector3@@0@Z ENDP		; CObjectManager::New
PUBLIC	??_GCObject@@QAEPAXI@Z				; CObject::`scalar deleting destructor'
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ?Delete@CObjectManager@@QAEHE@Z
_TEXT	SEGMENT
tv80 = -232						; size = 4
$T209328 = -224						; size = 4
$T209329 = -212						; size = 4
_this$ = -8						; size = 4
_ObjectID$ = 8						; size = 1
?Delete@CObjectManager@@QAEHE@Z PROC			; CObjectManager::Delete, COMDAT
; _this$ = ecx

; 54   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 232				; 000000e8H
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-232]
	mov	ecx, 58					; 0000003aH
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 55   : 	if(!m_pObjects[ObjectID])

	movzx	eax, BYTE PTR _ObjectID$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [ecx+eax*4+400], 0
	jne	SHORT $LN1@Delete

; 56   : 	{
; 57   : 		return FALSE;

	xor	eax, eax
	jmp	SHORT $LN2@Delete
$LN1@Delete:

; 58   : 	}
; 59   : 
; 60   : 	m_bObjectSlotState[ObjectID] = FALSE;

	movzx	eax, BYTE PTR _ObjectID$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+eax*4], 0

; 61   : 	delete m_pObjects[ObjectID];

	movzx	eax, BYTE PTR _ObjectID$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4+400]
	mov	DWORD PTR $T209329[ebp], edx
	mov	eax, DWORD PTR $T209329[ebp]
	mov	DWORD PTR $T209328[ebp], eax
	cmp	DWORD PTR $T209328[ebp], 0
	je	SHORT $LN4@Delete
	push	1
	mov	ecx, DWORD PTR $T209328[ebp]
	call	??_GCObject@@QAEPAXI@Z
	mov	DWORD PTR tv80[ebp], eax
	jmp	SHORT $LN5@Delete
$LN4@Delete:
	mov	DWORD PTR tv80[ebp], 0
$LN5@Delete:

; 62   : 	m_pObjects[ObjectID] = NULL;

	movzx	eax, BYTE PTR _ObjectID$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+eax*4+400], 0

; 63   : 
; 64   : 	return TRUE;

	mov	eax, 1
$LN2@Delete:

; 65   : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 232				; 000000e8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
?Delete@CObjectManager@@QAEHE@Z ENDP			; CObjectManager::Delete
_TEXT	ENDS
EXTRN	??1CObject@@QAE@XZ:PROC				; CObject::~CObject
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ??_GCObject@@QAEPAXI@Z
_TEXT	SEGMENT
_this$ = -8						; size = 4
___flags$ = 8						; size = 4
??_GCObject@@QAEPAXI@Z PROC				; CObject::`scalar deleting destructor', COMDAT
; _this$ = ecx
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
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1CObject@@QAE@XZ			; CObject::~CObject
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	je	SHORT $LN1@scalar
	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$LN1@scalar:
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
??_GCObject@@QAEPAXI@Z ENDP				; CObject::`scalar deleting destructor'
_TEXT	ENDS
END
