$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://typora.io/windows/typora-update-ia32-0525.exe'
  url64bit       = 'https://typora.io/windows/typora-update-x64-0525.exe'

  checksum       = '45109e463f13038d19aab1e357c8202646bb3ed22311ebdee5fc057ece11be08'
  checksumType   = 'sha256'
  checksum64     = '308c9d6429c262cdc9ee840a66450b52aacc06e448fe58042ed3c555edb0f830'
  checksumType64 = 'sha256'

  validExitCodes = @(0, 3010, 1641)
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs
