
<#
$destino = "c:\teste"

$pastas = gci -path "$home\desktop\" -directory

$pastas | foreach {cpi $_ -exclude "*.*" -recurse -destination $destino}

$origem | foreach {Start-BitsTransfer -Source $arquivos -Destination C:\teste  -DisplayName "Backup" -Description "Backup"}
#>


<#
foreach ($pasta in $origem){
    $pasta | cpi -destination $destino
}
#>

#$arquivos = "$home\desktop\*" 

#$pastas | foreach {mkdir c:\teste\$_}

#$pastas | foreach {Start-BitsTransfer -Source $arquivos -Destination C:\teste  -DisplayName "Backup" -Description "Backup"}





# FUNCIONANDO

#Start-BitsTransfer -Source C:\users\bancada\desktop\* -Destination C:\teste  -DisplayName "Backup iniciado $((Get-Date).ToString("HH:mm:ss"))" -Description "UMMMM"


<#
FUNCIONANDO

#----------------------------------
#OBS: Mais lento, não copia pastas,
#----------------------------------
$origem = "$home\desktop"
gci -Path $origem -Recurse | foreach {$destino =  "C:\teste\$($_.name)"; Write-Host "Transferindo $($_.Fullname) para $destino";Start-BitsTransfer -Source $($_.Fullname) -Destination $destino}
#>



$data = (Get-Date).ToString("dd-MM-yyyy")

$origem = gci -path "$home\desktop" -recurse
$destino = "$home\desktop\teste\"
$log = "$home\desktop\backup - $data.txt"


Write-Host "Backup Iniciado:" (Get-Date).ToString("HH:mm:ss")

foreach ($item in $origem) {
    $item | cpi -destination $destino
    Add-Content -Path $log -Value "$((Get-Date).ToString("HH:mm:ss")) - Arquivo copiado '$($item.FullName)'"
}

Write-Host "Backup Completo:" (Get-Date).ToString("HH:mm:ss")