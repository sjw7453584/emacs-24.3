#!/bin/bash
#in confront with the error "undefined reference to g-settings ,just configure --without-gsettings"
OS=`lsb_release -a 2>/dev/null | sed -n '/Distributor/'p|sed 's/[\t ]*//g'|cut -d ":" -f 2`
echo "the current os is $OS"
if [ "CentOS" = "$OS"];then
    sudo yum install gtk2-devel.x86_64 libXpm-devel libjpeg-devel libungif-devel libtiff-devel ncurses-devel
else
    if [ "Ubuntu" = "$OS" ];then
	sudo apt-get install libjpeg-devel libgif-devel libXpm-devel libtiff-devel ncurses-devel gtk2-devel
    fi
fi 
# wget ftp://ftp.gnu.org/gnu/autoconf/autoconf-2.69.tar.gz
    tar -zxvf autoconf-2.69.tar.gz
    cd autoconf-2.69
    ./configure
    make
    sudo make install
    
