$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://typora.io/windows/typora-update-ia32-0914.exe'
  url64bit       = 'https://typora.io/windows/typora-update-x64-0830.exe'

  checksum       = '85327c84ce1bc4bee51f951977cc6323f862e7f17b7417da1b7d5ccdfafe3e24'
  checksumType   = 'sha256'
  checksum64     = '3c4c3427c578b6a1d3e4fb42daa182ed4aeba1fa3fed4c97dbdbafb638849587'
  checksumType64 = 'sha256'

  validExitCodes = @(0, 3010, 1641)
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs
