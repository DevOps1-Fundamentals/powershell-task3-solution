$logFile = 'files.log'
for ($i = 0; $i -lt 5; $i++) {
    # Calculate the file number with leading zeros
    $fileNumber = $i.ToString()

    # Build the file name
    $fileName = "file$fileNumber.txt"

    # Create the file
    New-Item -ItemType File -Path $fileName -Force

    # Append information about the file creation to the log file
    $logMessage = "This is file $fileNumber. $fileName"
    Add-Content -Path $logFile -Value $logMessage
}

# Read and output the contents of the log file
$logContent = Get-Content -Path $logFile -Raw
Write-Output $logContent
