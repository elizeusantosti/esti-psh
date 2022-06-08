$path = "$home\desktop"
Set-Location $path
foreach ($file in (get-childitem  $path | where { ! $_.PSIsContainer } ))
{
   $ext=($file.Extension).Trim(".")
   $newpath=$path,$ext -Join "\"
   if (Test-Path $newpath){
   Move-Item -literalpath $file $newpath}
   Else {
   md $newpath
   Move-Item -literalpath $file $newpath}
   
}
