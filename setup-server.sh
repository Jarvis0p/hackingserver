#apt
sudo apt update -y;
sudo apt install build-essential -y;
sudo apt install parallel -y;
#directories
mkdir Downloads;
mkdir tools;
#go
wget 'https://dl.google.com/go/go1.20.5.linux-amd64.tar.gz'
sudo tar -C /usr/local -xzf go1.20.5.linux-amd64.tar.gz;
echo "
#My Paths
export PATH=\$PATH:/usr/local/bin:/usr/local/go/bin:/home/$(whoami)/go/bin" >> .bashrc ;
source .bashrc ;
source .bashrc ;
go install github.com/ffuf/ffuf/v2@latest;
go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest;
go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest;
sudo apt install -y libpcap-dev;
CGO_ENABLED=1 go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest;
go install github.com/OJ/gobuster/v3@latest;
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest;
sudo apt install sqlmap -y;
go install -v github.com/owasp-amass/amass/v3/...@master;
go install -v github.com/tomnomnom/anew@latest;
go install github.com/tomnomnom/assetfinder@latest;
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest;
go install -v github.com/hakluke/haktrails@latest;
go install github.com/incogbyte/shosubgo@latest;
go install github.com/lc/gau/v2/cmd/gau@latest;
go install github.com/tomnomnom/waybackurls@latest;
go install github.com/projectdiscovery/katana/cmd/katana@latest;
go install github.com/raverrr/plution@latest;
go install github.com/tomnomnom/gf@latest;
go install github.com/d3mondev/puredns/v2@latest
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
sudo ln -s /home/jarvis/tools/kiterunner/dist/kr /usr/local/bin/kr;
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
ln -s /home/jarvis/tools/dontgo403/dontgo403 /home/jarvis/go/bin/dontgo403;

#massdns
git clone https://github.com/blechschmidt/massdns.git
cd massdns;
make;
cd;
mv massdns tools;
sudo ln -s /home/jarvis/tools/massdns/bin/massdns /usr/local/bin/massdns;


