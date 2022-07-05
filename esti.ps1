$caminho = split-path -parent $MyInvocation.MyCommand.Definition
iex '.$caminho\database.ps1'
iex '.$caminho\functions.ps1'

# Cria Pastas ---------------------------------
criar_pasta $pasta.core
$pasta.modules.values | foreach {criar_pasta $_}
criar_pasta $pasta.scripts
#----------------------------------------------

# Core -----------------------------------------------
$arquivo.core.values | foreach {baixar $_ $pasta.core}
#-----------------------------------------------------

# Baixa Modulos --------------------------------------------
$arquivo.modules.values| foreach {baixar $_ $pasta.modules}
#-----------------------------------------------------------

# Baixa Scripts -----------------------------------------
$arquivo.scripts.values | foreach {baixar $_ $pasta.scripts}
#--------------------------------------------------------