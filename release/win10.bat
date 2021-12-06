cd /D "%~dp0"

powershell "Set-ExecutionPolicy -Scope LocalMachine -ExecutionPolicy Unrestricted -Force"

:: run filesystem diff script
call "../windows/files/find-winser2016.bat"
cd /D "%~dp0"

:: run CIS-compliant script
powershell "../windows/cis/winser2019/setup.ps1"
cd /D "%~dp0"

mkdir "../results"
powershell "Get-Childitem -Recurse -Exclude ./results .. -filter *.txt | Copy-Item -Destination ../results -ErrorAction 'SilentlyContinue'"