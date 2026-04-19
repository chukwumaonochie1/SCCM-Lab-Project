# Phase 2 Notes - SQL & SCCM Install

## What Went Well
- SQL Server installed with correct collation
- AD schema extension succeeded
- Prerequisites passed on first check

## Issues Encountered
- SCCM install failed on Asset Intelligence data import (NULL values in VersionCode column)
- Fixed by running ALTER TABLE to allow NULLs during install
- Had to uninstall and reinstall SCCM twice before resolving
- SSMS certificate trust issue (fixed by checking Trust Server Certificate)
- Logged in with local account instead of domain account initially

## Key Takeaways
- SQL collation (SQL_Latin1_General_CP1_CI_AS) is non-negotiable
- Always log in with domain accounts on domain-joined servers
- SCCM setup logs at C:\ConfigMgrSetup.log are essential for troubleshooting
- Known bugs exist — being able to diagnose and work around them is a real skill
