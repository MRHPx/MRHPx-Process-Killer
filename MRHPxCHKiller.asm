comment ~

    ±±±∞≤≤∞     ±±∞∞∞∞≤≤≤€€€€€≤∞   ±≤≤≤≤≤≤≤≤≤≤≤≤≤±∞≤∞≤≤≤≤≤∞∞                     
±€€€€€€€≤≤€€€€€€€€€€€€€€€≤≤≤≤€€€€€€€≤€€€€€€€€€€€€€€€≤€€€€€€€€€€€€    ≤€€€≤±      
±€     ≤€€±∞€€    €       ±     ±€€€              ∞≤            €€€€€€€€€€€€€€€≤ 
 €€ ±±   €€€   ±  €€ ±±±± €∞ ±±   €€∞ ±±± €€ ±±±± €€± ±±± €€ ±   ∞€∞≤€€€€€€   ∞€∞
 €€ ±±±   ∞   ±±  €€ ±±±± €∞ ±±±  ≤€  ±±± ≤€ ±±±± €€  ±±± ∞€ ±±±  €            €€
 €€ ±±±±±    ±±±  €€ ±±±± ≤€ ±±±± ±€  ±±± €€ ±±±± €€  ±±± ≤€ ±±±± €€± ±±± €±   €∞
 €€ ±      ∞ ±±±  €€ ±±±± ≤€ ±±±  ≤€  ±±±    ±±±± €€  ±±± ∞€ ±±±  €€€  ±± ±   €€ 
 €€ ± €   €± ±±±± €€ ±±±± €€ ±    €€  ±±± €€ ±±±± €€  ±±± ≤€ ±±   €€€± ±±±± ∞€€  
 €€ ± €€€€€  ±±±± €€ ±±±±    ± ≤€€€€  ±±± ≤€ ±±±± €€  ±±±       ≤€€€∞  ±±±± €€   
 €€ ± €€∞±€  ±±±± €€ ±±±± ±∞ ±   €€€  ±±± ≤€ ±±±± €€  ±±±  €≤€€€≤€€±    ±±±  €€  
 €€ ± €€∞±€  ±±±± €€ ±±±± ±€ ±±±  €€  ±±± ≤€ ±±±± €€  ±±±  €≤≤≤€ €€   €  ±±  €€  
 €€ ± €€€±€± ±±±± €€ ±±±± ≤€  ±±± €€  ±±± €€ ±±±± €€  ±±± ±€≤€€€±€± ± ∞€  ±±  €€ 
 €      €€€       ∞≤       €       €               €       ∞€ ∞€∞€±            €≤
 €€€€€€€€∞€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€   ±€€€   ±€€€€€€€€ 
                                                                   ≤€€€≤         

                          Email   : mrhpx@yahoo.com
                          Website : www.mrhpx.co.nr
                          Mobile  : (+62) 856 4960 7222

Ini adalah sebagian engine dari "MRHPx Killer Process". Selamat membaca dan berkreasi.
Semoga bermanfaat bagi semua donator dalam menambah keilmuan dan melindungi diri dari 
kejahatan cyber.

Jangan lupa selalu berbuat baik terhadap sesama.

~

.386
.model flat, stdcall
option casemap:none

;#############################################
; Windows API yang diperlukan                #
;#############################################
include		windows.inc
include		kernel32.inc
include		user32.inc
include		advapi32.inc

includelib	kernel32.lib
includelib	user32.lib
includelib	advapi32.lib


;#############################################
; Macro Kotak dialog                         #
;#############################################
CADD MACRO quoted_text
     LOCAL vname,lbl
     jmp lbl
     vname db quoted_text,0
lbl:
     EXITM <ADDR vname>
ENDM

Disinfect 	proto


.data
;#############################################
; Isi registry key run at start up           #
;#############################################
RegRun          db 'SOFTWARE\Microsoft\Windows\CurrentVersion\Run', 0 
RegValRun       db 'FUDINs', 0

;#############################################
; Isi registry key Disable Task Manager      #
;#############################################
RegTaskMgr      db 'Software\Microsoft\Windows\CurrentVersion\Policies\System', 0 
RegValTaskMgr   db 'DisableTaskMgr', 0

;#############################################
; Lokasi direktori file yang akan dihapus    #
;#############################################
DeleteFileCH    db 'C:\WINDOWS\Web\mahfudin.exe', 0


;#############################################
; Isi pesan Kotak dialog                     #
;#############################################
sJenenge      db "MRHPx 'Clurut-Hacker' Killer",13,10
                db "+==================+",13,10
                db 13,10
                db "Written in Pure Assembly 32 Bit",13,10
                db "Made in Pasuruan, East Java, Indonesia, 67162",13,10
                db "CopyPAIT ©2oo6-2o11. MRHPx aka Rizal. All rights REVERSER.",13,10
                db 13,10
                db "Web$H!t..: http://www.mrhpx.co.nr",13,10
                db "Mirror......: http://www.mrhpx.astalavista.ms",13,10
                db "Email.......: mrhpx@yahoo.com | mrhpx@binushacker.org",13,10
                db "Forum.....: http://www.forum.binushacker.net",13,10
                db 13,10
                db "Greets to all Astalavista, Null-Daze and BinusHacker people out there. No lamer were harmed in this project.. just tortured hardly..",13,10
                db 13,10
                db "Note : This tool and source code is FREE and OPEN SOURCE to All Private Donator. Just visit [http://www.mrhpx.astalavista.ms/donator] to support and join as Private Donator. I'll be happy to see you there!",13,10
                db 13,10
		db "Knowledge is Ability, Knowledge mean Glory, Knowledge for Charity",13,10
                db 13,10
                db "Special dedicated to 'My Tooth Fairy'..",0

TargetName 	db "Clurut-Hacker.exe",0 ; Nama aplikasi executable yang akan dimatikan
                                         ; dalam hal ini adalah Clurut-Hacker.exe

.data? 
StartupInfo	STARTUPINFO		<>
ProcessInfo	PROCESS_INFORMATION 	<>
hSnapshot   	HANDLE ?
ProcEnt     	PROCESSENTRY32 <?>

.code
start:
		invoke CreateToolhelp32Snapshot, TH32CS_SNAPPROCESS,0
		.IF (eax != INVALID_HANDLE_VALUE)
			mov hSnapshot,eax
			mov [ProcEnt.dwSize],SIZEOF ProcEnt
			invoke Process32First, hSnapshot,ADDR ProcEnt
			.IF (eax)
				@@:
					invoke lstrcmpi, ADDR TargetName ,ADDR [ProcEnt.szExeFile]
					.IF (eax == 0)
						invoke OpenProcess, PROCESS_TERMINATE,FALSE,[ProcEnt.th32ProcessID]
						.IF (eax)
							invoke TerminateProcess, eax,0
						.ENDIF
					.ENDIF
					invoke Process32Next, hSnapshot,ADDR ProcEnt
					test eax,eax
					jnz @B
			.ENDIF
			invoke CloseHandle, hSnapshot
		.ENDIF
invoke Disinfect ;Memanggil proses Disinfect

invoke MessageBox,NULL,ADDR sJenenge, CADD("Salam hormat dan persahabatan rekan-rekan donator.."), MB_OK or MB_ICONINFORMATION ;memanggil kotak dialog yang menampilkan pesan
invoke ExitProcess,1

Disinfect Proc
local  RegKey:dword

;###############################################
; Menghapus registry key yang telah ditentukan #
;###############################################
invoke RegOpenKeyEx, HKEY_LOCAL_MACHINE, addr RegRun, 0, KEY_ALL_ACCESS, addr RegKey
invoke RegDeleteValue, RegKey, addr RegValRun
invoke RegOpenKeyEx, HKEY_CURRENT_USER, addr RegTaskMgr, 0, KEY_ALL_ACCESS, addr RegKey
invoke RegDeleteValue, RegKey, addr RegValTaskMgr
invoke RegCloseKey, RegKey
invoke DeleteFile, addr DeleteFileCH ;Memanggil perintah menghapus file pada direktori yang telah ditentukan
ret
Disinfect endp

end start

