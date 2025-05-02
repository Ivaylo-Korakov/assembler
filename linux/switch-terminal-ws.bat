@echo off

rem Get the workspaces and store in variable
for /f "tokens=*" %%a in ('glazewm.exe query workspaces') do set "workspaces=%%a"

rem Create a temporary file with the JSON data
echo %workspaces% > temp.json

rem Extract focused workspace name using PowerShell
for /f "tokens=*" %%a in ('powershell -command "$json = Get-Content -Raw temp.json; $obj = ConvertFrom-Json $json; ($obj.data.workspaces | Where-Object { $_.hasFocus -eq $true }).displayName"') do set "focusedWorkspace=%%a"

rem Clean up the temporary file
del temp.json

rem Check if focused workspace is TERMINAL
if "%focusedWorkspace%"=="TERMINAL" (
    glazewm.exe command focus --recent-workspace
) else (
    glazewm.exe command focus --workspace 9
)
