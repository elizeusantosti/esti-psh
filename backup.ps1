function backup {
    $backup = $args[0]
    $origem = $args[1]
    $destino = "X:\"
    $exclusao = @("*appdata*", "*programdata*")
    get-childitem -path $origem -destination $destino -exclude $exclusao -recurse 
    
}
