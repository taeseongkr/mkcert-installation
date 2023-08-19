#!/bin/bash
# title : Installation mkcert & wget in macOS
# author : HyunSang Park <hyun.sang@teamgrit.kr>
# usage : bash

# 변수 지정
question=""
path=""

# mkcert 설치 되어 있는지 확인하고 설치가 안 되어 있으면 설치 시키는 스크립트
checking_install() {
  if ! command -v mkcert &> /dev/null
  then
    echo "echo mkcert could not be found"
    echo "You are installation Homebrew and mkcert (Y/N)" && read question
    # 질문 이후 사용자가 설치를 하는지에 따라서 설치합니다.
    if [[ $question -eq "yes" && $question -eq "YES" && $question -eq "y" && $question -eq "Y" ]]; then
     /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
     brew update && brew upgrade
     brew install mkcert && brew install wget
     install_cert
     exit
    elif [[ $question -eq "no" && $question -eq "NO" && $question -eq "y" && $question -eq "N" ]]; then
      echo "You are not install mkcert"
      exit
    else
      install_cert
      exit
    fi
 fi
}

# 인증서를 설치하는 함수입니다.
install_cert() {
  mkdir ~/mkcert
  cd ~/mkcert
  wget https://mkcert.s3.ap-northeast-2.amazonaws.com/rootCA-key.pem
  wget https://mkcert.s3.ap-northeast-2.amazonaws.com/rootCA.pem
  export CAROOT=`pwd`
  mkcert -install
}

# 각 함수를 실행하는 부분
checking_install
install_cert
