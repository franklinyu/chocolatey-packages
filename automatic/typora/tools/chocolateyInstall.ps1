$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://typora.io/windows/typora-update-ia32-1213.exe'
  url64bit       = 'https://typora.io/windows/typora-update-x64-1213.exe'

  checksum       = '79635ea487585a88493a05dfcf58bdfe0d25d0f69f7bd434f160726124c5e2f5'
  checksumType   = 'sha256'
  checksum64     = '08fc92c01155eaa8a04d7b03d6cc8d54018fcb0f7b6ab924c5b3dafca1796b69'
  checksumType64 = 'sha256'

  validExitCodes = @(0, 3010, 1641)
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs
