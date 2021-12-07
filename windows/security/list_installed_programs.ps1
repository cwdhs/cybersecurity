# print out software under 'HKEY_LOCAL_MACHINE\SOFTWARE' in the registry
Get-Item -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\* | Select-Object -Property PSChildName