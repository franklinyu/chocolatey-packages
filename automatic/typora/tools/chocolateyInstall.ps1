$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://typora.io/windows/typora-update-ia32-1211.exe'
  url64bit       = 'https://typora.io/windows/typora-update-x64-1211.exe'

  checksum       = 'f3b163f0f374f7839b83329b757a5541afe2160fe77456eeb41c5f7f856b8b20'
  checksumType   = 'sha256'
  checksum64     = 'e0ed07250d33a60d2df03c5ebba18046ed53883024c6ca50422002cb0888a7a6'
  checksumType64 = 'sha256'

  validExitCodes = @(0, 3010, 1641)
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs
