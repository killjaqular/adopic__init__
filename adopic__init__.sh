#! /usr/bin/bash

allTools="pip3 python3 gcc g++ nasm git"

for targetBinary in $allTools;
do
    echo "[+] Installing: " $targetBinary
    case targetBinary in
        "python3-pip")
            apt-get install python3-pip
            ;;
    esac
done
