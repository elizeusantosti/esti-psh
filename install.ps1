# Invoca as variaveis necessarias.
Invoke-WebRequest https://raw.githubusercontent.com/elizeusantosti/esti/main/variaveis.ps1 | Invoke-Expression

# Invoca as funcoes necessarias.
Invoke-WebRequest https://raw.githubusercontent.com/elizeusantosti/esti/main/esti_functions.psm1 | Invoke-Expression



# Se nao existir cria as seguintes pastas. 
nova-pasta $modules\esti
nova-pasta $modules\esti_functions
nova-pasta $pasta_scripts\esti
nova-pasta $pasta_scripts\variaveis

# Baixa os arquivos necessarios para o funcionamento do modulo.
baixar $main/esti.psm1 $modules\esti
baixar $main/variaveis/padrao.ps1 $pasta_scripts\variaveis
baixar $main/variaveis/apps.ps1 $pasta_scripts\variaveis
baixar $main/esti_functions.psm1 $modules\esti_functions
$scripts = "automatizar.ps1","arquivos.ps1","organizar.ps1","backup.ps1"
foreach ($script in $scripts) {baixar $main/scripts/$script $pasta_scripts\esti}
