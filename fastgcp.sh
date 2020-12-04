#!/usr/bin/env bash
echo "Made by Samyak Jain."
echo " Credits : Akhil Narang , Naman Parashar "
echo "********************************************************************************************************************************************************"
cd
sudo apt-get update 
sudo apt-get upgrade -y
echo "********************************************************************************************************************************************************"
cd
sudo add-apt-repository ppa:openjdk-r/ppa 
cd
mkdir bin
cd bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo 
chmod a+x ~/bin/repo
echo "********************************************************************************************************************************************************"
cd
sudo apt-get install bison build-essential curl ccache flex lib32ncurses5-dev lib32z1-dev libesd0-dev libncurses5-dev libsdl1.2-dev libxml2 libxml2-utils lzop pngcrush schedtool squashfs-tools xsltproc zip zlib1g-dev git-core make phablet-tools gperf openjdk-8-jdk -y
echo "********************************************************************************************************************************************************"
cd
cd bin
git clone https://github.com/akhilnarang/scripts.git build
cd
cd bin/build/setup
bash android_build_env.sh
echo "********************************************************************************************************************************************************"
cd
cd bin/build
mkdir pex
cd pex
echo "********************************************************************************************************************************************************"
cd
cd bin/build/pex
git config --global user.name "Samyak"
git config --global user.email "jainsamyak2002.sj@gmail.com"
echo "********************************************************************************************************************************************************"
cd 
cd bin/build/pex
repo init -u https://github.com/PixelExtended/manifest -b eleven --depth=1
repo sync -c -q --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)
echo "********************************************************************************************************************************************************"
cd
cd bin/build/pex
git clone https://github.com/PixelExtended/device_xiaomi_jasmine_sprout.git device/xiaomi/jasmine_sprout 
git clone https://github.com/PixelExtended/device_xiaomi_sdm660-common.git device/xiaomi/sdm660-common 
git clone https://github.com/xiaomi-sdm660/android_vendor_xiaomi_sdm660-common.git vendor/xiaomi/sdm660-common 
git clone https://github.com/xiaomi-sdm660/android_kernel_xiaomi_sdm660.git kernel/xiaomi/sdm660 
git clone https://github.com/xiaomi-sdm660/vendor_xiaomi_wayne-common.git vendor/xiaomi/wayne-common
echo " Thankyou"
