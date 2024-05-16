!#/usr/bin/bash
cd 
clear
echo "Happy DWMing"
sleep 3
mkdir -p ~/Downloads/suckless_tools/
mkdir -p ~/.local/src/
mkdir -p ~/.local/bin/

cd ~/Downloads/suckless_tools/
git clone --depth=1 https://git.suckless.org/dwm
git clone --depth=1 https://git.suckless.org/dmenu
git clone --depth=1 https://git.suckless.org/st
cd

cd ~/.local/src/
cp -r ~/Downloads/suckless_tools/dwm/ ~/.local/src/
cp -r ~/Downloads/suckless_tools/dmenu/ ~/.local/src/
cp -r ~/Downloads/suckless_tools/st/ ~/.local/src/

cd dwm/
mv config.def.h config.h
while true; do
    read -p "DO YOU WANT TO OPEN THE config.h file? (Yy/Nn): " yn
    case $yn in
        [Yy]* )
            vim ~/.local/src/dwm/config.h
        break;;
        [Nn]* ) 
        break;;
        * ) echo "Please answer yes or no.";;
    esac
done
sudo make clean install
cd ..
clear

cd dmenu/
mv config.def.h config.h
while true; do
    read -p "DO YOU WANT TO OPEN THE config.h file? (Yy/Nn): " yn
    case $yn in
        [Yy]* )
            vim ~/.local/src/dmenu/config.h
        break;;
        [Nn]* ) 
        break;;
        * ) echo "Please answer yes or no.";;
    esac
done
sudo make clean install
cd ..
clear

cd st/
mv config.def.h config.h
while true; do
    read -p "DO YOU WANT TO OPEN THE config.h file? (Yy/Nn): " yn
    case $yn in
        [Yy]* )
            vim ~/.local/src/st/config.h
        break;;
        [Nn]* ) 
        break;;
        * ) echo "Please answer yes or no.";;
    esac
done
sudo make clean install
cd ..
cd
