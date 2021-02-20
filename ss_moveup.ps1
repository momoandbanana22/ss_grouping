$TargetDirectory = "C:\temp\SSÉOÉãÅ[Évï™ÇØ"

Set-Location $TargetDirectory
Get-ChildItem $TargetDirectory -Directory | ForEach-Object {
  if (($_.Name -ne "..") -And ($_.Name -ne ".")) {
    Set-Location $_.Name
    Get-ChildItem . -File | ForEach-Object {
      Move-Item $_.name ".." -Force
    }
    Set-Location ".."
    Remove-Item $_.Name -Force
  }
}
