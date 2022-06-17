# Setar funcao e importar variaveis ---------------------
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/elizeusantosti/esti/main/importar/functions.ps1" | Invoke-Expression
importar variaveis
#--------------------------------------------------------


# Pastas ----------------------------------------------
criar-pasta $pasta.importar.esti
$pasta.modules.values | ForEach-Object {criar-pasta $_}
$pasta.scripts.values | ForEach-Object {criar-pasta $_}
#------------------------------------------------------


# Importacao -----------------------------------------------------------
$main.importar.values | ForEach-Object {baixar $_ $pasta.importar.esti}
#---------------------------------------------------------------------


# Modulos -------------------------------------------------------------
baixar $main.modules.esti $pasta.modules.esti
baixar $main.modules.custom_functions $pasta.modules.custom_functions
#----------------------------------------------------------------------


# Scripts -----------------------------------------------------------
$main.scripts.values | ForEach-Object {baixar $_ $pasta.scripts.esti}
#--------------------------------------------------------------------