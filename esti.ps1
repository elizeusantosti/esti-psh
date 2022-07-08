$global:branch = "testing"

Invoke-WebRequest -uri "https://raw.githubusercontent.com/elizeusantosti/esti/testing/core/database.ps1" -UseBasicParsing | Invoke-Expression
Invoke-WebRequest -uri "https://raw.githubusercontent.com/elizeusantosti/esti/testing/core/functions.ps1" -UseBasicParsing | Invoke-Expression

# Cria Pastas ----------------------------------
criar_pasta $pasta.core
$pasta.modules.values | foreach {criar_pasta $_}
criar_pasta $pasta.scripts
#-----------------------------------------------

# Baixa Core -----------------------------------------
$arquivo.core.values | foreach {baixar $_ $pasta.core}
#-----------------------------------------------------

# Baixa Modulos ------------------------------------------------
$arquivo.modules.values| foreach {baixar $_ $pasta.modules.esti}
#---------------------------------------------------------------

# Baixa Scripts --------------------------------------------
$arquivo.scripts.values | foreach {baixar $_ $pasta.scripts}
#-----------------------------------------------------------