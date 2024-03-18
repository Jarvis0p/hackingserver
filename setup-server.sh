#apt
sudo apt update -y;
sudo apt install build-essential -y;
sudo apt install parallel -y;
sudo apt install python3-pip -y
sudo apt install -y libpcap-dev;
sudo apt install sqlmap -y;
sudo apt install jq -y;



#directories
mkdir Downloads;
mkdir tools;


#go
wget 'https://go.dev/dl/go1.22.1.linux-amd64.tar.gz'
sudo tar -C /usr/local -xzf go1.20.5.linux-amd64.tar.gz;
echo "
#My Paths
export PATH=\$PATH:/usr/local/bin:/usr/local/go/bin:/home/$(whoami)/go/bin:/home/$(whoami)/.local/bin" >> .bashrc ;
/usr/local/go/bin/go install github.com/ffuf/ffuf/v2@latest;
/usr/local/go/bin/go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest;
/usr/local/go/bin/go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest;
CGO_ENABLED=1 /usr/local/go/bin/go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest;
/usr/local/go/bin/go install github.com/OJ/gobuster/v3@latest;
/usr/local/go/bin/go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest;
/usr/local/go/bin/go install -v github.com/owasp-amass/amass/v3/...@master;
/usr/local/go/bin/go install -v github.com/tomnomnom/anew@latest;
/usr/local/go/bin/go install github.com/tomnomnom/assetfinder@latest;
/usr/local/go/bin/go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest;
/usr/local/go/bin/go install github.com/projectdiscovery/asnmap/cmd/asnmap@latest
/usr/local/go/bin/go install -v github.com/hakluke/haktrails@latest;
/usr/local/go/bin/go install github.com/incogbyte/shosubgo@latest;
/usr/local/go/bin/go install -v github.com/s0md3v/smap/cmd/smap@latest
/usr/local/go/bin/go install github.com/lc/gau/v2/cmd/gau@latest;
/usr/local/go/bin/go install github.com/tomnomnom/waybackurls@latest;
/usr/local/go/bin/go install github.com/projectdiscovery/katana/cmd/katana@latest;
/usr/local/go/bin/go install github.com/raverrr/plution@latest;
/usr/local/go/bin/go install github.com/tomnomnom/gf@latest;
/usr/local/go/bin/go install github.com/d3mondev/puredns/v2@latest
/usr/local/go/bin/go install github.com/g0ldencybersec/CloudRecon@latest
/usr/local/go/bin/go install github.com/OJ/gobuster/v3@latest


git clone https://github.com/iosiro/baserunner.git
cd baserunner
npm install
npm run build
npm star


#pip
.local/bin/pip3 install shodan


#gf
git clone https://github.com/1ndianl33t/Gf-Patterns;
mkdir .gf
cp Gf-Patterns/*.json .gf;
rm -rf Gf-Patterns;

#kr
git clone https://github.com/assetnote/kiterunner.git;
cd kiterunner; 
make build;
cd;
mv kiterunner tools/;
sudo ln -s /home/$(whoami)/tools/kiterunner/dist/kr /usr/local/bin/kr;

#masscan
git clone https://github.com/robertdavidgraham/masscan; 
cd masscan; make; 
sudo make install; 
cd ; 
rm -rf masscan;

#wordlists
mkdir wordlists;
git clone https://github.com/danielmiessler/SecLists.git;
mv SecLists wordlists/;
git clone https://github.com/fuzzdb-project/fuzzdb;
mv fuzzdb wordlists/;

#dontgo
git clone https://github.com/devploit/dontgo403; cd dontgo403; go get; go build; 
cd;
mv dontgo403 tools
ln -s /home/$(whoami)/tools/dontgo403/dontgo403 /home/jarvis/go/bin/dontgo403;

#massdns
git clone https://github.com/blechschmidt/massdns.git
cd massdns;
make;
cd;
mv massdns tools;
sudo ln -s /home/jarvis/tools/massdns/bin/massdns /usr/local/bin/massdns;


echo "Please run --> source .bashrc"
