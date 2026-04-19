# Notepad++ 8.9.3 PSADT v4 Deployment Script
# =============================================
# Variables
$appVendor = 'Notepad++'
$appName = 'Notepad++'
$appVersion = '8.9.3'
$appArch = 'x64'
$appLang = 'EN'

# PRE-INSTALLATION
Show-ADTInstallationWelcome -CloseProcesses 'notepad++' -AllowDefer -DeferTimes 3 -CheckDiskSpace -PersistPrompt

# INSTALLATION
Start-ADTProcess -FilePath "$($adtSession.DirFiles)\npp.8.9.3.Installer.x64.exe" -ArgumentList '/S' -WindowStyle 'Hidden' -WaitForMsiExec

# POST-INSTALLATION
If (Test-Path -Path "$envProgramFiles\Notepad++\notepad++.exe") {
    Write-ADTLogEntry -Message "Notepad++ installed successfully"
} Else {
    Write-ADTLogEntry -Message "Notepad++ installation may have failed" -Severity 3
}

# UNINSTALLATION
Start-ADTProcess -FilePath "$envProgramFiles\Notepad++\uninstall.exe" -ArgumentList '/S' -WindowStyle 'Hidden' -WaitForMsiExec
