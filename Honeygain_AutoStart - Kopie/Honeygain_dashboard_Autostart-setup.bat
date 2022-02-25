@echo off
@title honeygain_dashboard-AutoStart~

:programm_info
cls
echo msgbox"Hello, thos is the honeygain_dashboard-AutoStart SETUP. if you click [OK] the programm safe the Start progamm, under: %userprofile%\STARTM~1\Programs\Startup\Honeygain_AutoStart.bat", vbOKOnly, "Honeygain_Autostart"> %temp%\msg.vbs
%Temp%\msg.vbs
erase %temp%\msg.vbs
@ping -n 2 localhost> nul
goto save_prog

:save_prog
cls
echo @echo off&@title ~Honeygain_dashboard-Autostart~>> %userprofile%\STARTM~1\Programs\Startup\Honeygain_AutoStart.bat
echo :AutoStart&cls&echo.&echo. >>  %userprofile%\STARTM~1\Programs\Startup\Honeygain_AutoStart.bat
echo START https://dashboard.honeygain.com >> %userprofile%\STARTM~1\Programs\Startup\Honeygain_AutoStart.bat
@ping -n 2 localhost> nul
echo msgbox"If you now start your PC, the Honeygain dashboard will open!", vbOKOnly, "Honeygain_Autostart"> %temp%\msg.vbs
%Temp%\msg.vbs
erase %temp%\msg.vbs
@ping -n 2 localhost> nul
exit