; Listing generated by Microsoft (R) Optimizing Compiler Version 15.00.30729.01 

	TITLE	d:\vice-players-master\Client\net\CPlayerManager.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

PUBLIC	?szQuitReasons@@3PAY0CA@DA			; szQuitReasons
_DATA	SEGMENT
?szQuitReasons@@3PAY0CA@DA DB 'Timeout', 00H		; szQuitReasons
	ORG $+24
	DB	'Leaving', 00H
	ORG $+24
	DB	'Kicked', 00H
	ORG $+25
_DATA	ENDS
PUBLIC	??0CPlayerManager@@QAE@XZ			; CPlayerManager::CPlayerManager
EXTRN	??3@YAXPAX@Z:PROC				; operator delete
EXTRN	??0CLocalPlayer@@QAE@XZ:PROC			; CLocalPlayer::CLocalPlayer
EXTRN	??2@YAPAXI@Z:PROC				; operator new
EXTRN	___security_cookie:DWORD
EXTRN	___CxxFrameHandler3:PROC
EXTRN	@__security_check_cookie@4:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT xdata$x
; File d:\vice-players-master\client\net\cplayermanager.cpp
xdata$x	SEGMENT
__unwindtable$??0CPlayerManager@@QAE@XZ DD 0ffffffffH
	DD	FLAT:__unwindfunclet$??0CPlayerManager@@QAE@XZ$0
__ehfuncinfo$??0CPlayerManager@@QAE@XZ DD 019930522H
	DD	01H
	DD	FLAT:__unwindtable$??0CPlayerManager@@QAE@XZ
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
;	COMDAT ??0CPlayerManager@@QAE@XZ
_TEXT	SEGMENT
tv72 = -256						; size = 4
$T209337 = -248						; size = 4
$T209338 = -236						; size = 4
_i$209256 = -29						; size = 1
_this$ = -20						; size = 4
__$EHRec$ = -12						; size = 12
??0CPlayerManager@@QAE@XZ PROC				; CPlayerManager::CPlayerManager, COMDAT
; _this$ = ecx

; 26   : {

	push	ebp
	mov	ebp, esp
	push	-1
	push	__ehhandler$??0CPlayerManager@@QAE@XZ
	mov	eax, DWORD PTR fs:0
	push	eax
	sub	esp, 244				; 000000f4H
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-256]
	mov	ecx, 61					; 0000003dH
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	push	eax
	lea	eax, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, eax
	mov	DWORD PTR _this$[ebp], ecx

; 27   : 	m_pLocalPlayer = new CLocalPlayer();

	push	336					; 00000150H
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T209338[ebp], eax
	mov	DWORD PTR __$EHRec$[ebp+8], 0
	cmp	DWORD PTR $T209338[ebp], 0
	je	SHORT $LN6@CPlayerMan
	mov	ecx, DWORD PTR $T209338[ebp]
	call	??0CLocalPlayer@@QAE@XZ			; CLocalPlayer::CLocalPlayer
	mov	DWORD PTR tv72[ebp], eax
	jmp	SHORT $LN7@CPlayerMan
$LN6@CPlayerMan:
	mov	DWORD PTR tv72[ebp], 0
$LN7@CPlayerMan:
	mov	eax, DWORD PTR tv72[ebp]
	mov	DWORD PTR $T209337[ebp], eax
	mov	DWORD PTR __$EHRec$[ebp+8], -1
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR $T209337[ebp]
	mov	DWORD PTR [ecx+200], edx

; 28   : 
; 29   : 	for(EntityId i = 0; i < MAX_PLAYERS; i++)

	mov	BYTE PTR _i$209256[ebp], 0
	jmp	SHORT $LN3@CPlayerMan
$LN2@CPlayerMan:
	mov	al, BYTE PTR _i$209256[ebp]
	add	al, 1
	mov	BYTE PTR _i$209256[ebp], al
$LN3@CPlayerMan:
	movzx	eax, BYTE PTR _i$209256[ebp]
	cmp	eax, 50					; 00000032H
	jge	SHORT $LN4@CPlayerMan

; 30   : 	{
; 31   : 		m_bPlayerSlotState[i] = FALSE;

	movzx	eax, BYTE PTR _i$209256[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+eax*4], 0

; 32   : 		m_pPlayers[i] = NULL;

	movzx	eax, BYTE PTR _i$209256[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+eax*4+208], 0
	jmp	SHORT $LN2@CPlayerMan
$LN4@CPlayerMan:

; 33   : 	}
; 34   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, ecx
	pop	ecx
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 256				; 00000100H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_TEXT	ENDS
;	COMDAT text$x
text$x	SEGMENT
__unwindfunclet$??0CPlayerManager@@QAE@XZ$0:
	mov	eax, DWORD PTR $T209338[ebp]
	push	eax
	call	??3@YAXPAX@Z				; operator delete
	pop	ecx
	ret	0
__ehhandler$??0CPlayerManager@@QAE@XZ:
	mov	edx, DWORD PTR [esp+8]
	lea	eax, DWORD PTR [edx+12]
	mov	ecx, DWORD PTR [edx-260]
	xor	ecx, eax
	call	@__security_check_cookie@4
	mov	eax, OFFSET __ehfuncinfo$??0CPlayerManager@@QAE@XZ
	jmp	___CxxFrameHandler3
text$x	ENDS
??0CPlayerManager@@QAE@XZ ENDP				; CPlayerManager::CPlayerManager
PUBLIC	?Delete@CPlayerManager@@QAEHEE@Z		; CPlayerManager::Delete
PUBLIC	??_GCLocalPlayer@@QAEPAXI@Z			; CLocalPlayer::`scalar deleting destructor'
PUBLIC	??1CPlayerManager@@QAE@XZ			; CPlayerManager::~CPlayerManager
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ??1CPlayerManager@@QAE@XZ
_TEXT	SEGMENT
tv69 = -244						; size = 4
$T209364 = -236						; size = 4
$T209365 = -224						; size = 4
_i$209265 = -17						; size = 1
_this$ = -8						; size = 4
??1CPlayerManager@@QAE@XZ PROC				; CPlayerManager::~CPlayerManager, COMDAT
; _this$ = ecx

; 39   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 244				; 000000f4H
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-244]
	mov	ecx, 61					; 0000003dH
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 40   : 	delete m_pLocalPlayer;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+200]
	mov	DWORD PTR $T209365[ebp], ecx
	mov	edx, DWORD PTR $T209365[ebp]
	mov	DWORD PTR $T209364[ebp], edx
	cmp	DWORD PTR $T209364[ebp], 0
	je	SHORT $LN6@CPlayerMan@2
	push	1
	mov	ecx, DWORD PTR $T209364[ebp]
	call	??_GCLocalPlayer@@QAEPAXI@Z
	mov	DWORD PTR tv69[ebp], eax
	jmp	SHORT $LN7@CPlayerMan@2
$LN6@CPlayerMan@2:
	mov	DWORD PTR tv69[ebp], 0
$LN7@CPlayerMan@2:

; 41   : 
; 42   : 	for(EntityId i = 0; i < MAX_PLAYERS; i++)

	mov	BYTE PTR _i$209265[ebp], 0
	jmp	SHORT $LN3@CPlayerMan@2
$LN2@CPlayerMan@2:
	mov	al, BYTE PTR _i$209265[ebp]
	add	al, 1
	mov	BYTE PTR _i$209265[ebp], al
$LN3@CPlayerMan@2:
	movzx	eax, BYTE PTR _i$209265[ebp]
	cmp	eax, 50					; 00000032H
	jge	SHORT $LN4@CPlayerMan@2

; 43   : 	{
; 44   : 		Delete(i, 0);

	push	0
	movzx	eax, BYTE PTR _i$209265[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?Delete@CPlayerManager@@QAEHEE@Z	; CPlayerManager::Delete
	jmp	SHORT $LN2@CPlayerMan@2
$LN4@CPlayerMan@2:

; 45   : 	}
; 46   : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 244				; 000000f4H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
??1CPlayerManager@@QAE@XZ ENDP				; CPlayerManager::~CPlayerManager
_TEXT	ENDS
PUBLIC	??1CLocalPlayer@@QAE@XZ				; CLocalPlayer::~CLocalPlayer
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ??_GCLocalPlayer@@QAEPAXI@Z
_TEXT	SEGMENT
_this$ = -8						; size = 4
___flags$ = 8						; size = 4
??_GCLocalPlayer@@QAEPAXI@Z PROC			; CLocalPlayer::`scalar deleting destructor', COMDAT
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
	call	??1CLocalPlayer@@QAE@XZ			; CLocalPlayer::~CLocalPlayer
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
??_GCLocalPlayer@@QAEPAXI@Z ENDP			; CLocalPlayer::`scalar deleting destructor'
_TEXT	ENDS
PUBLIC	?SetID@CRemotePlayer@@QAEXE@Z			; CRemotePlayer::SetID
PUBLIC	?New@CPlayerManager@@QAEHEPAD@Z			; CPlayerManager::New
EXTRN	_strcpy:PROC
EXTRN	??0CRemotePlayer@@QAE@XZ:PROC			; CRemotePlayer::CRemotePlayer
;	COMDAT xdata$x
xdata$x	SEGMENT
__unwindtable$?New@CPlayerManager@@QAEHEPAD@Z DD 0ffffffffH
	DD	FLAT:__unwindfunclet$?New@CPlayerManager@@QAEHEPAD@Z$0
__ehfuncinfo$?New@CPlayerManager@@QAEHEPAD@Z DD 019930522H
	DD	01H
	DD	FLAT:__unwindtable$?New@CPlayerManager@@QAEHEPAD@Z
	DD	2 DUP(00H)
	DD	2 DUP(00H)
	DD	00H
	DD	01H
; Function compile flags: /Odtp /RTCsu /ZI
xdata$x	ENDS
;	COMDAT ?New@CPlayerManager@@QAEHEPAD@Z
_TEXT	SEGMENT
tv75 = -244						; size = 4
$T209372 = -236						; size = 4
$T209373 = -224						; size = 4
_this$ = -20						; size = 4
__$EHRec$ = -12						; size = 12
_playerID$ = 8						; size = 1
_szPlayerName$ = 12					; size = 4
?New@CPlayerManager@@QAEHEPAD@Z PROC			; CPlayerManager::New, COMDAT
; _this$ = ecx

; 51   : {

	push	ebp
	mov	ebp, esp
	push	-1
	push	__ehhandler$?New@CPlayerManager@@QAEHEPAD@Z
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

; 52   : 	m_pPlayers[playerID] = new CRemotePlayer();

	push	208					; 000000d0H
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T209373[ebp], eax
	mov	DWORD PTR __$EHRec$[ebp+8], 0
	cmp	DWORD PTR $T209373[ebp], 0
	je	SHORT $LN5@New
	mov	ecx, DWORD PTR $T209373[ebp]
	call	??0CRemotePlayer@@QAE@XZ		; CRemotePlayer::CRemotePlayer
	mov	DWORD PTR tv75[ebp], eax
	jmp	SHORT $LN6@New
$LN5@New:
	mov	DWORD PTR tv75[ebp], 0
$LN6@New:
	mov	eax, DWORD PTR tv75[ebp]
	mov	DWORD PTR $T209372[ebp], eax
	mov	DWORD PTR __$EHRec$[ebp+8], -1
	movzx	ecx, BYTE PTR _playerID$[ebp]
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR $T209372[ebp]
	mov	DWORD PTR [edx+ecx*4+208], eax

; 53   : 
; 54   : 	if(m_pPlayers[playerID])

	movzx	eax, BYTE PTR _playerID$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [ecx+eax*4+208], 0
	je	$LN2@New

; 55   : 	{
; 56   : 		strcpy(m_szPlayerNames[playerID],szPlayerName);

	mov	eax, DWORD PTR _szPlayerName$[ebp]
	push	eax
	movzx	ecx, BYTE PTR _playerID$[ebp]
	imul	ecx, 25					; 00000019H
	mov	edx, DWORD PTR _this$[ebp]
	lea	eax, DWORD PTR [edx+ecx+433]
	push	eax
	call	_strcpy
	add	esp, 8

; 57   : 		m_pPlayers[playerID]->SetID(playerID);

	movzx	eax, BYTE PTR _playerID$[ebp]
	push	eax
	movzx	ecx, BYTE PTR _playerID$[ebp]
	mov	edx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [edx+ecx*4+208]
	call	?SetID@CRemotePlayer@@QAEXE@Z		; CRemotePlayer::SetID

; 58   : 		m_bPlayerSlotState[playerID] = TRUE;

	movzx	eax, BYTE PTR _playerID$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+eax*4], 1

; 59   : 
; 60   : 		m_iScore[playerID] = 0;

	movzx	eax, BYTE PTR _playerID$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+eax*4+1892], 0

; 61   : 		m_iPing[playerID] = 0;

	movzx	eax, BYTE PTR _playerID$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+eax*4+2092], 0

; 62   : 		m_ulIPAddress[playerID] = 0;

	movzx	eax, BYTE PTR _playerID$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+eax*4+1684], 0

; 63   : 
; 64   : 		return TRUE;

	mov	eax, 1
	jmp	SHORT $LN3@New

; 65   : 	}
; 66   : 	else

	jmp	SHORT $LN3@New
$LN2@New:

; 67   : 	{
; 68   : 		return FALSE;

	xor	eax, eax
$LN3@New:

; 69   : 	}
; 70   : }

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
	ret	8
_TEXT	ENDS
;	COMDAT text$x
text$x	SEGMENT
__unwindfunclet$?New@CPlayerManager@@QAEHEPAD@Z$0:
	mov	eax, DWORD PTR $T209373[ebp]
	push	eax
	call	??3@YAXPAX@Z				; operator delete
	pop	ecx
	ret	0
__ehhandler$?New@CPlayerManager@@QAEHEPAD@Z:
	mov	edx, DWORD PTR [esp+8]
	lea	eax, DWORD PTR [edx+12]
	mov	ecx, DWORD PTR [edx-248]
	xor	ecx, eax
	call	@__security_check_cookie@4
	mov	eax, OFFSET __ehfuncinfo$?New@CPlayerManager@@QAEHEPAD@Z
	jmp	___CxxFrameHandler3
text$x	ENDS
?New@CPlayerManager@@QAEHEPAD@Z ENDP			; CPlayerManager::New
PUBLIC	??_GCRemotePlayer@@QAEPAXI@Z			; CRemotePlayer::`scalar deleting destructor'
PUBLIC	?GetSlotState@CPlayerManager@@QAEHE@Z		; CPlayerManager::GetSlotState
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ?Delete@CPlayerManager@@QAEHEE@Z
_TEXT	SEGMENT
tv84 = -232						; size = 4
$T209385 = -224						; size = 4
$T209386 = -212						; size = 4
_this$ = -8						; size = 4
_playerID$ = 8						; size = 1
_byteReason$ = 12					; size = 1
?Delete@CPlayerManager@@QAEHEE@Z PROC			; CPlayerManager::Delete, COMDAT
; _this$ = ecx

; 75   : {

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

; 76   : 	if(!GetSlotState(playerID) || !m_pPlayers[playerID]) {

	movzx	eax, BYTE PTR _playerID$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?GetSlotState@CPlayerManager@@QAEHE@Z	; CPlayerManager::GetSlotState
	test	eax, eax
	je	SHORT $LN1@Delete
	movzx	eax, BYTE PTR _playerID$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [ecx+eax*4+208], 0
	jne	SHORT $LN2@Delete
$LN1@Delete:

; 77   : 		return FALSE;

	xor	eax, eax
	jmp	SHORT $LN3@Delete
$LN2@Delete:

; 78   : 	}
; 79   : 
; 80   : 	m_bPlayerSlotState[playerID] = FALSE;

	movzx	eax, BYTE PTR _playerID$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+eax*4], 0

; 81   : 	delete m_pPlayers[playerID];

	movzx	eax, BYTE PTR _playerID$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4+208]
	mov	DWORD PTR $T209386[ebp], edx
	mov	eax, DWORD PTR $T209386[ebp]
	mov	DWORD PTR $T209385[ebp], eax
	cmp	DWORD PTR $T209385[ebp], 0
	je	SHORT $LN5@Delete
	push	1
	mov	ecx, DWORD PTR $T209385[ebp]
	call	??_GCRemotePlayer@@QAEPAXI@Z
	mov	DWORD PTR tv84[ebp], eax
	jmp	SHORT $LN6@Delete
$LN5@Delete:
	mov	DWORD PTR tv84[ebp], 0
$LN6@Delete:

; 82   : 	m_pPlayers[playerID] = NULL;

	movzx	eax, BYTE PTR _playerID$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+eax*4+208], 0

; 83   : 
; 84   : 
; 85   : 	return TRUE;

	mov	eax, 1
$LN3@Delete:

; 86   : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 232				; 000000e8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	8
?Delete@CPlayerManager@@QAEHEE@Z ENDP			; CPlayerManager::Delete
_TEXT	ENDS
EXTRN	??1CRemotePlayer@@QAE@XZ:PROC			; CRemotePlayer::~CRemotePlayer
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ??_GCRemotePlayer@@QAEPAXI@Z
_TEXT	SEGMENT
_this$ = -8						; size = 4
___flags$ = 8						; size = 4
??_GCRemotePlayer@@QAEPAXI@Z PROC			; CRemotePlayer::`scalar deleting destructor', COMDAT
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
	call	??1CRemotePlayer@@QAE@XZ		; CRemotePlayer::~CRemotePlayer
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	je	SHORT $LN1@scalar@2
	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$LN1@scalar@2:
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
??_GCRemotePlayer@@QAEPAXI@Z ENDP			; CRemotePlayer::`scalar deleting destructor'
_TEXT	ENDS
PUBLIC	?Process@CPlayerManager@@QAEHXZ			; CPlayerManager::Process
EXTRN	?Process@CRemotePlayer@@QAEXXZ:PROC		; CRemotePlayer::Process
EXTRN	?Process@CLocalPlayer@@QAEHXZ:PROC		; CLocalPlayer::Process
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ?Process@CPlayerManager@@QAEHXZ
_TEXT	SEGMENT
_i$209300 = -17						; size = 1
_this$ = -8						; size = 4
?Process@CPlayerManager@@QAEHXZ PROC			; CPlayerManager::Process, COMDAT
; _this$ = ecx

; 91   : {

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

; 92   : 	m_pLocalPlayer->Process();

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+200]
	call	?Process@CLocalPlayer@@QAEHXZ		; CLocalPlayer::Process

; 93   : 
; 94   : 	for(BYTE i = 0; i < MAX_PLAYERS; i++) {

	mov	BYTE PTR _i$209300[ebp], 0
	jmp	SHORT $LN4@Process
$LN3@Process:
	mov	al, BYTE PTR _i$209300[ebp]
	add	al, 1
	mov	BYTE PTR _i$209300[ebp], al
$LN4@Process:
	movzx	eax, BYTE PTR _i$209300[ebp]
	cmp	eax, 50					; 00000032H
	jge	SHORT $LN2@Process

; 95   : 		if(m_bPlayerSlotState[i]) {

	movzx	eax, BYTE PTR _i$209300[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [ecx+eax*4], 0
	je	SHORT $LN1@Process

; 96   : 			m_pPlayers[i]->Process();

	movzx	eax, BYTE PTR _i$209300[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+eax*4+208]
	call	?Process@CRemotePlayer@@QAEXXZ		; CRemotePlayer::Process
$LN1@Process:

; 97   : 		}
; 98   : 	}

	jmp	SHORT $LN3@Process
$LN2@Process:

; 99   : 
; 100  : 	return TRUE;

	mov	eax, 1

; 101  : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?Process@CPlayerManager@@QAEHXZ ENDP			; CPlayerManager::Process
_TEXT	ENDS
PUBLIC	?GetID@CRemotePlayer@@QAEEXZ			; CRemotePlayer::GetID
PUBLIC	?GetPlayerPed@CRemotePlayer@@QAEPAVCPlayerPed@@XZ ; CRemotePlayer::GetPlayerPed
PUBLIC	?FindPlayerIDFromGtaPtr@CPlayerManager@@QAEEPAU_PED_TYPE@@@Z ; CPlayerManager::FindPlayerIDFromGtaPtr
EXTRN	?GetPed@CPlayerPed@@QAEPAU_PED_TYPE@@XZ:PROC	; CPlayerPed::GetPed
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ?FindPlayerIDFromGtaPtr@CPlayerManager@@QAEEPAU_PED_TYPE@@@Z
_TEXT	SEGMENT
_pTestActor$209316 = -44				; size = 4
_pPlayerPed$209314 = -32				; size = 4
_i$209309 = -17						; size = 1
_this$ = -8						; size = 4
_pActor$ = 8						; size = 4
?FindPlayerIDFromGtaPtr@CPlayerManager@@QAEEPAU_PED_TYPE@@@Z PROC ; CPlayerManager::FindPlayerIDFromGtaPtr, COMDAT
; _this$ = ecx

; 106  : {

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

; 107  : 	for(EntityId i = 0; i < MAX_PLAYERS; i++)

	mov	BYTE PTR _i$209309[ebp], 0
	jmp	SHORT $LN6@FindPlayer
$LN5@FindPlayer:
	mov	al, BYTE PTR _i$209309[ebp]
	add	al, 1
	mov	BYTE PTR _i$209309[ebp], al
$LN6@FindPlayer:
	movzx	eax, BYTE PTR _i$209309[ebp]
	cmp	eax, 50					; 00000032H
	jge	SHORT $LN4@FindPlayer

; 108  : 	{
; 109  : 		if(m_bPlayerSlotState[i])

	movzx	eax, BYTE PTR _i$209309[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [ecx+eax*4], 0
	je	SHORT $LN3@FindPlayer

; 110  : 		{
; 111  : 			CPlayerPed * pPlayerPed = m_pPlayers[i]->GetPlayerPed();

	movzx	eax, BYTE PTR _i$209309[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+eax*4+208]
	call	?GetPlayerPed@CRemotePlayer@@QAEPAVCPlayerPed@@XZ ; CRemotePlayer::GetPlayerPed
	mov	DWORD PTR _pPlayerPed$209314[ebp], eax

; 112  : 
; 113  : 			if(pPlayerPed)

	cmp	DWORD PTR _pPlayerPed$209314[ebp], 0
	je	SHORT $LN3@FindPlayer

; 114  : 			{
; 115  : 				PED_TYPE * pTestActor = pPlayerPed->GetPed();

	mov	ecx, DWORD PTR _pPlayerPed$209314[ebp]
	call	?GetPed@CPlayerPed@@QAEPAU_PED_TYPE@@XZ	; CPlayerPed::GetPed
	mov	DWORD PTR _pTestActor$209316[ebp], eax

; 116  : 
; 117  : 				if((pTestActor != NULL) && (pActor == pTestActor)) // found it

	cmp	DWORD PTR _pTestActor$209316[ebp], 0
	je	SHORT $LN3@FindPlayer
	mov	eax, DWORD PTR _pActor$[ebp]
	cmp	eax, DWORD PTR _pTestActor$209316[ebp]
	jne	SHORT $LN3@FindPlayer

; 118  : 				{
; 119  : 					return m_pPlayers[i]->GetID();

	movzx	eax, BYTE PTR _i$209309[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+eax*4+208]
	call	?GetID@CRemotePlayer@@QAEEXZ		; CRemotePlayer::GetID
	jmp	SHORT $LN7@FindPlayer
$LN3@FindPlayer:

; 120  : 				}
; 121  : 			}
; 122  : 		}
; 123  : 	}

	jmp	SHORT $LN5@FindPlayer
$LN4@FindPlayer:

; 124  : 
; 125  : 	return INVALID_ENTITY_ID;

	or	al, 255					; 000000ffH
$LN7@FindPlayer:

; 126  : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 240				; 000000f0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
?FindPlayerIDFromGtaPtr@CPlayerManager@@QAEEPAU_PED_TYPE@@@Z ENDP ; CPlayerManager::FindPlayerIDFromGtaPtr
; Function compile flags: /Odtp /RTCsu /ZI
; File d:\vice-players-master\client\net\clocalplayer.h
_TEXT	ENDS
;	COMDAT ??1CLocalPlayer@@QAE@XZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
??1CLocalPlayer@@QAE@XZ PROC				; CLocalPlayer::~CLocalPlayer, COMDAT
; _this$ = ecx

; 74   : 	~CLocalPlayer(){};

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
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
??1CLocalPlayer@@QAE@XZ ENDP				; CLocalPlayer::~CLocalPlayer
; Function compile flags: /Odtp /RTCsu /ZI
; File d:\vice-players-master\client\net\cremoteplayer.h
_TEXT	ENDS
;	COMDAT ?SetID@CRemotePlayer@@QAEXE@Z
_TEXT	SEGMENT
_this$ = -8						; size = 4
_playerID$ = 8						; size = 1
?SetID@CRemotePlayer@@QAEXE@Z PROC			; CRemotePlayer::SetID, COMDAT
; _this$ = ecx

; 76   : 	void SetID(EntityId playerID) { m_playerID = playerID; };

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
	mov	cl, BYTE PTR _playerID$[ebp]
	mov	BYTE PTR [eax+4], cl
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
?SetID@CRemotePlayer@@QAEXE@Z ENDP			; CRemotePlayer::SetID
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT ?GetID@CRemotePlayer@@QAEEXZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
?GetID@CRemotePlayer@@QAEEXZ PROC			; CRemotePlayer::GetID, COMDAT
; _this$ = ecx

; 77   : 	EntityId GetID() { return m_playerID; };

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
	mov	al, BYTE PTR [eax+4]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?GetID@CRemotePlayer@@QAEEXZ ENDP			; CRemotePlayer::GetID
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT ?GetPlayerPed@CRemotePlayer@@QAEPAVCPlayerPed@@XZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
?GetPlayerPed@CRemotePlayer@@QAEPAVCPlayerPed@@XZ PROC	; CRemotePlayer::GetPlayerPed, COMDAT
; _this$ = ecx

; 80   : 	CPlayerPed * GetPlayerPed() { return m_pPlayerPed; };

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
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?GetPlayerPed@CRemotePlayer@@QAEPAVCPlayerPed@@XZ ENDP	; CRemotePlayer::GetPlayerPed
; Function compile flags: /Odtp /RTCsu /ZI
; File d:\vice-players-master\client\net\cplayermanager.h
_TEXT	ENDS
;	COMDAT ?GetSlotState@CPlayerManager@@QAEHE@Z
_TEXT	SEGMENT
_this$ = -8						; size = 4
_playerID$ = 8						; size = 1
?GetSlotState@CPlayerManager@@QAEHE@Z PROC		; CPlayerManager::GetSlotState, COMDAT
; _this$ = ecx

; 50   : 	BOOL GetSlotState(EntityId playerID) {

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

; 51   : 		if(playerID > MAX_PLAYERS) { return FALSE; }

	movzx	eax, BYTE PTR _playerID$[ebp]
	cmp	eax, 50					; 00000032H
	jle	SHORT $LN1@GetSlotSta
	xor	eax, eax
	jmp	SHORT $LN2@GetSlotSta
$LN1@GetSlotSta:

; 52   : 		return m_bPlayerSlotState[playerID];

	movzx	eax, BYTE PTR _playerID$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [ecx+eax*4]
$LN2@GetSlotSta:

; 53   : 	};

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
?GetSlotState@CPlayerManager@@QAEHE@Z ENDP		; CPlayerManager::GetSlotState
_TEXT	ENDS
END
