Invoke-WebRequest https://raw.githubusercontent.com/elizeusantosti/esti/main/esti_functions.psm1 | Invoke-Expression
Invoke-WebRequest https://raw.githubusercontent.com/elizeusantosti/esti/main/variaveis.ps1 | Invoke-Expression

nova-pasta  $modules\esti
nova-pasta  $modules\esti_functions
nova-pasta  $pasta_scripts\esti


baixar $main/esti.psm1 $modules\esti
baixar $main/esti_functions.psm1 $modules\esti_functions
$scripts = "automatizar.ps1","arquivos.ps1","organizar.ps1","backup.ps1"
foreach ($script in $scripts) {baixar $main/scripts/$script $pasta_scripts\esti}