# Importa o módulo de download de arquivos.
Import-Module BitsTransfer

# Define scripts a serem baixados.
$scripts = "organizar","backup","arquivos"

# Define a pasta de destino dos scripts.
$destino = "$home\documents\windowspowershell\esti"

# Verifica se existe a pasta de destino e baixa os arquivos para a pasta.
md $destino -ErrorAction SilentlyContinue

# Função para baixar os scripts e enviar para a pasta de destino.
foreach ($script in $scripts){Start-BitsTransfer -Source "https://raw.githubusercontent.com/elizeusantosti/esti/main/scripts/$script.ps1" -Destination $destino}


# Cria
$pasta = "$home\documents\windowspowershell"
$perfil = "Microsoft.Powershell_profile.ps1"

md $pasta -ErrorAction SilentlyContinue
curl -o $pasta\$perfil "https://raw.githubusercontent.com/elizeusantosti/esti/main/install/profile.ps1"
$profile
