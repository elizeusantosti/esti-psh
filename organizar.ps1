#   ARQUIVOS   #----------------------------------------------------------------------------------------------------------------------------------------
$arquivos = get-item $home\Desktop\*
#-----------------------------------

#   DESTINOS    #-----------------
$atalhos = "$home\Desktop\Atalhos"
$executaveis = "$home\Desktop\Executaveis"
#----------------------------------------
$texto = "$home\Desktop\Documentos\Texto"
$word = "$home\Desktop\Documentos\Word"
$excel = "$home\Desktop\Documentos\Excel"
$powerpoint = "$home\Desktop\Documentos\Powerpoint"
$pdf_dest = "$home\Desktop\Documentos\PDF"
#------------------------------------
$html_dest = "$home\Desktop\Desenvolvimento\HTML"
$css_dest = "$home\Desktop\Desenvolvimento\CSS"
$javascript = "$home\Desktop\Desenvolvimento\Javascript"
$python = "$home\Desktop\Desenvolvimento\Python"
#-----------------------------------------------
$imagens = "$home\Desktop\Imagens"
#--------------------------------
$musicas = "$home\Desktop\Musicas"
#---------------------------------
$videos = "$home\Desktop\Videos"
$filmes = "$home\Desktop\Videos\Filmes"




#   ESTENSÕES   #--------------
$lnk = $arquivos -like "*.lnk*"
$exe = $arquivos -like "*.exe*"
$txt = $arquivos -like "*.txt*"
$doc = $arquivos -like "*.doc*"
$docx = $arquivos -like "*.docx*"
$xls = $arquivos -like "*.xls*"
$xlsx = $arquivos -like "*.xlsx*"
$pptx= $arquivos -like "*.pptx*"
$pdf = $arquivos -like "*.pdf*"
$html = $arquivos -like "*.html*"
$css = $arquivos -like "*.css*"
$js = $arquivos -like "*.js*"
$py = $arquivos -like "*.py*"
$jpg = $arquivos -like "*.jpg*"
$png = $arquivos -like "*.png*"
$mp3 = $arquivos -like "*.mp3*"
$wav = $arquivos -like "*.wav*"
$mp4 = $arquivos -like "*.mp4*"
$mov = $arquivos -like "*.mov*"
$mkv = $arquivos -like "*.mkv*"
#------------------------------



#   CONDIÇÕES   #----------------------------------------------------
if ($lnk) {mkdir $atalhos;move-item -Path $lnk -Destination $atalhos}
if ($exe) {mkdir $executaveis;move-item -Path $exe -Destination $executaveis}
if ($txt) {mkdir $texto;move-item -Path $txt -Destination $texto}
if ($doc) {mkdir $word;move-item -Path $doc -Destination $word}
if ($docx) {mkdir $word;move-item -Path $docx -Destination $word}
if ($xls) {mkdir $excel;move-item -Path $xls -Destination $excel}
if ($xlsx) {mkdir $excel;move-item -Path $xlsx -Destination $excel}
if ($pptx) {mkdir $powerpoint;move-item -Path $pptx -Destination $powerpoint}
if ($pdf) {mkdir $pdf_dest;move-item -Path $pdf -Destination $pdf_dest}
if ($html) {mkdir $html_dest;move-item -Path $html -Destination $html_dest}
if ($css) {mkdir $css_dest;move-item -Path $css -Destination $css_dest}
if ($js) {mkdir $javascript;move-item -Path $js -Destination $javascript}
if ($py) {mkdir $python;move-item -Path $py -Destination $python}
if ($jpg) {mkdir $imagens;move-item -Path $jpg -Destination $imagens}
if ($png) {mkdir $imagens;move-item -Path $png -Destination $imagens}
if ($mp3) {mkdir $musicas;move-item -Path $mp3 -Destination $musicas}
if ($wav) {mkdir $musicas;move-item -Path $wav -Destination $musicas}
if ($mp4) {mkdir $videos;move-item -Path $mp4 -Destination $videos}
if ($mov) {mkdir $videos;move-item -Path $mov -Destination $videos}
if ($mkv) {mkdir $filmes;move-item -Path $mkv -Destination $filmes}








#-------------------------------------------------------------------------------------------------------------------------------------------------------




#   PASTAS   #------------------------------------------------------------------------------------------------------------------------------------------
$destino = "$home\Desktop\Pastas"

$exclusao_pastas = @("*atalhos*", "*executaveis*", "*documentos*", "*desenvolvimento*", "*imagens*", "*musicas*", "*videos*","*Importante*", "*Backup*", "*Pastas*")

$pastas = get-childitem -path $home\Desktop\ -directory -exclude $exclusao_pastas

if ($pastas) {mkdir $destino;move-item -Path $pastas -Destination $destino}
#-------------------------------------------------------------------------------------------------------------------------------------------------------
