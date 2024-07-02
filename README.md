## Predicitive LLC locally deployed application suite (StopTOX, PresMD) 
### Installation instructions

1. Create directory
```
mkdir ~/predictive.llc
cd ./predictive.llc

# Copy/extract files from this folder into  'predictive.llc' folder, you can use a prepared release archives:
wget https://github.com/gsokols/predictive-basf-poc/archive/refs/tags/POC-v1.tar.gz
tar xvfz POC-v1.tar.gz
```

2. Give executable permissions to 2 files - start.sh, stop.sh
```
cd ./predicitive.llc 
chmod +x start.sh stop.sh uninstall.sh
```
3. Update into '.env' file with provided VERSION and LICENSE_KEY
   
4. Run 'start.sh' to start the application
```
./start.sh
# Open browser in your Windows, navigate to 'http://<your-ubuntu-IP-address>:8088'
```
5. Run 'stop.sh' to stop application
```
./stop.sh
```
6. Uninstall 'predictive.llc' applications
```
./uninstall.sh
```

Note: 'start.sh', 'stop.sh' and 'uninstall.sh' are reentrant scripts, means you can safely run them multiple times**

````
