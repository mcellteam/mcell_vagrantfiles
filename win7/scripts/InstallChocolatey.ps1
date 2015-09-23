(iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))) >$null 2>&1
cd C:\Users\vagrant\Documents
mkdir WindowsPowerShell
cd WindowsPowerShell
cp C:\vagrant\scripts\profile.ps1 .
