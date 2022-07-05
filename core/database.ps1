if ($suprimir_importacao -ne $true) {write-host("database importado com sucesso") -f Green}

#-INFORMACOES------------------------------------------------------------------
$global:url = "https://raw.githubusercontent.com/elizeusantosti/esti/$branch/"
$powershell = "$home\documents\windowspowershell\"
#------------------------------------------------------------------------------

#-DADOS----------------
$global:arquivo = @{
    core = @{database = 'database.ps1'; functions = 'functions.ps1'; instaladores = 'instaladores.ps1'}
    scripts = @{auto_install = 'auto_install.ps1'; backup = 'backup.ps1'; organizar = 'organizar.ps1'; instaladores = 'instaladores.ps1'}
    modules = @{esti = 'esti.psm1'}
    
}

$global:diretorio = @{
    core = $null
    scripts = $null
    modules = $null
}

$global:pasta  = @{}
$pasta.modules=@{}
#----------------------




#-PROCESSAMENTO-DE-DADOS-------------------------------------------------------------------------------------

#--Define as pastas core e scripts
$($arquivo.keys) | Where-Object{$_ -notmatch "modules"} | foreach {
    $esti = "\esti"
    $pasta.$_ = $powershell + $_ + $esti
}

#--Define as pastas de modulos
$($arquivo.modules.keys) | foreach {$pasta.modules.$_ = $powershell + "modules\" + $_}

#--Define a url dos diretorios do repositorio
$($diretorio.keys) | foreach {$diretorio[$_] = $url + $_ + "/"}


#--Define a url dos arquivos com base em seus diretorios
foreach($item in $($arquivo.GetEnumerator()) ){
    $key = $item.name
    $arquivo.$key=@{}
    $item.Value.GetEnumerator() | foreach {
        $key2 = $_.key
        $arquivo.$key.$key2 = $diretorio.$key + $_.value
    }
}

#------------------------------------------------------------------------------------------------------------