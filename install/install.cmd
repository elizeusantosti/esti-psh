Powershell.exe -executionpolicy unrestricted $install = Invoke-WebRequest https://raw.githubusercontent.com/bredsan/ESTI/main/install/install.ps1;Invoke-Expression $($install.Content)
