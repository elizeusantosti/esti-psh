
$inicializar = "https://raw.githubusercontent.com/bredsan/ESTI/main/organizador/organizador.bat"
$inicializar_dest = "$home\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

$organizador = "https://raw.githubusercontent.com/bredsan/ESTI/main/organizador/organizador.ps1"
$organizador_dest = "$home"


Import-Module BitsTransfer
Start-BitsTransfer -Source $inicializar -Destination $inicializar_dest
Start-BitsTransfer -Source $organizador -Destination $organizador_dest

.$home\organizador.ps1