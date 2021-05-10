# DECLARATIONS

$targetDirectoryPath = "H:\Path\to\Directory"
$outputFile = "C:\Path\to\output.csv"

# CODE

$directoryTree = Get-ChildItem $targetDirectoryPath -File -Recurse

function Add-File {
    Add-Content -Path $outputFile "sep=,"
    Add-Content -Path $outputFile "Document,Path,CreationDateTime,LastWriteDateTime"
    Add-Content -Path $outputFile $resultsArray
}

$resultsArray = @()

ForEach ($file in $directoryTree) {
    $fileName = [string]$file
    $filePath = [string]$file.FullName
    $fileCreationTime = [string]$file.CreationTime.ToString("yyyy-MMM-dd HH:mm:ss")
    $fileLastWriteTime = [string]$file.LastWriteTime.ToString("yyyy-MMM-dd HH:mm:ss")
    # $fileLastAccessTime = [string]$file.LastAccessTime.ToString("yyyy-MMM-dd HH:mm:ss") ## NOTE -- LastAccessDate is disabled by default in Windows 7. A reigstry edit is required to enable it.
    $resultsArray += $fileName + "," + $filePath + "," + $fileCreationTime + "," + $fileLastWriteTime
}

Add-File
