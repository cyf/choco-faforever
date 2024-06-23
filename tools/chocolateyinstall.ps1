
$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/cyf/faforever/releases/download/v0.0.1%2B24/FaForever_0.0.1.24_x86_en-US.msi'
$url64      = 'https://github.com/cyf/faforever/releases/download/v0.0.1%2B24/FaForever_0.0.1.24_x64_en-US.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'msi'
  url           = $url
  url64bit      = $url64

  softwareName  = 'faforever*'

  checksum      = '4CE65C737922E558E70569BB5C241BE0F3FDF0CB222D2C065FF2973B6D5F6E74'
  checksumType  = 'sha256'
  checksum64    = '10EB6AC02D2EF416B3056253ED0CE2146E95E70EF69D9E76C690EEC07188FAB2'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
