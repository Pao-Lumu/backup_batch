@title ZEN server
@echo off
:bootserver
cd %Sevrer%Server
java -Xmx1024M -Xmn512M -jar minecraft.jar nogui
:backup
cd ../"Backup worlds"

mkdir undef

cd ..
echo %cd%
xcopy /S "%cd%\Server\world\*" %cd%\"Backup worlds"\undef

cd "Backup worlds"
for /F "tokens=1-2 delims=: " %%i in ('time /t') do for /F "tokens=2-4 delims=/ " %%k in ('date /t') do ren undef %%k_%%l_%%m-%%i_%%j

cd ..