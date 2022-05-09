
$init = "https://raw.githubusercontent.com/bredsan/ESTI/main/Desktop-Organizer/init.bat"
$init_dest = "$home\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

$organizer = "https://raw.githubusercontent.com/bredsan/ESTI/main/Desktop-Organizer/organizer.ps1"
$organizer_dest = "$home\Documents"


Import-Module BitsTransfer
Start-BitsTransfer -Source $init -Destination $init_dest
Start-BitsTransfer -Source $organizer -Destination $organizer_dest
