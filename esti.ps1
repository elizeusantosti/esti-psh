# Setar funcao e importar variaveis -----------------------------------------------------------------------------------------------
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/elizeusantosti/esti/main/database/esti_functions.ps1" | Invoke-Expression
esti_database variaveis
#----------------------------------------------------------------------------------------------------------------------------------


# Cria Pastas ----------------------------------------------
$pasta.values | ForEach-Object {esti_criar_pasta $_.values}
#-----------------------------------------------------------


# Baixa Importacao ---------------------------------------------------------
$main.database.values | ForEach-Object {esti_baixar $_ $pasta.database.esti}
#---------------------------------------------------------------------------


# Baixa Modulos ----------------------------------------------------------
esti_baixar $main.modules.esti $pasta.modules.esti
esti_baixar $main.modules.custom_functions $pasta.modules.custom_functions
#-------------------------------------------------------------------------


# Baixa Scripts ----------------------------------------------------------
$main.scripts.values | ForEach-Object {esti_baixar $_ $pasta.scripts.esti}
#-------------------------------------------------------------------------