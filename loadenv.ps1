function loadenv {
    param (
        $envFilePath = ""
    )
    $envCounter = 0

    if (Test-Path -Path $envFilePath -PathType Leaf) {
        foreach ($line in Get-Content $envFilePath) {
            if (!$line) {
                continue
            }
            $array = $line.Split("=")
            $environName = $array[0]
            $environValue = $array[1]

            Set-Item "env:$environName" $environValue
            $envCounter++
        }

        Write-Host -ForegroundColor Green "Loaded $envCounter environment variables!"
    }
    else {
        Write-Host -ForegroundColor Red "File not found!"
    }
}