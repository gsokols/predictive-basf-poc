## Predicitive LLC locally deployed application suite (StopTOX, PresMD) 
### Installation instructions


1. Create directory
```
mkdir ~/predictive.llc
cd ./predictive.llc

# clone this git repo as following:
git clone https://github.com/gsokols/predictive-basf-poc.git

# OR copy/extract release archive files into  the 'predictive.llc' folder:
wget https://github.com/gsokols/predictive-basf-poc/archive/refs/tags/POC-v1.tar.gz
tar xvfz POC-v1.tar.gz .
```

2. Give executable permissions to the following files - start.sh, stop.sh, uninstall.sh
```
chmod +x start.sh stop.sh uninstall.sh
```
3. Update '.env' file with provided VERSION and LICENSE_KEY 
4. Run 'start.sh' to start the application
```
./start.sh
# Open browser in your Windows, navigate to 'http://<your-ubuntu-IP-address>:8088'
```
5. Run 'stop.sh' to stop application
```
./stop.sh
```
6. Uninstall 'predictive.llc' application
```
./uninstall.sh
```

Note: 'start.sh', 'stop.sh' and 'uninstall.sh' are reentrant scripts, means you can safely run them multiple times**
