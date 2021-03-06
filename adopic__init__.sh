#! /usr/bin/bash

allTools="python3-pip python3 gcc g++ make nasm git sublime3"

# Update and upgrade apt
sudo apt update
sudo apt upgrade

# Install latest version of all tools
for targetBinary in $allTools;
do
    echo "[+] Installing:" $targetBinary
    case $targetBinary in
    "python3-pip")
        sudo apt-get install python3-pip
    ;;
    "python3")
        sudo apt-get install python3
    ;;
    "gcc" | "g++" | "make")
        sudo apt install build-essential
        sudo apt-get install manpages-dev
    ;;
    "nasm")
        sudo apt install nasm
    ;;
    "git")
        sudo apt install git-all
        git config --global user.email "adonaypichardo@gmail.com"
        git config --global user.name "killjaqular"
    ;;
    "sublime3")
        wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
        sudo apt-get install apt-transport-https
        echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
        sudo apt-get update
        sudo apt-get install sublime-text
    ;;
    *)
        echo "[!] Unrecognized tool:_>" $targetBinary
        echo "[.] Skipping over instead."
    ;;
    esac
done

# Customize .bashrc
echo "[+] Customizing ~/.bashrc"

echo "alias \"ls\"=\"ls -a\"" >> ~/.bashrc
echo "alias \"ll\"=\"ls ..\"" >> ~/.bashrc
echo "alias \"clear\"=\"clear && ls\"" >> ~/.bashrc
echo "alias \"..\"=\"cd ..\"" >> ~/.bashrc
echo "alias \"token\"=\"cat ~/token\"" >> ~/.bashrc

sudo source ~/.bashrc

cat ~/.bashrc
