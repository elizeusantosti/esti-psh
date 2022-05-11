Powershell.exe -executionpolicy unrestricted $install = Invoke-WebRequest https://raw.githubusercontent.com/bredsan/ESTI/main/organizador/download.ps1;Invoke-Expression $($install.Content)
