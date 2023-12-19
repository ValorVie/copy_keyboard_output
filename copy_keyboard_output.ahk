#Requires AutoHotkey v2.0
; 監聽 alt+1 的快捷鍵
!1::{
    SetKeyDelay 50
    clipboardBackup := A_Clipboard  ; 儲存當前剪貼簿內容
    modifiedClipboard := StrReplace(clipboardBackup, "`r`n", "`n")  ; 替換換行符
    A_Clipboard := modifiedClipboard  ; 使用修改後剪貼簿內容
    Send "{Alt down}{Tab}"
    Sleep(500)
    Send "{Alt up}"
    Sleep(1000)
    SendEvent "{Raw}" A_Clipboard  ; 模擬鍵盤輸入剪貼簿內容
    clipboardBackup := ""
}