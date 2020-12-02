#!/usr/bin/env bash
echo "Made by Samyak Jain."
echo " Credits : Akhil Narang"
echo ""
echo ":::       ::: :::::::::: :::        ::::::::   ::::::::  ::::    ::::  :::::::::: "
echo ":+:       :+: :+:        :+:       :+:    :+: :+:    :+: +:+:+: :+:+:+ :+:        "
echo "+:+       +:+ +:+        +:+       +:+        +:+    +:+ +:+ +:+:+ +:+ +:+        "
echo "+#+  +:+  +#+ +#++:++#   +#+       +#+        +#+    +:+ +#+  +:+  +#+ +#++:++#   "
echo "+#+ +#+#+ +#+ +#+        +#+       +#+        +#+    +#+ +#+       +#+ +#+        "
echo " #+#+# #+#+#  #+#        #+#       #+#    #+# #+#    #+# #+#       #+# #+#        "
echo "  ###   ###   ########## ########## ########   ########  ###       ### ########## "
echo ""

sudo apt-get update
\n
sudo apt-get upgrade -y
\n

cd
mkdir bin
cd bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo 
chmod a+x ~/bin/repo
\n
sudo apt-get install bison build-essential curl ccache flex lib32ncurses5-dev lib32z1-dev libesd0-dev libncurses5-dev libsdl1.2-dev libxml2 libxml2-utils lzop pngcrush schedtool squashfs-tools xsltproc zip zlib1g-dev git-core make phablet-tools gperf openjdk-8-jdk -y

git clone https://github.com/akhilnarang/scripts.git build
cd build/setup/
bash android_build_env.sh
\n
cd ..
mkdir pex
cd pex
git config --global user.name "Samyak"
git config --global user.email "jainsamyak2002.sj@gmail.com"
repo init -u https://github.com/PixelExtended/manifest -b eleven --depth=1
repo sync -c -q --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)

x 

