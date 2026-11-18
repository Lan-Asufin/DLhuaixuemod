@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo 正在合并 坏血mod.zip ...
copy /b 坏血mod.zip.001+坏血mod.zip.002+坏血mod.zip.003 坏血mod.zip >nul
if exist 坏血mod.zip (echo 完成: 坏血mod.zip) else (echo 合并失败)
echo.
pause
