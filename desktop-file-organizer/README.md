# Installation

* Open CMD and paste this.

      Powershell.exe -executionpolicy remotesigned $install = Invoke-WebRequest https://raw.githubusercontent.com/bredsan/ESTI/main/desktop-file-organizer/install.ps1;Invoke-Expression $($install.Content)
