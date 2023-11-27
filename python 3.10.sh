how to install python 3.10

yum update

yum install openssl-devel bzip2-devel libffi-devel

yum groupinstall "Development Tools"

wget https://www.python.org/ftp/python/3.10.8/Python-3.10.8.tgz 


tar xzf Python-3.10.8.tgz 

cd Python-3.10.8

./configure --with-system-ffi --with-computed-gotos --enable-loadable-sqlite-extensions

 make -j ${nproc}
 
make altinstall
