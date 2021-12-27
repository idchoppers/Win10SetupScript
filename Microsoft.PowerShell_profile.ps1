cls
$Properties = 'Caption', 'CSName', 'Version', 'BuildType', 'OSArchitecture'
Get-CimInstance Win32_OperatingSystem | Select-Object $Properties | Format-Table -AutoSize
function Prompt
{
    Write-Host -ForegroundColor "Red" -NoNewLine "["
    Write-Host -ForegroundColor "Cyan" -NoNewLine (Get-Date -UFormat "%R")
    Write-Host -ForegroundColor "Red" -NoNewLine "] "
    Write-Host -ForegroundColor "Red" -NoNewLine ($env:USERNAME)
    Write-Host -ForegroundColor "DarkRed" -NoNewLine ":"
    Write-Host -ForegroundColor "Magenta" -NoNewLine (Get-Location)
    Write-Host -ForegroundColor "White" -NoNewLine ">"
    return " "
}
