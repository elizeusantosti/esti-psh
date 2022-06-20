$repo = "esti"
$branch = "main"
$url = "https://raw.githubusercontent.com/elizeusantosti/$repo/$branch"

#-files-----------------------------------

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


#-urls------------------------------------

$main=@{}
$file.keys | foreach {$main.add("$main.$_", "$url/$_")}
