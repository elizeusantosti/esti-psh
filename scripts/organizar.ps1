$origem = "$home\desktop"
$arquivos = get-childitem $origem
$categorias = @(
("\.(lnk)","$origem\Atalhos"),
("\.(exe)","$origem\Executaveis"),
("\.(txt)","$origem\Documentos\Texto"),
("\.(pdf)","$origem\Documentos\PDF"),
("\.(xls)","$origem\Documentos\Excel"),
("\.(doc)","$origem\Documentos\Word"),
("\.(pptx)","$origem\Documentos\Powerpoint"),
("\.(jpg)","$origem\Imagens\JPG"),
("\.(png)","$origem\Imagens\PNG"),
("\.(gif)","$origem\Imagens\GIF"),
("\.(mp3)","$origem\Audio\MP3"),
("\.(wav)","$origem\Audio\WAV"),
("\.(aiff)","$origem\Audio\AIFF"),
("\.(3gp)","$origem\Video\3GP"),
("\.(mp4)","$origem\Video\MP4"),
("\.(mov)","$origem\Video\MOV"),
("\.(mkv)","$origem\Video\MKV"),
("\.(html)","$origem\Desenvolvimento\WEB\HTML"),
("\.(css)","$origem\Desenvolvimento\WEB\CSS"),
("\.(js)","$origem\Desenvolvimento\WEB\JavaScript"),
("\.(py)","$origem\Desenvolvimento\SCRIPT\Python"),
("\.(ps1)","$origem\Desenvolvimento\SCRIPT\Powershell"),
("\.(psm)","$origem\Desenvolvimento\SCRIPT\Powershell")
)


foreach ($item in $categorias){
    $extensao = $item[0]
    $destino = $item[1]    
    if ($arquivos -match $extensao){
        $categoria_atual = $arquivos -match $extensao
        if (test-path $destino){
            move-item $categoria_atual -destination $destino
        }
        else
        {
           mkdir $destino
           move-item $categoria_atual -destination $destino} 
    }
}

#   PASTAS   #------------------------------------------------------------------------------------------------------------------------------------------
$destino_pastas = "$origem\Pastas"

$exclusao = @("*atalhos*", "*executaveis*", "*documentos*", "*desenvolvimento*", "*imagens*", "*audio*", "*videos*", "*pastas*")

$pastas = get-childitem -path $home\Desktop\ -directory -exclude $exclusao

if ($pastas) {mkdir $destino_pastas;move-item -Path $pastas -Destination $destino_pastas}
#-------------------------------------------------------------------------------------------------------------------------------------------------------