$Wallpaper = "wpaper.jpg"

$strPath = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies"
$strPath1 = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"


New-Item -Path $strPath -Name System -Force
New-Item -Path $strPath1 -Name Wallpaper
New-Item -Path $strPath1 -Name WallpaperStyle
Set-ItemProperty -Path $strPath -Name Wallpaper -value "\\dc1\share1\powershell\background\wpaper.jpg"
Set-ItemProperty -Path $strPath -Name WallpaperStyle -value "2"