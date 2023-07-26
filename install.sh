apt update
apt upgrade
apt install git
apt install python
apt install python3-pip
apt install python-requests
apt install python-dnspython
apt install python-argparse



wget https://go.dev/dl/go1.20.6.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.20.6.linux-amd64.tar.gz

cat << EOF >> ~/.bashrc

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$HOME/.local/bin:$PATH

EOF

source ~/.profile

go install -v github.com/owasp-amass/amass/v3/...@master
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go get -u github.com/tomnomnom/assetfinder
go install github.com/gwen001/github-subdomains@latest

git clone https://github.com/findomain/findomain.git
cd findomain
cargo build --release
cp target/release/findomain /usr/bin/
cd ..

git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r
pip install -r requirements.txt
cd ..

git clone https://github.com/shmilylty/OneForAll.git
cd OneForAll/
python3 -m pip install -U pip setuptools wheel
pip3 install -r requirements.txt
cd ..





