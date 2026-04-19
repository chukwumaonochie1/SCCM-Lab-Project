# SCCM Lab Summary

## Environment
- **Platform:** Microsoft Azure (IaaS)
- **Domain:** sccmlab.local
- **SCCM Version:** Current Branch (Evaluation)
- **SQL Server:** 2019 Evaluation

## Infrastructure
| Server | Role | OS | IP |
|--------|------|----|----|
| DC01 | Domain Controller, DNS | Windows Server 2022 | 10.0.1.4 |
| SCCM01 | ConfigMgr, SQL, DP, MP | Windows Server 2022 | 10.0.1.5 |
| CLIENT01 | Test Endpoint | Windows Server 2022 | 10.0.1.10 |

## What I Built
1. **Active Directory domain** with OUs, service accounts, and DNS
2. **SQL Server 2019** with proper collation, memory limits, and data separation
3. **SCCM Primary Site** with management point, distribution point, and client push
4. **MSI Application Package** (7-Zip) with silent install and product code detection
5. **PSADT Application Package** (Notepad++) with app closure, deferrals, and logging
6. **Required and Available deployments** with monitoring and troubleshooting

## Skills Demonstrated
- SCCM/ConfigMgr administration
- SQL Server installation and configuration
- Active Directory and DNS management
- Application packaging (MSI and PSADT)
- Software deployment and monitoring
- Troubleshooting (logs, detection methods, client connectivity)
- Azure IaaS (VM provisioning, networking, cost management)
- Documentation and technical writing

## Tools Used
- Microsoft Endpoint Configuration Manager (SCCM)
- SQL Server 2019 + SSMS
- PowerShell App Deployment Toolkit (PSADT v4)
- Active Directory Users and Computers
- ADSI Edit
- Windows ADK
- Azure Portal
- PowerShell
