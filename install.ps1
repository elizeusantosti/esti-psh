# Importa o módulo de download de arquivos.
Import-Module BitsTransfer

$perfil = "Microsoft.powershell_profile.ps1"
$perfil_pasta = "$home\documents\windowspowershell\"

# Define scripts a serem baixados.
$scripts = "organizar","backup","arquivos"

# Define a pasta de destino dos scripts.
$destino = "$home\documents\windowspowershell\esti"

# Verifica se existe a pasta de destino e baixa os arquivos para a pasta.
md $destino -ErrorAction SilentlyContinue

# Função para baixar os scripts e enviar para a pasta de destino.
foreach ($script in $scripts){Start-BitsTransfer -Source "https://raw.githubusercontent.com/bredsan/ESTI/main/$script.ps1" -Destination $destino}



# Cria os aliases.
md $perfil_pasta -ErrorAction SilentlyContinue
curl -o $perfil "https://raw.githubusercontent.com/bredsan/esti/main/alias.ps1"
$profile
