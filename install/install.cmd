Powershell.exe -executionpolicy unrestricted $install = Invoke-WebRequest https://raw.githubusercontent.com/bredsan/esti/main/install/install.ps1;Invoke-Expression $($install.Content)
