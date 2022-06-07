function organizar {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$false)]
        [string]$atual = (Get-Location).Path
    )

    # Pega extensao dos arquivos
    $pasta_extensao = Get-ChildItem $atual -File | Select-Object Extension
    # Pega a lista de arquivos
    $arquivos = Get-ChildItem $atual -File

    # Cria uma nova lista para adicionar os arquivos
    $extensoes = New-Object Collections.Generic.List[String]

    Write-Host "Pegando arquivos e criando subpastas das extensoes se não existir..."
    foreach($pasta in $pasta_extensao){
        [System.IO.Directory]::CreateDirectory("$atual\$($pasta.Extension)") | Out-Null
        $extensoes.Add($pasta.Extension)
    }

    if($extensoes.Count -gt 0){
        foreach($arquivo in $arquivos){
            try {
                Write-Host "Movendo $($arquivo) para a pasta: $atual\$($arquivo.Extension)"
                Move-Item $arquivo.FullName -Destination "$atual\$($arquivo.Extension)" -Force -ErrorAction Stop
            }
            catch { 
                Write-Warning "Falha ao mover arquivo '$arquivo' para a pasta '$($arquivo.Extension)'. Arquivo já existe na pasta ou está em uso."
            }
        }
        
        Write-Host "Organizando arquivos"
        $extensoes | Group-Object -NoElement | Sort-Object count -Descending
    }else {
        Write-Host "Nenhum arquivo para organizar aqui: $atual"
    }
    
}

#Sort-Files -atual $env:USERPROFILE\desktop