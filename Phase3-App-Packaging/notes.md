# Phase 3 Notes

## 7-Zip (MSI Method)
- Version: 26.00
- Installer: 7z2600-x64.msi
- Silent install: msiexec /i "7z2600-x64.msi" /qn /norestart
- Silent uninstall: msiexec /x "7z2600-x64.msi" /qn /norestart
- Detection: MSI Product Code (from installer)
- SCCM Deployment Type: Script Installer

## Notepad++ (PSADT v4 Method)
- Version: 8.9.3
- Installer: npp.8.9.3.Installer.x64.exe
- Silent switch: /S
- Detection: File exists C:\Program Files\Notepad++\notepad++.exe (version >= 8.9.3)
- PSADT features used: CloseProcesses, AllowDefer, CheckDiskSpace, PersistPrompt
- SCCM install command: Invoke-AppDeployToolkit.exe -DeploymentType "Install" -DeployMode "Silent"
- SCCM uninstall command: Invoke-AppDeployToolkit.exe -DeploymentType "Uninstall" -DeployMode "Silent"

## Key Learnings
- MSI files use msiexec for silent install/uninstall (/qn = quiet no UI)
- EXE installers have their own silent switches (varies per app — Notepad++ uses /S)
- PSADT adds enterprise features: app closure prompts, deferrals, logging
- Detection methods: MSI product code for MSIs, file system checks for EXEs
- Content must be distributed to DPs before deployment
- UNC paths (\\server\share) are required — SCCM accesses content over the network
- PSADT v4 uses Invoke-AppDeployToolkit.ps1 (v3 used Deploy-Application.ps1)
# Phase 3 Notes - Application Packaging

## What Went Well
- 7-Zip MSI packaging straightforward
- PSADT v4 template scaffolded correctly
- Local testing of PSADT package succeeded

## Issues Encountered
- PSADT v4 has different structure than v3 (Invoke-AppDeployToolkit.ps1 vs Deploy-Application.ps1)
- Had to use Install-Module to get proper v4 template
- UNC paths required for SCCM content location (not local paths)

## Key Takeaways
- Always test silent install locally before putting in SCCM
- MSI product codes are found in the installer or registry after install
- PSADT adds professional features beyond basic silent install
- UNC paths are required because SCCM accesses content over the network
