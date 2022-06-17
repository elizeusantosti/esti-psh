# Carrega as variáveis
$padrao = Invoke-WebRequest -Uri "https://raw.githubusercontent.com/elizeusantosti/esti/main/variaveis/padrao.ps1"
# É preciso invocar a url 2 vezes, como se estivesse em cache.
Invoke-Expression $padrao
Invoke-Expression $padrao

# Carrega as funções
$functions = Invoke-WebRequest -Uri $main.modulos.esti_functions
Invoke-Expression $functions

# Se nao existir cria as seguintes pastas.
criar-pasta $pasta.variaveis.values
$pasta.modules.values | ForEach-Object {criar-pasta $_}
$pasta.scripts.values | ForEach-Object {criar-pasta $_}

# Baixa os arquivos necessarios para o funcionamento do modulo.
$main.variaveis.values | ForEach-Object {baixar $_ $pasta.variaveis.esti}

baixar $main.modulos.esti $pasta.modules.esti
baixar $main.modulos.esti_functions $pasta.modules.esti_functions

$main.scripts.values | ForEach-Object {baixar $_ $pasta.scripts.esti}