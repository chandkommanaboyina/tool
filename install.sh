apt update
apt -y upgrade
apt -y install git
apt -y install python
apt -y install python3-pip
apt -y install python-requests
apt -y install python-dnspython
apt -y install python-argparse
apt-get -y install jq nmap phantomjs npm chromium parallel
apt -y install dnsrecon
npm i -g wappalyzer wscat

wget https://go.dev/dl/go1.20.6.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.20.6.linux-amd64.tar.gz
rm go1.20.6.linux-amd64.tar.gz

cat << EOF >> ~/.bashrc
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$HOME/.local/bin:$PATH
EOF
source ~/.profile

mkdir tools
pip install bbot

go install -v github.com/owasp-amass/amass/v3/...@master
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go get -u github.com/tomnomnom/assetfinder
go get -u github.com/tomnomnom/httprobe
go install github.com/gwen001/github-subdomains@latest

git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r
pip install -r requirements.txt
cd ..
git clone https://github.com/shmilylty/OneForAll.git
cd OneForAll/
python3 -m pip install -U pip setuptools wheel
pip3 install -r requirements.txt
cd ..
git clone --recursive https://github.com/screetsec/Sudomy.git
cd Sudomy
python3 -m pip install -r requirements.txt
cd ..
git clone https://github.com/guelfoweb/knock.git
cd knock
python3 setup.py install
cd ..
git clone https://github.com/laramies/theHarvester 
cd theHarvester
python3 -m pip install -r requirements/base.txt
cd ..
git clone https://github.com/nsonaniya2010/SubDomainizer.git
cd SubDomainizer
pip3 install -r requirements.txt
cd ..
git clone https://github.com/s0md3v/ReconDog
git clone https://github.com/thewhiteh4t/FinalRecon.git
cd FinalRecon
pip3 install -r requirements.txt
cd ..

