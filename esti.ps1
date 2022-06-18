# Setar funcao e importar variaveis -----------------------------------------------------------------------------------------------
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/elizeusantosti/esti/main/database/esti_functions.ps1" | Invoke-Expression
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/elizeusantosti/esti/main/database/variaveis.ps1" | Invoke-Expression
#----------------------------------------------------------------------------------------------------------------------------------


# Pastas ---------------------------------------------------
esti-criar-pasta $pasta.importar.esti
$pasta.modules.values | ForEach-Object {esti-criar-pasta $_}
$pasta.scripts.values | ForEach-Object {esti-criar-pasta $_}
#-----------------------------------------------------------


# Importacao ---------------------------------------------------------------
$main.importar.values | ForEach-Object {esti-baixar $_ $pasta.importar.esti}
#---------------------------------------------------------------------------


# Modulos ----------------------------------------------------------------
esti-baixar $main.modules.esti $pasta.modules.esti
esti-baixar $main.modules.custom_functions $pasta.modules.custom_functions
#-------------------------------------------------------------------------


# Scripts ----------------------------------------------------------------
$main.scripts.values | ForEach-Object {esti-baixar $_ $pasta.scripts.esti}
#-------------------------------------------------------------------------