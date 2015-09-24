cd C:\Users\vagrant
$storageDir = $pwd
$webclient = New-Object System.Net.WebClient
$url = "http://dl.bintray.com/tombujok/babun/babun-1.2.0-dist.zip"
$file = "$storageDir\babun.zip"
echo "Downloading babun"
$webclient.DownloadFile($url,$file)
& 'C:\Program Files\7-Zip\7z.exe' x babun.zip
.\babun-1.2.0\install.bat
