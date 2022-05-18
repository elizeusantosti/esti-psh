# Instalação



* Executar diretamente: Abra o POWERSHELL, copie e cole:

      $install = Invoke-WebRequest https://raw.githubusercontent.com/bredsan/ESTI/main/automatizador/scoop_check_install.ps1;Invoke-Expression $($install.Content)
      
* Executar diretamente: Abra o CMD, copie e cole:
      Powershell.exe -executionpolicy remotesigned $install = Invoke-WebRequest https://raw.githubusercontent.com/bredsan/ESTI/main/automatizador/scoop_check_install.ps1;Invoke-Expression $($install.Content)



* Abra o CMD, copie e cole:

      curl -o automatizar.ps1 https://raw.githubusercontent.com/bredsan/ESTI/main/automatizador/scoop_check_install.ps1
