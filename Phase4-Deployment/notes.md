# Phase 4 Notes - Deployment

## What Went Well
- Required deployment of 7-Zip installed automatically
- Available deployment of Notepad++ appeared in Software Center
- Uninstall deployment worked correctly

## Issues Encountered
- 7-Zip detection method failed initially (wrong product code)
- Fixed by looking up actual product code in registry on CLIENT01
- Notepad++ PSADT returned exit code 60001 (added as success return code)
- Compliance status slow to update in console (normal for small labs)
- Can't deploy install and uninstall to same collection simultaneously

## Key Takeaways
- Detection methods must match exactly what's installed
- AppEnforce.log is the first log to check for deployment failures
- Always verify on the client, don't just trust the console status
- TriggerSchedule commands speed up testing significantly
- Delete existing deployment before creating opposite action to same collection
