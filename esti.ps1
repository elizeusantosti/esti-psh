importar esti

# Setar funcao e importar variaveis -----------------------------------------------------------------------------------------------
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/elizeusantosti/esti/main/modules/esti_functions.ps1" | Invoke-Expression
esti_database variaveis
#----------------------------------------------------------------------------------------------------------------------------------


# Cria Pastas ----------------------------------------------
$pasta.values.values | foreach{esti_criar_pasta $_}
#-----------------------------------------------------------


# Baixa Importacao ---------------------------------------------------------
$main.database.values | ForEach-Object {esti_baixar $_ $pasta.database.esti}
#---------------------------------------------------------------------------


# Baixa Modulos ----------------------------------------------------------
esti_baixar $main.modules.esti $pasta.modules.esti
esti_baixar $main.modules.esti_functions $pasta.modules.esti_functions
#-------------------------------------------------------------------------


# Baixa Scripts ----------------------------------------------------------
$main.scripts.values | ForEach-Object {esti_baixar $_ $pasta.scripts.esti}
#-------------------------------------------------------------------------

function importar(){
    [cmdletbinding()]
    param(
        [Parameter(Mandatory=$true, Position=0)]
        [string]$arquivo
    )
    $importar = $repo.diretorio.database + "$arquivo.ps1"
    Invoke-WebRequest -Uri $importar | Invoke-Expression
}

function baixar() {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$true, Position=0)]
        [string]$arquivo,
        [Parameter(Mandatory=$true, Position=1)]
        [string]$destino
    )
    try {
        Start-BitsTransfer -Source $arquivo -Destination $destino
    }
    catch {
        Write-Host $_.Exception.Message -ForegroundColor Red
    }
}

function criar_pasta($pasta) {
    Try {
        New-Item -Path $pasta -ItemType Directory -ErrorAction Stop
    }
    Catch {
        Write-Host $_.Exception.Message -ForegroundColor Red
    }
}