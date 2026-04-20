# SCCM-Lab-Project


# SCCM / ConfigMgr Hands-On Lab

## Overview
A full endpoint engineering lab built in Azure to practice real-world SCCM skills:
application packaging (MSI + PSADT), deployment, and troubleshooting.

## Architecture
- **DC01** — Windows Server 2022, Active Directory + DNS
- **SCCM01** — Windows Server 2022, ConfigMgr + SQL Server
- **CLIENT01** — Windows 10/11, test endpoint

## Phases
| Phase | Status | Description |
|-------|--------|-------------|
| 1. Azure Setup | ✅ | Resource group, VNet, VMs, Active Directory |
| 2. SCCM Install | ✅ | SQL Server, ConfigMgr, site configuration |
| 3. App Packaging | ✅ | MSI packaging, PSADT scripting |
| 4. Deployment | ✅ | Application deployment to test machines |
| 5. Testing | ✅ | Verify installs, troubleshoot failures |

## Skills Demonstrated
- Microsoft Endpoint Configuration Manager (SCCM/ConfigMgr)
- Active Directory administration
- Application packaging (MSI, PSADT)
- Software deployment and troubleshooting
- Azure IaaS management










## Troubleshooting Experience

This lab wasn't smooth sailing — and that's the point. Here are real issues I encountered and resolved:

| Issue | Root Cause | Resolution |
|-------|-----------|------------|
| SCCM install failed at Asset Intelligence | NULL values in SQL table column | ALTER TABLE to allow NULLs during install |
| 7-Zip detection failed after install | Wrong MSI product code in detection method | Found correct code in client registry |
| PSADT returned error 60001 | Non-standard exit code | Added 60001 as success return code in SCCM |
| Client push failed | Firewall blocking port 445 | Enabled File and Printer Sharing on client |
| SSMS connection failed | Certificate trust issue | Enabled Trust Server Certificate |

## Key Log Files for Troubleshooting
| Log | Location | Purpose |
|-----|----------|---------|
| ConfigMgrSetup.log | C:\ConfigMgrSetup.log | SCCM installation issues |
| AppEnforce.log | C:\Windows\CCM\Logs\ | Did the installer run? Exit code? |
| AppDiscovery.log | C:\Windows\CCM\Logs\ | Detection method results |
| CAS.log | C:\Windows\CCM\Logs\ | Content download status |
| ccmsetup.log | C:\Windows\ccmsetup\Logs\ | Client agent installation |
