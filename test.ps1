# Invoca as funcoes necessarias.
$variaveis_padrao = "https://raw.githubusercontent.com/elizeusantosti/esti/main/variaveis/padrao.ps1"
$esti_functions = "https://raw.githubusercontent.com/elizeusantosti/esti/main/modulos/esti_functions.psm1"

Start-BitsTransfer -Source $variaveis_padrao -Destination $home\desktop

.$home\desktop\padrao.ps1

$pasta.variaveis.values
$pasta.modules.values
$pasta.scripts.values
$main.variaveis.values
$main.modulos.esti
$main.modulos.esti_functions
$main.scripts.values