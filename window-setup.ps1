# ONLY USING WINDOWS
$homeDIR = $env:USERPROFILE
New-Item -ItemType Directory -Path "$homeDir/mkcert"

# Installation Choco
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install mkcert -y

Set-Location -Path "$homeDir/mkcert"
Invoke-WebRequest -Uri https://mkcert.s3.ap-northeast-2.amazonaws.com/rootCA-key.pem -OutFile rootCA-key.pem
Invoke-WebRequest -Uri https://mkcert.s3.ap-northeast-2.amazonaws.com/rootCA.pem -OutFile rootCA.pem
$env:CAROOT="$homeDir/mkcert"
mkcert -install

Write-Host $homeDIR
Write-Host "$homeDir/mkcert"
Write-Host $CAROOT
