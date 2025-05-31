param(
    [string]$webname,
    [string]$search
)
if($search){
    $encoded = [uri]::EscapeDataString($search)
    start-process chrome.exe -ArgumentList "https://www.google.com/search?q=$encoded"
}elseif($webname){
    start-process chrome.exe -ArgumentList $webname
}