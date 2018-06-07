#!/bin/bash

BITCOIN_TAG="v0.16.0"

# Install the EPEL repository
yum install -y epel-release

yum groupinstall -y "Development Tools"

# Install requirements/dependencies
yum install -y \
    autoconf \
    automake \
    boost-devel \
    gcc-c++ \
    git \
    libdb4-cxx \
    libdb4-cxx-devel \
    libevent-devel \
    libtool \
    openssl-devel \
    firewalld \
    logrotate \
    wget

# Start & Enable the Firewall
systemctl enable firewalld
systemctl start firewalld

# General Directory and File Setup
mkdir /var/lib/bitcoind
mkdir /run/bitcoind
mkdir /etc/bitcoin
cp ~\BCH-Deploy\etc\bitcoin\bitcoin.conf \etc\bitcoin\bitcoin.conf


# From https://www.ndchost.com/wiki/how-to-install-bitcoin-on-centos-7
#
# Compile and install OpenSSL (Unfortunately the openssl thats provided with
# CentOS is lacking EC Libraries so we are going to have to download, build, and
# install a separate copy of OpenSSL)
cd ~
mkdir openssl
cd openssl
wget https://www.openssl.org/source/openssl-1.0.1l.tar.gz
tar zxvf openssl-1.0.1l.tar.gz
cd openssl-1.0.1l
export CFLAGS="-fPIC"
./config --prefix=/opt/openssl shared enable-ec enable-ecdh enable-ecdsa
make all
sudo make install

# Install GCC 7 via Yum
yum install centos-release-scl -y    
yum install devtoolset-7-toolchain -y
scl enable devtoolset-7 bash

# Download and compile Bitcoin Cash
cd ~
git clone https://github.com/Bitcoin-ABC/bitcoin-abc.git bitcoin
cd ~/bitcoin
git checkout ${BITCOIN_TAG}
./autogen.sh
./configure --without-gui --disable-wallet --prefix=/opt/bitcoin-${BITCOIN_TAG} PKG_CONFIG_PATH=/opt/openssl/lib/pkgconfig LIBS=-Wl,-rpath,/opt/openssl/lib
make
sudo make install

cd ~
rm -rf bitcoin openssl

sudo ln -s /opt/bitcoin-${BITCOIN_TAG}/bin/bitcoind /usr/bin/bitcoind
sudo ln -s /opt/bitcoin-${BITCOIN_TAG}/bin/bitcoin-cli /usr/bin/bitcoin-cli


