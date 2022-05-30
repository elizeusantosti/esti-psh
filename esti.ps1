# Criar alias esti
# esti | Exibe a página de ajuda do comando.
# esti help | Exibe a página de ajuda.
# esti update | Checa a versão, atualiza o código fonte e faz download dos demais scripts em sua última versão se necessário.


# Já funciona com multiplos comandos, ex: esti update organizar automatizar backup 

function esti {
    foreach ($arg in $args) {
        $url = Invoke-WebRequest https://raw.githubusercontent.com/bredsan/esti/testing/$arg.ps1
        Invoke-Expression $($url.Content)
    }
}
