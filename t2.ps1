
$key = '0x10' ## Ctrl

$Signature = @'
    [DllImport("user32.dll", CharSet=CharSet.Auto, ExactSpelling=true)] 
    public static extern short GetAsyncKeyState(int virtualKeyCode); 
'@
Add-Type -MemberDefinition $Signature -Name Keyboard -Namespace PsOneApi
do
{   If( [bool]([PsOneApi.Keyboard]::GetAsyncKeyState($key) -eq -32767 ))
        { 
            Write-Host "You pressed the combo keys, oh my!!" -ForegroundColor Green 
            $wshell = New-Object -ComObject wscript.shell;
            $wshell.AppActivate('title of the application window')

            Sleep 0.1
            wshell.SendKeys('ddd')

        }
    
      Start-Sleep -Milliseconds 100

} while($true)