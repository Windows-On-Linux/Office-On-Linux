echo "Prepare the enviroment of WOL to support Office 2013..."
WINEARCH=win32 WINEPREFIX=/home/andreock/winetest/office2013 winetrics win7 
WINEARCH=win32 WINEPREFIX=/home/andreock/winetest/office2013 winetricks msxml6 msftedit riched20 riched30 vb6run corefonts
echo "Patching the black screen error..."
WINEARCH=win32 WINEPREFIX=/home/andreock/winetest/office2013 wine regedit black_screen_fix.reg
echo "Downloading Office 2013, it may take some time, please wait..."
wget https://github.com/Windows-On-Linux/Office-On-Linux/releases/download/2013/office2013.tar.gz
echo "Extracting Office 2013, please wait"
tar -xvzf office2013.tar.gz
echo "Open the installer of Office 2013..."
WINEARCH=win32 WINEPREFIX=/home/andreock/winetest/office2013 wine setup.exe
echo "The installer have finished to work. Happy use!"