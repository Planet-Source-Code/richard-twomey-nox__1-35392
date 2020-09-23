Attribute VB_Name = "module"
Option Explicit

Declare Function GetSystemMenu Lib "user32" (ByVal hwnd As Long, ByVal bRevert As Long) As Long
Declare Function GetMenuItemCount Lib "user32" (ByVal hMenu As Long) As Long
Declare Function RemoveMenu Lib "user32" (ByVal hMenu As Long, ByVal nPosition As Long, ByVal wFlags As Long) As Long
Declare Function DrawMenuBar Lib "user32" (ByVal hwnd As Long) As Long
Const MF_BYPOSITION = &H400&
Const MF_REMOVE = &H1000&

Function disablexit(frm As Form)
    Dim hSysMenu As Long
    Dim nCnt As Long
    hSysMenu = GetSystemMenu(frm.hwnd, False)

    If hSysMenu Then
        nCnt = GetMenuItemCount(hSysMenu)
        If nCnt Then
            RemoveMenu hSysMenu, nCnt - 1, MF_BYPOSITION Or MF_REMOVE
            RemoveMenu hSysMenu, nCnt - 2, MF_BYPOSITION Or MF_REMOVE ' Remove the seperator
            DrawMenuBar frm.hwnd
        End If
    End If
End Function
