@echo off
for /f "tokens=5" %%a in ('netstat -aon ^|find " [::]:8080 " ^|find /i " TCP " ') do taskkill /F /PID %%a

for /f "tokens=4" %%a in ('netstat -aon ^|find " [::]:8080 " ^|find /i " UDP " ') do taskkill /F /PID %%a
