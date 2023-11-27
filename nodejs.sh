#how to install node-js

install wget

wget http://nodejs.org/dist/v0.10.30/node-v0.10.30.tar.gz

tar xzvf node-v* && cd node-v*

yum install gcc gcc-c++

./configure
make


make install

node --version
