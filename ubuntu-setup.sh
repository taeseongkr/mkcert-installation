# title : Installation mkcert & wget in macOS
# author : HyunSang Park <hyun.sang@teamgrit.kr>
# usage : bash

# 변수 지정
question=""
path=""

sudo apt update && sudo apt upgrade
sudo apt install libnss3-tools
wget -O mkcert https://github.com/FiloSottile/mkcert/releases/download/v1.4.3/mkcert-v1.4.3-linux-amd64
chmod +x mkcert
sudo cp mkcert /usr/local/bin/
mkdir ~/mkcert
cd ~/mkcert
wget https://mkcert.s3.ap-northeast-2.amazonaws.com/rootCA-key.pem
wget https://mkcert.s3.ap-northeast-2.amazonaws.com/rootCA.pem
export CAROOT=`pwd`
mkcert -install