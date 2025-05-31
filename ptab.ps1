param(
    [switch]$end
)
if($end){
    Get-Process powershell | where-object { $_.ID -ne $PID} | stop-process -Force
    #If using with Vscode all terminals except your current one will be killed
    exit
}
start-process powershell.exe
