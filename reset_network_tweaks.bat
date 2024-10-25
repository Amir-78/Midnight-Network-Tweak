@echo off
title Reset Network Tweaks - Restore Default Settings
color 4F

echo ========================================================
echo            Reset Network Tweaks to Default
echo  This will restore all network settings to their defaults.
echo ========================================================
echo.

:: Enable TCP Auto-Tuning
netsh interface tcp set global autotuninglevel=normal

:: Disable Receive Side Scaling (RSS)
netsh int tcp set global rss=disabled

:: Restore Network Throttling to Default
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v NetworkThrottlingIndex /t REG_DWORD /d 10 /f

:: Reset Network Task Scheduling to Default
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v SchedulingCategory /t REG_SZ /d "Medium" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v SFIOPriority /t REG_SZ /d "Normal" /f

:: Re-enable Balanced Power Plan
powercfg -setactive SCHEME_BALANCED

:: Reset TCP Parameters
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v TcpAckFrequency /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v TCPNoDelay /f

:: Re-enable Energy-Efficient Ethernet (if applicable)
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v *EnergyEfficientEthernet /t REG_SZ /d 1 /f

:: Re-enable Power Saving for Network Adapter
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v *PME /t REG_SZ /d 1 /f

echo.
echo ========================================================
echo Network settings have been restored to default.
echo Please restart your PC for the changes to take effect.
echo ========================================================
pause