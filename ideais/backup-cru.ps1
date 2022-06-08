$data = (get-date).ToString("dd-MM-yyyy")

$origem = gci -path "$home\desktop"

copy-item -path $origem -destination "T:\BACKUPS\$data" -recurse
