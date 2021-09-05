# Made by idchoppers, 4/3/2021
# To be ran after the setup script, this should install Debian and Windows Terminal

Write-Host ""
Write-Host "############################" -ForegroundColor Green -BackgroundColor DarkBlue
Write-Host "#                          #" -ForegroundColor Green -BackgroundColor DarkBlue
Write-Host "#     WSL2 SetupScript     #" -ForegroundColor Green -BackgroundColor DarkBlue
Write-Host "#      By: idchoppers      #" -ForegroundColor Green -BackgroundColor DarkBlue
Write-Host "#                          #" -ForegroundColor Green -BackgroundColor DarkBlue
Write-Host "############################" -ForegroundColor Green -BackgroundColor DarkBlue
Write-Host ""

Write-Host "Installing kernel patch and Debian..." -ForegroundColor Yellow
Invoke-WebRequest -Uri "https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi" -Outfile .\wslkrnl.msi                       # Apply kernel patch for WSL2
Write-Host "Please install WSL kernel patch and press enter when it is finished." -ForegroundColor Yellow -BackgroundColor DarkRed
.\wslkrnl.msi
pause
wsl --set-default-version 2                                                                                                                    # Enable WSL2
Invoke-WebRequest -Uri "https://aka.ms/wsl-debian-gnulinux" -OutFile Debian.appx -UseBasicParsing                                              # Download Debian's Appx
Add-AppxPackage .\Debian.appx                                                                                                                  # Install Debian
Write-Host "Done!" -ForegroundColor Black -BackgroundColor Green
Write-Host ""

Write-Host "Please install Windows App Installer and press enter when it is finished." -ForegroundColor Yellow -BackgroundColor DarkRed        # Install Windows App Installer
Start-Process "ms-windows-store://pdp?productId=9NBLGGH4NNS1&ocid=9nblggh4nns1_ORSEARCH_Bing&cid=&referrer=www.bing.com&scenario=click&webig=3dc82421-e571-4665-8a90-683581375477&muid=161D2F71ABF5672E3E0A3FD7AABA6660&websession=fdbefbe6e69149cc9d1c5feca5b0ecf2&tduid="
Pause
Write-Host ""

Write-Host "Please install Windows Terminal and press enter when it is finished." -ForegroundColor Yellow -BackgroundColor DarkRed             # Install Windows Terminal
Start-Process "ms-windows-store://pdp?productId=9N0DX20HK701&ocid=&cid=&referrer=www.bing.com&scenario=click&webig=63683c5d-f70d-4abd-8de4-5b72e2ff1800&muid=161D2F71ABF5672E3E0A3FD7AABA6660&websession=d69ff0db4971420a92644c4dd72ac4fb&tduid="
Pause
Write-Host ""

Write-Host "All Done! Launching WSL2..."  -ForegroundColor Black -BackgroundColor Green
debian