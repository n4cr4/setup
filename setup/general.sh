#! /bin/bash

set -eu

cd ~/
echo "Setup starts soon..."
sudo apt update
sudo apt upgrade -y
sudo apt install --fix-missing -y \
    build-essential \
    python3-dev \
    vim \
    ruby \
    ruby-dev \
    wget \
    gdb \
    git \
    python3-pip \
    default-jdk \
    texlive-full \
    evince

sudo apt-get install gnuplot

curl https://osdn.net/projects/mytexpert/downloads/26068/jlisting.sty.bz2/ -o jlisting.sty.bz2 -L
bzip2 -d jlisting.sty.bz2
cd /usr/share/texlive/texmf-dist/tex/latex/listings/
sudo mv ~/jlisting.sty ./
sudo chmod 644 jlisting.sty
sudo mktexlsr
echo "[+] install jlisting done"

sudo python3 -m pip install ipython
echo "[+] pip install ipython done"

echo "[+] apt install done"
