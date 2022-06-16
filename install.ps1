# Invoca as funcoes necessarias.
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/elizeusantosti/esti/main/variaveis/esti_functions.ps1" | Invoke-Expression
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/elizeusantosti/esti/main/variaveis/padrao.ps1" | Invoke-Expression

# Se nao existir cria as seguintes pastas.
$pasta.variaveis.values | foreach {criar-pasta $_}
$pasta.modules.values | foreach {criar-pasta $_}
$pasta.scripts.values | foreach {criar-pasta $_}

# Baixa os arquivos necessarios para o funcionamento do modulo.
$main.variaveis.values | foreach {baixar $_ $pasta.variaveis}

baixar $main.modulos.esti $pasta.modules.esti
baixar $main.modulos.esti_functions $pasta.modules.esti_functions

$main.scripts.values | foreach {baixar $_ $pasta.scripts.esti}