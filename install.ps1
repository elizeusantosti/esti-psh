# Importa o módulo de download de arquivos.
Import-Module BitsTransfer

$perfil = "$home\documents\windowspowershell\Microsoft.PowerShell_profile.ps1"

# Define scripts a serem baixados.
$scripts = "organizar","backup","arquivos"

# Define a pasta de destino dos scripts.
$destino = "$home\documents\windowspowershell\esti"

# Verifica se existe a pasta de destino e baixa os arquivos para a pasta.
md $destino -ErrorAction SilentlyContinue

# Função para baixar os scripts e enviar para a pasta de destino.
foreach ($script in $scripts){Start-BitsTransfer -Source "https://raw.githubusercontent.com/bredsan/ESTI/main/$script.ps1" -Destination $destino}



# Cria os aliases.
cd $env:USERPROFILE\Documents
md WindowsPowerShell -ErrorAction SilentlyContinue
cd WindowsPowerShell
New-Item Microsoft.PowerShell_profile.ps1 -ItemType "file" -ErrorAction SilentlyContinue
curl -o $perfil "https://raw.githubusercontent.com/bredsan/ESTI/main/alias.ps1"
$profile