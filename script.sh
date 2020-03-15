#!/bin/bash

sudo apt-get install wget vim gcc g++ clang python3 python3-dev python-dev python2.7 \
		     cmake curl git build-essential ssh nodejs npm tidy

git clone https://github.com/KenanHH/setup && cd setup/
git submodule update --init --recursive

cd setup && mv .vimrc .vim * ../
cd ~

#Run make for deoplete-go
#Make sure that you have all dependencies installed for succesfull completing, some may not be listed
cd .vim/bundle/deoplete-go
make

cd ~


wget https://dl.google.com/go/go1.12.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.12.linux-amd64.tar.gz
cd ~
echo "export PATH=$PATH:/usr/local/go/bin" >> ./.profile
echo "export GOPATH=${HOME}/go" >> ./.profile
source ./.profile


# goimports
go get -u golang.org/x/tools/cmd/goimports

# gocode
go get -u github.com/nsf/gocode

# godef
go get -u github.com/rogpeppe/godef

# golint
go get -u golang.org/x/lint/golint

# errcheck
go get -u github.com/kisielk/errcheck

#gocode for deoplete
go get -u github.com/stamblerre/gocode

