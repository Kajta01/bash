Write-Host "Congratulations! Your first script executed successfully"
while($true)
{
    $key = $Host.UI.RawUI.ReadKey()
    if ($key.Character -eq [char]9) {
    "Pressed tab"
    }
}


write-host "Test-connection stopped jump to next command"