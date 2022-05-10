* Open CMD and paste this.

      Powershell.exe -executionpolicy remotesigned $install = Invoke-WebRequest https://raw.githubusercontent.com/bredsan/ESTI/main/automated-installations/automate.ps1;Invoke-Expression $($install.Content)
