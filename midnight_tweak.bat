@echo off
title Midnight Network Tweak - Optimize Your Network for Gaming
color 1E

echo ========================================================
echo              Midnight Network Tweak
echo   Optimizing your Ethernet settings for low latency,
echo       high performance, and smooth gaming.
echo ========================================================
echo.

:: Disable TCP Auto-Tuning
netsh interface tcp set global autotuninglevel=disabled

:: Enable Receive Side Scaling (RSS)
netsh int tcp set global rss=enabled

:: Disable Windows Network Throttling
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v NetworkThrottlingIndex /t REG_DWORD /d 4294967295 /f

:: Set Network Task Scheduling Priority to High
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v SchedulingCategory /t REG_SZ /d "High" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v SFIOPriority /t REG_SZ /d "High" /f

:: Enable High-Performance Power Plan
powercfg -setactive SCHEME_MIN

:: Optimize TCP Parameters for Gaming
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v TcpAckFrequency /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v TCPNoDelay /t REG_DWORD /d 1 /f

:: Disable Energy-Efficient Ethernet (if applicable)
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v *EnergyEfficientEthernet /t REG_SZ /d 0 /f

:: Disable Power Saving for Network Adapter
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v *PME /t REG_SZ /d 0 /f

echo.
echo ========================================================
echo Tweaks applied successfully! Enjoy smooth gaming!
echo Please restart your PC for the changes to take effect.
echo ========================================================
pause