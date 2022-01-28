// Author : Arfi
function insert-content {
    param ( [String]$Path )
    process {
        $( , $_; Get-Content $Path -ea SilentlyContinue) | Out-File $Path
    }
}

$files = get-childitem .

foreach ($file in $files) {
    try {
        '// Author : Arfi' | insert-content $file
    }
    catch {
    }
}
