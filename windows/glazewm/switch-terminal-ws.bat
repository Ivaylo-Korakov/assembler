@echo off

glazewm.exe query workspaces > temp.json

for /f "tokens=*" %%a in ('powershell -command "$json = Get-Content -Raw temp.json; $obj = ConvertFrom-Json $json; ($obj.data.workspaces | Where-Object { $_.hasFocus -eq $true }).displayName"') do set "focusedWorkspace=%%a"

echo "Focused Workspace: %focusedWorkspace%"
del temp.json

if "%focusedWorkspace%"=="TERMINAL" (
     glazewm.exe command focus --recent-workspace
 ) else (
     glazewm.exe command focus --workspace 9
 )
