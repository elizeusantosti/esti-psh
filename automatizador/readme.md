# Installation

* Open CMD and paste this.

      Powershell.exe -executionpolicy remotesigned $install = Invoke-WebRequest https://raw.githubusercontent.com/bredsan/ESTI/main/automatizador/automatizar.ps1;Invoke-Expression $($install.Content)
      
* Abra o CMD e cole isso:

      curl -o automatizar.ps1 https://raw.githubusercontent.com/bredsan/ESTI/main/automatizador/automatizar.ps1
