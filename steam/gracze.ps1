$ErrorActionPreference = 'Stop'
$gra = Get-Content -LiteralPath (Join-Path $PSScriptRoot 'gra.json') -Raw | ConvertFrom-Json
$dane = Invoke-RestMethod -Uri "https://api.steampowered.com/ISteamUserStats/GetNumberOfCurrentPlayers/v1/?appid=$($gra.appid)" -UseBasicParsing -TimeoutSec 20
Write-Output "$($gra.nazwa) | Steam $($gra.appid) | gracze teraz: $($dane.response.player_count)"
