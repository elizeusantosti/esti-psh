# URL -----------------------------------------------------------------"
$global:esti=@{}
$esti.main = "https://raw.githubusercontent.com/elizeusantosti/esti/main/"
$esti.dev = "https://raw.githubusercontent.com/elizeusantosti/esti/dev/"


$global:main=@{}
$main.diretorios{}
$main.diretorios.database = $esti.main+"database/"
$main.diretorios.modules = $esti.main+"modules/"
$main.diretorios.scripts = $esti.main+"scripts/"

$main.database=@{}
$main.database.variaveis = $main.diretorios.database+"variaveis.ps1"
$main.database.functions = $main.diretorios.database+"functions.ps1"
$main.database.instaladores = $main.diretorios.database+"instaladores.ps1"

$main.modules=@{}
$main.modules.esti=$main.diretorios.modules+"esti.psm1"
$main.modules.custom_functions = $main.diretorios.modules+"custom_functions.psm1"

$main.scripts=@{}
$main.scripts.arquivos = $main.diretorios.scripts+"arquivos.ps1"
$main.scripts.automatizar = $main.diretorios.scripts+"automatizar.ps1"
$main.scripts.backup = $main.diretorios.scripts+"backup.ps1"
$main.scripts.organizar = $main.diretorios.scripts+"organizar.ps1"
# URL -----------------------------------------------------------------



# PASTAS -----------------------------------------------------------
$global:pasta=@{}
$pasta.powershell = "$home\documents\windowspowershell\"

$pasta.database=@{} 
$pasta.database.esti = $pasta.powershell+"database\esti\"

$pasta.modules=@{}
$pasta.modules.esti = $pasta.powershell+"modules\esti\"
$pasta.modules.custom_functions = $pasta.powershell +"modules\custom_functions\"

$pasta.scripts=@{} 
$pasta.scripts.esti = $pasta.powershell+"scripts\esti\"
# PASTAS -----------------------------------------------------------



# ARQUIVOS -----------------------------------------------------------
$global:local=@{}
$local.database=@{}
$local.database.variaveis = $pasta.database.esti+"variaveis.ps1"
$local.database.functions = $pasta.database.esti+"functions.ps1"
$local.database.instaladores = $pasta.database.esti+"instaladores.ps1"

$local.scripts=@{}
$local.scripts.esti=@{}
$local.scripts.arquivos = $pasta.scripts.esti+"arquivos.ps1"
$local.scripts.automatizar = $pasta.scripts.esti+"automatizar.ps1"
$local.scripts.backup = $pasta.scripts.esti+"backup.ps1"
$local.scripts.organizar = $pasta.scripts.esti+"organizar.ps1"

$local.modules=@{}
$local.modules.esti = $pasta.modules.esti+"esti.ps1"
$local.modules.custom_functions = $pasta.modules.custom_functions+"custom_functions.ps1"
# ARQUIVOS -----------------------------------------------------------