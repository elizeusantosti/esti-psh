$origem = "$home\desktop"
$arquivos = get-childitem $origem
$categorias = @(
("\.(lnk)","Atalhos"),
("\.(exe)","Executaveis"),
("\.(txt)","Documentos\Texto"),
("\.(pdf)","Documentos\PDF"),
("\.(xls)","Documentos\Excel"),
("\.(doc)","Documentos\Word"),
("\.(pptx)","Documentos\Powerpoint"),
("\.(jpg)","Imagens\JPG"),
("\.(png)","Imagens\PNG"),
("\.(gif)","Imagens\GIF"),
("\.(mp3)","Audio\MP3"),
("\.(wav)","Audio\WAV"),
("\.(aiff)","Audio\AIFF"),
("\.(3gp)","Video\3GP"),
("\.(mp4)","Video\MP4"),
("\.(mov)","Video\MOV"),
("\.(mkv)","Video\MKV"),
("\.(html)","Desenvolvimento\WEB\HTML"),
("\.(css)","Desenvolvimento\WEB\CSS"),
("\.(js)","Desenvolvimento\WEB\JavaScript"),
("\.(py)","Desenvolvimento\SCRIPT\Python"),
("\.(ps1)","Desenvolvimento\SCRIPT\Powershell"),
("\.(psm)","Desenvolvimento\SCRIPT\Powershell")
)


foreach ($item in $categorias){
    $item[1]<#
    $extensao = $item[0]
    $destino = $origem\$item[0]
    
    if ($arquivos -match $extensao){
        $categoria_atual = $arquivos -match $extensao
        if (test-path $destino){
            move-item $categoria_atual -destination $destino
        }
        else
        {
           md $destino
           move-item $categoria_atual -destination $destino} 
    }#>
}
