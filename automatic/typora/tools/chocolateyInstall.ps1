$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://typora.io/windows/typora-update-ia32-0429.exe'
  url64bit       = 'https://typora.io/windows/typora-update-x64-0429.exe'

  checksum       = 'C68A3521D6BDCDD74694FD8AFD495E5AB0D30A404820AE706FFB0364AF3733A3'
  checksumType   = 'sha256'
  checksum64     = '3D8BB71095BE42F73DA1D7EF6DD2B7CFFD24129C0CBB4BD3E65A566E577545D3'
  checksumType64 = 'sha256'

  validExitCodes = @(0, 3010, 1641)
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs
