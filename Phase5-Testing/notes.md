# Phase 5 Notes - Testing & Verification

## What Went Well
- Verification script confirmed all components healthy
- Both 7-Zip and Notepad++ verified installed on CLIENT01
- Connectivity checks all passed (DC01, SCCM01)
- SCCM client running and assigned to LAB site

## Issues Encountered
- 7-Zip deployment showed "not detected after installation" — wrong product code in detection method
- Fixed by looking up actual product code in CLIENT01 registry using Get-ItemProperty
- Notepad++ PSADT returned exit code 60001 — added as success return code in deployment type
- Zoom installed per-user instead of per-machine — had to add /D flag to force Program Files install
- Deployment compliance stayed at 0% for a long time — normal in small lab environments

## Extra Practice Apps
- Google Chrome Enterprise (MSI) — standard msiexec deployment
- Zoom Workplace (EXE + PSADT) — learned about per-user vs per-machine installs

## Key Takeaways
- Always verify the MSI product code matches what's actually in the registry
- Test PSADT packages locally before adding to SCCM
- Some apps default to per-user installs — check install location and force per-machine when needed
- AppEnforce.log is the first place to check for deployment failures
- Detection method accuracy is critical — wrong detection = failed deployment even when the app installs fine
- Don't trust the console compliance percentage alone — always verify on the client

## Key Log Files
| Log | Location | Purpose |
|-----|----------|---------|
| AppEnforce.log | C:\Windows\CCM\Logs\ | Did the installer run? Exit code? |
| AppDiscovery.log | C:\Windows\CCM\Logs\ | Detection method results |
| CAS.log | C:\Windows\CCM\Logs\ | Content download status |
| ccmsetup.log | C:\Windows\ccmsetup\Logs\ | Client agent installation |
| ConfigMgrSetup.log | C:\ConfigMgrSetup.log | SCCM server installation |
