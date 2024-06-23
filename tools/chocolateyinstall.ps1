
$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/cyf/faforever/releases/download/v0.0.1%2B25/FaForever_0.0.1.25_x86_en-US.msi'
$url64      = 'https://github.com/cyf/faforever/releases/download/v0.0.1%2B25/FaForever_0.0.1.25_x64_en-US.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'msi'
  url           = $url
  url64bit      = $url64

  softwareName  = 'faforever*'

  checksum      = 'C967D6293C67B7A8C1B72FDB7AA5A92B192A1CC164A29B0CD54612592CCA3696'
  checksumType  = 'sha256'
  checksum64    = '5B7504A8AAD2FB65EFEA874BEC618AD21AD799DDF58517C952A7E48C7F850208'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
