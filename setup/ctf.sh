#! /bin/bash

set -eu

cd ~/
echo "Setup starts soon..."
sudo dpkg --add-architecture i386
echo "[+] add arch done"
sudo apt update
sudo apt upgrade -y
sudo apt install --fix-missing -y \
    build-essential \
    python3-dev \
    libc6:i386 \
    libc6-dbg \
    vim \
    ruby \
    ruby-dev \
    wget \
    gdb \
    netcat \
    socat \
    git \
    patchelf \
    python3-pip \
    nasm
echo "[+] apt install done"

sudo python3 -m pip install ipython
echo "[+] pip install ipython done"

sudo python3 -m pip install pwntools
echo "[+] pip install pwntools done"

git clone https://github.com/pwndbg/pwndbg && \
    cd pwndbg && chmod +x setup.sh && ./setup.sh
echo "[+] setup pwndbg done"

cd ~/
sudo -H python3 -m pip install ROPgadget
echo "[+] pip install ROPgadget done"

wget https://github.com/0vercl0k/rp/releases/download/v1/rp-lin-x64
chmod +x rp-lin-x64
sudo mv rp-lin-x64 /usr/local/bin/rp++
echo "[+] setup rp++ done"

sudo gem install seccomp-tools
echo "[+] gem install seccomp-tools done"

sudo gem install one_gadget
echo "[+] gem install one_gadget done"

wget https://github.com/io12/pwninit/releases/download/3.2.0/pwninit
chmod +x pwninit
sudo mv pwninit /usr/local/bin/
echo "[+] setup pwninit done"

sudo apt install zsh -y
echo "[+] apt install zsh done"

sudo apt upgrade -y
echo "[+] apt upgrade done"

ZSH_PASS=$(which zsh)
echo $PASS | chsh -s $ZSH_PASS

echo "finish!!"
