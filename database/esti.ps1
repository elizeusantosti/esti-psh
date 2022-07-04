Iwrite-host("esti_database importado com sucesso") -f Green

#-INFORMAÇÕES----------------------------------------------------------
$global:url = "https://raw.githubusercontent.com/elizeusantosti/esti/testing/"
$global:powershell = "$home\documents\windowspowershell\"
#----------------------------------------------------------------------

#-----------------
$global:diretorio = @{
    core = $null
    scripts = $null
    modules = $null
}

$global:arquivo = @{
    core = @{esti_database = "esti_database.ps1"; esti_functions = "esti_functions.ps1"}
    scripts = @{auto_install = "auto_install.ps1"; backup = "backup.ps1"; organizar = "organizar.ps1"}
    modules = @{esti = "esti.psm1"}
}

$global:pasta = @{
    core = $null
    scripts = $null
    modules = $null
}
#----------------------








#-PROCESSAMENTO-DE-DADOS-------------------------------------------------------------------------------------

#--Define a url dos diretorios do repositorio
foreach ($key in $($diretorio.keys)) {$diretorio[$key] = $url + $key + "/"}

#--Define os arquivos do repositorio
foreach ($item in $($arquivo.values.keys)) {$arquivo.values[$item]}

#--Define as pastas de modulos
$($arquivo.modules.keys) | foreach {$pasta.modules=@{};$pasta.modules.add($_, $powershell + "modules\" + $_)}

#--Define a pasta core e scripts
$($pasta) | foreach {$pasta.$_ = $powershell + $_ + "/esti"

#--Agrupa os arquivos do repositorio com base nos diretorios

foreach($arquivo in $($arquivo.Values.Keys))
{
    foreach($key in $arquivo.keys)
    {
        if($arquivo -eq $key)
        {
            $arquivo[$key] = "asd"
        }
    }
}
#------------------------------------------------------------------------------------------------------------
