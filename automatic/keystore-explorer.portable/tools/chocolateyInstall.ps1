$ErrorActionPreference = 'Stop';
$toolsDir = Split-Path -parent $MyInvocation.MyCommand.Definition
$folder = 'kse-544'

$packageArgs = @{
    packageName = $env:ChocolateyPackageName
    unzipLocation = $toolsDir
    url = 'https://github.com/kaikramer/keystore-explorer/releases/download/v5.4.4/kse-544.zip'
    checksum = '1b7f97ca99fdd4fd095d35b5091d8228fd55ec2cdcd5bac3efd3be199b5ba0f0'
    checksumType = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

if (Test-ProcessAdminRights) {
    $specialFolder = [Environment+SpecialFolder]::CommonPrograms
} else {
    $specialFolder = [Environment+SpecialFolder]::Programs
}

$exePath = Join-Path -Path $toolsDir -ChildPath $folder |  Join-Path -ChildPath 'kse.exe'
$linkPath = [Environment]::GetFolderPath($specialFolder) | Join-Path -ChildPath 'KeyStore Explorer.lnk'
Install-ChocolateyShortcut -ShortcutFilePath $linkPath -TargetPath $exePath
