$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/tungsfer512/ript_install/raw/main/Setup_TimeFreeze.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'RiptFreeze*'

  silentArgs   = '/VERYSILENT' # Inno Setup
}

Install-ChocolateyPackage @packageArgs
