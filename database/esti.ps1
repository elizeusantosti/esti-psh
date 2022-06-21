$branch = "dev"
$url = "https://raw.githubusercontent.com/elizeusantosti/esti/$branch"
#-files---------------------------------------------------------------

$file=@{}
$file.module=@{}
$file.module.esti = "esti.psm1"
$file.module.custom_functions = "custom_functions.psm1"

$file.database=@{}
$file.database.esti = "esti.ps1"
$file.database.instaladores = "instaladores.ps1"

$file.script=@{}
$file.script.organizar = "organizar.ps1"
$file.script.backup = "backup.ps1"


#-files_in_repo--------------------------------------------------------------
# TO-TEST
$files_in_repo=@{}
$file.keys | foreach {$files_in_repo.add("$files_in_repo.$_=@{}", "$url/$_")}
