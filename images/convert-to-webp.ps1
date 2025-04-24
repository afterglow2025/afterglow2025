cd "C:\afterglow\images"

Get-ChildItem *.png | ForEach-Object {
    $input = $_.FullName
    $output = $_.BaseName + ".webp"
    magick "$input" -quality 80 -define webp:method=6 -define webp:auto-filter=true `
           -define webp:alpha-compression=1 -define webp:alpha-quality=80 `
           "$output"
}
