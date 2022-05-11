
$init = "https://raw.githubusercontent.com/bredsan/ESTI/main/organizador/init.bat"
$init_dest = "$home\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

$organizador = "https://raw.githubusercontent.com/bredsan/ESTI/main/organizador/organizador.ps1"
$organizador_dest = "$home"


Import-Module BitsTransfer
Start-BitsTransfer -Source $init -Destination $init_dest
Start-BitsTransfer -Source $organizador -Destination $organizador_dest