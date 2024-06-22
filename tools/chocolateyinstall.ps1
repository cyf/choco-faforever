
$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/cyf/faforever/releases/download/v0.0.1%2B23/FaForever_0.0.1.23_x86_en-US.msi'
$url64      = 'https://github.com/cyf/faforever/releases/download/v0.0.1%2B23/FaForever_0.0.1.23_x64_en-US.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'msi'
  url           = $url
  url64bit      = $url64

  softwareName  = 'faforever*'

  checksum      = 'DDFBC4371F9CAD99CBF3AF6DE06078A533E2C4B92BC249A5091BCB821B9FEF33'
  checksumType  = 'sha256'
  checksum64    = '7D452D0552A4A891AB1BFBF69953E725E4FCF032665EA897C139BFE60F35F4BF'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
