; Listing generated by Microsoft (R) Optimizing Compiler Version 15.00.30729.01 

	TITLE	d:\vice-players-master\Client\game\scripting.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

PUBLIC	?gst@@3UGAME_SCRIPT_THREAD@@A			; gst
PUBLIC	?ScriptBuf@@3PAEA				; ScriptBuf
PUBLIC	?ScriptVars@@3PAKA				; ScriptVars
PUBLIC	?SCRIPT_BASE@@3KA				; SCRIPT_BASE
_BSS	SEGMENT
?gst@@3UGAME_SCRIPT_THREAD@@A DB 088H DUP (?)		; gst
?ScriptBuf@@3PAEA DB 0ffH DUP (?)			; ScriptBuf
	ALIGN	4

?ScriptVars@@3PAKA DD 010H DUP (?)			; ScriptVars
_BSS	ENDS
_DATA	SEGMENT
?SCRIPT_BASE@@3KA DD 0821280H				; SCRIPT_BASE
_DATA	ENDS
CONST	SEGMENT
_ProcessOneCommand DD 044fbe0H
CONST	ENDS
PUBLIC	?ExecuteScriptBuf@@YAHXZ			; ExecuteScriptBuf
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File d:\vice-players-master\client\game\scripting.cpp
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT ?ExecuteScriptBuf@@YAHXZ
_TEXT	SEGMENT
?ExecuteScriptBuf@@YAHXZ PROC				; ExecuteScriptBuf, COMDAT

; 37   : 	__asm
; 38   : 	{
; 39   : 		//int 4						// SoftICE Debugging - bpint4.
; 40   : 		mov ecx, OFFSET ScriptBuf	// Move our script buffer base into ecx.

	mov	ecx, OFFSET ?ScriptBuf@@3PAEA

; 41   : 		sub ecx, SCRIPT_BASE		// Subtract usual script base.

	sub	ecx, DWORD PTR ?SCRIPT_BASE@@3KA	; SCRIPT_BASE

; 42   : 		mov gst.dwScriptIP, ecx		// Move ecx into the GAME_SCRIPT_THREAD structure.

	mov	DWORD PTR ?gst@@3UGAME_SCRIPT_THREAD@@A+16, ecx

; 43   : 
; 44   : 		mov ecx, OFFSET gst			// Move offset of our GAME_SCRIPT_THREAD structure into ecx.

	mov	ecx, OFFSET ?gst@@3UGAME_SCRIPT_THREAD@@A

; 45   : 		call ProcessOneCommand		// Call the game's script opcode processor.

	call	DWORD PTR _ProcessOneCommand

; 46   : 		xor eax, eax				// eax = 0.

	xor	eax, eax

; 47   : 		mov al, gst.bJumpFlag		// Move the jumpflag into al (return value).

	mov	al, BYTE PTR ?gst@@3UGAME_SCRIPT_THREAD@@A+121

; 48   : 		ret							// return.

	ret	0
?ExecuteScriptBuf@@YAHXZ ENDP				; ExecuteScriptBuf
_TEXT	ENDS
PUBLIC	__$ArrayPad$
PUBLIC	?ScriptCommand@@YAHPBUSCRIPT_COMMAND@@ZZ	; ScriptCommand
EXTRN	_strncpy:PROC
EXTRN	_memset:PROC
EXTRN	_memcpy:PROC
EXTRN	___security_cookie:DWORD
EXTRN	__fltused:DWORD
EXTRN	__RTC_CheckEsp:PROC
EXTRN	@__security_check_cookie@4:PROC
EXTRN	@_RTC_CheckStackVars@8:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ?ScriptCommand@@YAHPBUSCRIPT_COMMAND@@ZZ
_TEXT	SEGMENT
tv179 = -396						; size = 4
tv72 = -396						; size = 4
_ScriptVar$209360 = -196				; size = 4
_v$209352 = -184					; size = 4
_result$209323 = -172					; size = 4
_s2$209320 = -160					; size = 8
_s1$209312 = -144					; size = 4
_ScriptVar$209309 = -132				; size = 4
_var_offs$209308 = -120					; size = 2
_v$209300 = -108					; size = 4
_f$209290 = -96						; size = 4
_sh$209286 = -84					; size = 2
_ch$209282 = -69					; size = 1
_i$209273 = -60						; size = 4
_var_pos$ = -48						; size = 4
_buf_pos$ = -36						; size = 4
_p$ = -24						; size = 4
_ap$ = -12						; size = 4
__$ArrayPad$ = -4					; size = 4
_ScriptCommand$ = 8					; size = 4
?ScriptCommand@@YAHPBUSCRIPT_COMMAND@@ZZ PROC		; ScriptCommand, COMDAT

; 73   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 396				; 0000018cH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-396]
	mov	ecx, 99					; 00000063H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax

; 74   : 	va_list ap;
; 75   : 	const char* p = ScriptCommand->Params;			// Get parameter string.

	mov	eax, DWORD PTR _ScriptCommand$[ebp]
	add	eax, 2
	mov	DWORD PTR _p$[ebp], eax

; 76   : 	va_start(ap, ScriptCommand);					// Start varargs at ScriptCommand.

	lea	eax, DWORD PTR _ScriptCommand$[ebp+4]
	mov	DWORD PTR _ap$[ebp], eax

; 77   : 	memcpy(&ScriptBuf, &ScriptCommand->OpCode, 2);	// Copy opcode to script buf.

	push	2
	mov	eax, DWORD PTR _ScriptCommand$[ebp]
	push	eax
	push	OFFSET ?ScriptBuf@@3PAEA		; ScriptBuf
	call	_memcpy
	add	esp, 12					; 0000000cH

; 78   : 	int buf_pos = 2;	// Position in buffer after opcode.

	mov	DWORD PTR _buf_pos$[ebp], 2

; 79   : 	int var_pos = 0;	// Init var_pos.

	mov	DWORD PTR _var_pos$[ebp], 0
$LN22@ScriptComm:

; 80   : 
; 81   : 	while(*p)			// While we've not ran out of parameters...

	mov	eax, DWORD PTR _p$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	$LN21@ScriptComm

; 82   : 	{
; 83   : 		switch(*p)		// Switch current parameter.

	mov	eax, DWORD PTR _p$[ebp]
	movsx	ecx, BYTE PTR [eax]
	mov	DWORD PTR tv72[ebp], ecx
	mov	edx, DWORD PTR tv72[ebp]
	sub	edx, 102				; 00000066H
	mov	DWORD PTR tv72[ebp], edx
	cmp	DWORD PTR tv72[ebp], 16			; 00000010H
	ja	$LN19@ScriptComm
	mov	eax, DWORD PTR tv72[ebp]
	movzx	ecx, BYTE PTR $LN25@ScriptComm[eax]
	jmp	DWORD PTR $LN34@ScriptComm[ecx*4]
$LN18@ScriptComm:

; 84   : 		{
; 85   : 			case 'i':	// If integer...
; 86   : 			{
; 87   : 				long i = va_arg(ap, long);		// Grab an int off the stack.

	mov	eax, DWORD PTR _ap$[ebp]
	add	eax, 4
	mov	DWORD PTR _ap$[ebp], eax
	mov	ecx, DWORD PTR _ap$[ebp]
	mov	edx, DWORD PTR [ecx-4]
	mov	DWORD PTR _i$209273[ebp], edx

; 88   : 				if ((i >= -128) && (i <= 127))	// If it's in range of a char...

	cmp	DWORD PTR _i$209273[ebp], -128		; ffffff80H
	jl	SHORT $LN17@ScriptComm
	cmp	DWORD PTR _i$209273[ebp], 127		; 0000007fH
	jg	SHORT $LN17@ScriptComm

; 89   : 				{
; 90   : 					char ch = (char)i;			// Typecast to char.

	mov	al, BYTE PTR _i$209273[ebp]
	mov	BYTE PTR _ch$209282[ebp], al

; 91   : 					ScriptBuf[buf_pos] = 0x04;	// Variable data type = 0x04 (1b int).

	mov	eax, DWORD PTR _buf_pos$[ebp]
	mov	BYTE PTR ?ScriptBuf@@3PAEA[eax], 4

; 92   : 					buf_pos++;					// Increment buffer position.

	mov	eax, DWORD PTR _buf_pos$[ebp]
	add	eax, 1
	mov	DWORD PTR _buf_pos$[ebp], eax

; 93   : 					ScriptBuf[buf_pos] = ch;	// Insert the char.

	mov	eax, DWORD PTR _buf_pos$[ebp]
	mov	cl, BYTE PTR _ch$209282[ebp]
	mov	BYTE PTR ?ScriptBuf@@3PAEA[eax], cl

; 94   : 					buf_pos++;					// Increment buffer position.

	mov	eax, DWORD PTR _buf_pos$[ebp]
	add	eax, 1
	mov	DWORD PTR _buf_pos$[ebp], eax
	jmp	$LN14@ScriptComm
$LN17@ScriptComm:

; 95   : 				}
; 96   : 				else if ((i >= -32768) && (i <= 32767))	// If it's in range of a short...

	cmp	DWORD PTR _i$209273[ebp], -32768	; ffff8000H
	jl	SHORT $LN15@ScriptComm
	cmp	DWORD PTR _i$209273[ebp], 32767		; 00007fffH
	jg	SHORT $LN15@ScriptComm

; 97   : 				{
; 98   : 					short sh = (short)i;				// Typecast to short.

	mov	ax, WORD PTR _i$209273[ebp]
	mov	WORD PTR _sh$209286[ebp], ax

; 99   : 					ScriptBuf[buf_pos] = 0x05;			// Variable data type = 0x05 (2b int).

	mov	eax, DWORD PTR _buf_pos$[ebp]
	mov	BYTE PTR ?ScriptBuf@@3PAEA[eax], 5

; 100  : 					buf_pos++;							// Increment buffer position.

	mov	eax, DWORD PTR _buf_pos$[ebp]
	add	eax, 1
	mov	DWORD PTR _buf_pos$[ebp], eax

; 101  : 					memcpy(&ScriptBuf[buf_pos], &sh, 2);// Insert the short.

	push	2
	lea	eax, DWORD PTR _sh$209286[ebp]
	push	eax
	mov	ecx, DWORD PTR _buf_pos$[ebp]
	add	ecx, OFFSET ?ScriptBuf@@3PAEA		; ScriptBuf
	push	ecx
	call	_memcpy
	add	esp, 12					; 0000000cH

; 102  : 					buf_pos += 2;						// Increment buffer by 2b.

	mov	eax, DWORD PTR _buf_pos$[ebp]
	add	eax, 2
	mov	DWORD PTR _buf_pos$[ebp], eax

; 103  : 				}
; 104  : 				else									// Else it must be a 4b int.

	jmp	SHORT $LN14@ScriptComm
$LN15@ScriptComm:

; 105  : 				{
; 106  : 					ScriptBuf[buf_pos] = 0x01;			// Variable data type = 0x01 (4b int).

	mov	eax, DWORD PTR _buf_pos$[ebp]
	mov	BYTE PTR ?ScriptBuf@@3PAEA[eax], 1

; 107  : 					buf_pos++;;							// Increment buffer position.

	mov	eax, DWORD PTR _buf_pos$[ebp]
	add	eax, 1
	mov	DWORD PTR _buf_pos$[ebp], eax

; 108  : 					memcpy(&ScriptBuf[buf_pos], &i, 4);	// Insert the int.

	push	4
	lea	eax, DWORD PTR _i$209273[ebp]
	push	eax
	mov	ecx, DWORD PTR _buf_pos$[ebp]
	add	ecx, OFFSET ?ScriptBuf@@3PAEA		; ScriptBuf
	push	ecx
	call	_memcpy
	add	esp, 12					; 0000000cH

; 109  : 					buf_pos += 4;						// Increment buffer by 4b.

	mov	eax, DWORD PTR _buf_pos$[ebp]
	add	eax, 4
	mov	DWORD PTR _buf_pos$[ebp], eax
$LN14@ScriptComm:

; 110  : 				}
; 111  : 				break;

	jmp	$LN19@ScriptComm
$LN13@ScriptComm:

; 112  : 			}
; 113  : 			case 'f':	// If float...
; 114  : 			{
; 115  : 				/*	Take note, MSVC++ puts a double on the stack
; 116  : 					even if you typecase as a float. <3 Microsoft.	*/
; 117  : 
; 118  : 				float f = (float)va_arg(ap, double);	// Get float off the stack.

	mov	eax, DWORD PTR _ap$[ebp]
	add	eax, 8
	mov	DWORD PTR _ap$[ebp], eax
	mov	ecx, DWORD PTR _ap$[ebp]
	fld	QWORD PTR [ecx-8]
	fstp	DWORD PTR _f$209290[ebp]

; 119  : 				ScriptBuf[buf_pos] = 0x06;				// Variable data type = 0x06 (float).

	mov	eax, DWORD PTR _buf_pos$[ebp]
	mov	BYTE PTR ?ScriptBuf@@3PAEA[eax], 6

; 120  : 				buf_pos++;								// Increment buffer position.

	mov	eax, DWORD PTR _buf_pos$[ebp]
	add	eax, 1
	mov	DWORD PTR _buf_pos$[ebp], eax

; 121  : 				memcpy(&ScriptBuf[buf_pos], &f, 4);		// Copy float into script buf.

	push	4
	lea	eax, DWORD PTR _f$209290[ebp]
	push	eax
	mov	ecx, DWORD PTR _buf_pos$[ebp]
	add	ecx, OFFSET ?ScriptBuf@@3PAEA		; ScriptBuf
	push	ecx
	call	_memcpy
	add	esp, 12					; 0000000cH

; 122  : 				buf_pos += 4;							// Increment buffer by 4b.

	mov	eax, DWORD PTR _buf_pos$[ebp]
	add	eax, 4
	mov	DWORD PTR _buf_pos$[ebp], eax

; 123  : 				break;

	jmp	$LN19@ScriptComm
$LN12@ScriptComm:

; 124  : 			}
; 125  : 			case 'v':	// If variable...
; 126  : 			{
; 127  : 				DWORD* v = va_arg(ap, DWORD*);							// Get the pointer to the passed variable.

	mov	eax, DWORD PTR _ap$[ebp]
	add	eax, 4
	mov	DWORD PTR _ap$[ebp], eax
	mov	ecx, DWORD PTR _ap$[ebp]
	mov	edx, DWORD PTR [ecx-4]
	mov	DWORD PTR _v$209300[ebp], edx

; 128  : 				ScriptBuf[buf_pos] = 0x02;								// Variable data type = 0x02 (Global Var).

	mov	eax, DWORD PTR _buf_pos$[ebp]
	mov	BYTE PTR ?ScriptBuf@@3PAEA[eax], 2

; 129  : 				buf_pos++;												// Increment buffer position.

	mov	eax, DWORD PTR _buf_pos$[ebp]
	add	eax, 1
	mov	DWORD PTR _buf_pos$[ebp], eax

; 130  : 				WORD var_offs = var_pos * 4;							// Variable offset.

	mov	eax, DWORD PTR _var_pos$[ebp]
	shl	eax, 2
	mov	WORD PTR _var_offs$209308[ebp], ax

; 131  : 				DWORD* ScriptVar = (DWORD*)(SCRIPT_BASE + var_offs);	// Get pointer to variable.

	movzx	eax, WORD PTR _var_offs$209308[ebp]
	add	eax, DWORD PTR ?SCRIPT_BASE@@3KA	; SCRIPT_BASE
	mov	DWORD PTR _ScriptVar$209309[ebp], eax

; 132  : 				ScriptVars[var_pos] = *ScriptVar;						// Read out current variable there.

	mov	eax, DWORD PTR _var_pos$[ebp]
	mov	ecx, DWORD PTR _ScriptVar$209309[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR ?ScriptVars@@3PAKA[eax*4], edx

; 133  : 				*ScriptVar = *v;										// Insert our variable.

	mov	eax, DWORD PTR _ScriptVar$209309[ebp]
	mov	ecx, DWORD PTR _v$209300[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR [eax], edx

; 134  : 				memcpy(&ScriptBuf[buf_pos], &var_offs, 2);				// Copy the offset into the script.

	push	2
	lea	eax, DWORD PTR _var_offs$209308[ebp]
	push	eax
	mov	ecx, DWORD PTR _buf_pos$[ebp]
	add	ecx, OFFSET ?ScriptBuf@@3PAEA		; ScriptBuf
	push	ecx
	call	_memcpy
	add	esp, 12					; 0000000cH

; 135  : 				buf_pos += 2;											// Increment buffer by 2b.

	mov	eax, DWORD PTR _buf_pos$[ebp]
	add	eax, 2
	mov	DWORD PTR _buf_pos$[ebp], eax

; 136  : 				var_pos++;												// Increment the variable position.

	mov	eax, DWORD PTR _var_pos$[ebp]
	add	eax, 1
	mov	DWORD PTR _var_pos$[ebp], eax

; 137  : 				break;

	jmp	SHORT $LN19@ScriptComm
$LN11@ScriptComm:

; 138  : 			}
; 139  : 			case 's':	// If string...
; 140  : 			{
; 141  : 				char* s1 = va_arg(ap, char*);			// Get the pointer to the passed string.

	mov	eax, DWORD PTR _ap$[ebp]
	add	eax, 4
	mov	DWORD PTR _ap$[ebp], eax
	mov	ecx, DWORD PTR _ap$[ebp]
	mov	edx, DWORD PTR [ecx-4]
	mov	DWORD PTR _s1$209312[ebp], edx

; 142  : 				char s2[8];								// Define a new 8 char string.
; 143  : 				ZeroMemory(s2, 8);						// Zero-out the memory in new string (this needed?).

	push	8
	push	0
	lea	eax, DWORD PTR _s2$209320[ebp]
	push	eax
	call	_memset
	add	esp, 12					; 0000000cH

; 144  : 				strncpy(s2, s1, 8);						// Copy passed string to new string, max 8 chars.

	push	8
	mov	eax, DWORD PTR _s1$209312[ebp]
	push	eax
	lea	ecx, DWORD PTR _s2$209320[ebp]
	push	ecx
	call	_strncpy
	add	esp, 12					; 0000000cH

; 145  : 				memcpy(&ScriptBuf[buf_pos], s2, 8);		// Copy new string into script buf.

	push	8
	lea	eax, DWORD PTR _s2$209320[ebp]
	push	eax
	mov	ecx, DWORD PTR _buf_pos$[ebp]
	add	ecx, OFFSET ?ScriptBuf@@3PAEA		; ScriptBuf
	push	ecx
	call	_memcpy
	add	esp, 12					; 0000000cH

; 146  : 				buf_pos += 8;							// Increment buffer by 8b.

	mov	eax, DWORD PTR _buf_pos$[ebp]
	add	eax, 8
	mov	DWORD PTR _buf_pos$[ebp], eax
$LN19@ScriptComm:

; 147  : 				break;
; 148  : 			}
; 149  : 		}
; 150  : 		++p;		// Next parameter

	mov	eax, DWORD PTR _p$[ebp]
	add	eax, 1
	mov	DWORD PTR _p$[ebp], eax

; 151  : 	}

	jmp	$LN22@ScriptComm
$LN21@ScriptComm:

; 152  : 	va_end(ap);		// End varargs.

	mov	DWORD PTR _ap$[ebp], 0

; 153  : 
; 154  : 	if (var_pos)	// if we've used a variable...

	cmp	DWORD PTR _var_pos$[ebp], 0
	je	$LN10@ScriptComm

; 155  : 	{
; 156  : 		int result = ExecuteScriptBuf();	// Execute the script stub now.

	call	?ExecuteScriptBuf@@YAHXZ		; ExecuteScriptBuf
	mov	DWORD PTR _result$209323[ebp], eax

; 157  : 
; 158  : 		p = ScriptCommand->Params;		// Get the parameter string, again.

	mov	eax, DWORD PTR _ScriptCommand$[ebp]
	add	eax, 2
	mov	DWORD PTR _p$[ebp], eax

; 159  : 		va_start(ap, ScriptCommand);	// Start varargs at ScriptCommand, again.

	lea	eax, DWORD PTR _ScriptCommand$[ebp+4]
	mov	DWORD PTR _ap$[ebp], eax

; 160  : 		var_pos = 0;					// Init var_pos.

	mov	DWORD PTR _var_pos$[ebp], 0
$LN9@ScriptComm:

; 161  : 		while(*p)						// While we've not ran out of parameters...

	mov	eax, DWORD PTR _p$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	$LN8@ScriptComm

; 162  : 		{
; 163  : 			switch(*p)					// Switch current parameter.

	mov	eax, DWORD PTR _p$[ebp]
	movsx	ecx, BYTE PTR [eax]
	mov	DWORD PTR tv179[ebp], ecx
	mov	edx, DWORD PTR tv179[ebp]
	sub	edx, 102				; 00000066H
	mov	DWORD PTR tv179[ebp], edx
	cmp	DWORD PTR tv179[ebp], 16		; 00000010H
	ja	$LN6@ScriptComm
	mov	eax, DWORD PTR tv179[ebp]
	movzx	ecx, BYTE PTR $LN26@ScriptComm[eax]
	jmp	DWORD PTR $LN35@ScriptComm[ecx*4]
$LN5@ScriptComm:

; 164  : 			{
; 165  : 				case 'i':				// If integer...
; 166  : 				{
; 167  : 					va_arg(ap, long);	// Skip it.

	mov	eax, DWORD PTR _ap$[ebp]
	add	eax, 4
	mov	DWORD PTR _ap$[ebp], eax

; 168  : 					break;

	jmp	SHORT $LN6@ScriptComm
$LN4@ScriptComm:

; 169  : 				}
; 170  : 				case 'f':				// If float...
; 171  : 				{
; 172  : 					va_arg(ap, double);	// Skip it.

	mov	eax, DWORD PTR _ap$[ebp]
	add	eax, 8
	mov	DWORD PTR _ap$[ebp], eax

; 173  : 					break;

	jmp	SHORT $LN6@ScriptComm
$LN3@ScriptComm:

; 174  : 				}
; 175  : 				case 'v':				// If variable...
; 176  : 				{
; 177  : 					DWORD* v = va_arg(ap, DWORD*);							// Get passed variable pointer.

	mov	eax, DWORD PTR _ap$[ebp]
	add	eax, 4
	mov	DWORD PTR _ap$[ebp], eax
	mov	ecx, DWORD PTR _ap$[ebp]
	mov	edx, DWORD PTR [ecx-4]
	mov	DWORD PTR _v$209352[ebp], edx

; 178  : 					DWORD* ScriptVar = (DWORD*)(SCRIPT_BASE + (var_pos*4));	// Get pointer to script variable.

	mov	eax, DWORD PTR _var_pos$[ebp]
	mov	ecx, DWORD PTR ?SCRIPT_BASE@@3KA	; SCRIPT_BASE
	lea	edx, DWORD PTR [ecx+eax*4]
	mov	DWORD PTR _ScriptVar$209360[ebp], edx

; 179  : 					*v = *ScriptVar;										// Copy passed variable out of the script.

	mov	eax, DWORD PTR _v$209352[ebp]
	mov	ecx, DWORD PTR _ScriptVar$209360[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR [eax], edx

; 180  : 					*ScriptVar = ScriptVars[var_pos];						// Copy saved script variable back.

	mov	eax, DWORD PTR _ScriptVar$209360[ebp]
	mov	ecx, DWORD PTR _var_pos$[ebp]
	mov	edx, DWORD PTR ?ScriptVars@@3PAKA[ecx*4]
	mov	DWORD PTR [eax], edx

; 181  : 					var_pos++;												// Increment variable position.

	mov	eax, DWORD PTR _var_pos$[ebp]
	add	eax, 1
	mov	DWORD PTR _var_pos$[ebp], eax

; 182  : 					break;

	jmp	SHORT $LN6@ScriptComm
$LN2@ScriptComm:

; 183  : 				}
; 184  : 				case 's':				// If string...
; 185  : 				{
; 186  : 					va_arg(ap, char*);	// Skip it.

	mov	eax, DWORD PTR _ap$[ebp]
	add	eax, 4
	mov	DWORD PTR _ap$[ebp], eax
$LN6@ScriptComm:

; 187  : 					break;
; 188  : 				}
; 189  : 			}
; 190  : 			++p;		// Next parameter.

	mov	eax, DWORD PTR _p$[ebp]
	add	eax, 1
	mov	DWORD PTR _p$[ebp], eax

; 191  : 		}

	jmp	$LN9@ScriptComm
$LN8@ScriptComm:

; 192  : 		va_end(ap);		// End varargs.

	mov	DWORD PTR _ap$[ebp], 0

; 193  : 
; 194  : 		return result;	// Now we've fixed the script vars, return.

	mov	eax, DWORD PTR _result$209323[ebp]
	jmp	SHORT $LN1@ScriptComm

; 195  : 	} else {

	jmp	SHORT $LN1@ScriptComm
$LN10@ScriptComm:

; 196  : 		return ExecuteScriptBuf();	// If we didn't have any variables, just return.

	call	?ExecuteScriptBuf@@YAHXZ		; ExecuteScriptBuf
$LN1@ScriptComm:

; 197  : 	}
; 198  : }

	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN33@ScriptComm
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	add	esp, 396				; 0000018cH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	3
$LN33@ScriptComm:
	DD	5
	DD	$LN32@ScriptComm
$LN32@ScriptComm:
	DD	-60					; ffffffc4H
	DD	4
	DD	$LN27@ScriptComm
	DD	-84					; ffffffacH
	DD	2
	DD	$LN28@ScriptComm
	DD	-96					; ffffffa0H
	DD	4
	DD	$LN29@ScriptComm
	DD	-120					; ffffff88H
	DD	2
	DD	$LN30@ScriptComm
	DD	-160					; ffffff60H
	DD	8
	DD	$LN31@ScriptComm
$LN31@ScriptComm:
	DB	115					; 00000073H
	DB	50					; 00000032H
	DB	0
$LN30@ScriptComm:
	DB	118					; 00000076H
	DB	97					; 00000061H
	DB	114					; 00000072H
	DB	95					; 0000005fH
	DB	111					; 0000006fH
	DB	102					; 00000066H
	DB	102					; 00000066H
	DB	115					; 00000073H
	DB	0
$LN29@ScriptComm:
	DB	102					; 00000066H
	DB	0
$LN28@ScriptComm:
	DB	115					; 00000073H
	DB	104					; 00000068H
	DB	0
$LN27@ScriptComm:
	DB	105					; 00000069H
	DB	0
	npad	1
$LN34@ScriptComm:
	DD	$LN13@ScriptComm
	DD	$LN18@ScriptComm
	DD	$LN11@ScriptComm
	DD	$LN12@ScriptComm
	DD	$LN19@ScriptComm
$LN25@ScriptComm:
	DB	0
	DB	4
	DB	4
	DB	1
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	2
	DB	4
	DB	4
	DB	3
	npad	3
$LN35@ScriptComm:
	DD	$LN4@ScriptComm
	DD	$LN5@ScriptComm
	DD	$LN2@ScriptComm
	DD	$LN3@ScriptComm
	DD	$LN6@ScriptComm
$LN26@ScriptComm:
	DB	0
	DB	4
	DB	4
	DB	1
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	2
	DB	4
	DB	4
	DB	3
?ScriptCommand@@YAHPBUSCRIPT_COMMAND@@ZZ ENDP		; ScriptCommand
_TEXT	ENDS
END