cd C:\Users\vagrant\
git clone https://github.com/mcellteam/mcell
git clone https://github.com/mcellteam/cellblender
git clone https://github.com/mcellteam/nutmeg
mkdir Go\bin
mkdir Go\pkg
mkdir Go\src
#[Environment]::SetEnvironmentVariable("GOPATH", "C:\Users\vagrant\Go", "User")
go get github.com/mcellteam/nutmeg
cp C:\Users\vagrant\Go\bin\nutmeg.exe C:\Users\vagrant\nutmeg
cp C:\vagrant\scripts\nutmeg.conf C:\Users\vagrant\nutmeg
cp C:\vagrant\scripts\mcell_win\* C:\Users\vagrant\mcell\src
cd C:\Users\vagrant\mcell\src
gcc -std=c99 *.c -o mcell.exe
cd C:\Users\vagrant\
mkdir bin
cp C:\Users\vagrant\mcell\src\mcell.exe C:\Users\vagrant\bin
