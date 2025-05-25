param(
    [string]$webname
    )
$domains = @(".com",".edu",".org",".net")
for($i = 0; $i -le $domains.Length;$i++){
    $response = Invoke-WebRequest -Uri "$webname$domains[i]"
    # return the error code or success code if succes start process
}

function name {
    & "C:\Projects_for_resume\Terminal-Scripts\Easy-tabs.ps1"
}

function website {
    #This whole thing might be useless tbh, if($input == "ChatGPT"){
        #Star-Process chrome.exe -ArgumentList "https://chat.openai.com"
    #}
    start-Process chrome.exe -ArgumentList "$webname.edu"

}
website

#Write-output "Execution time: $($sw.Elapsed.TotalSeconds) seconds"

#$sw.Stop()