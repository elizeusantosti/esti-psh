Powershell.exe -executionpolicy unrestricted $install = Invoke-WebRequest https://raw.githubusercontent.com/elizeusantosti/esti/main/install/install.ps1;Invoke-Expression $($install.Content)
