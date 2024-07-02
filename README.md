## Predicitive LLC locally deployed application 
### Installation instructions

1. Create directory
```
mkdir ~/predictive.llc
```

2. Copy/extract files to above 'predictive.llc' folder 
   The folder should include the following files list:
```
ls -ltr ./predictive.llc/
-rw-rw-r--  1 gsokols gsokols 1760 Jul  1 20:33 docker-compose.yaml
-rw-rw-r--  1 gsokols gsokols  241 Jul  1 20:33 .env
-rw-rw-r--  1 gsokols gsokols    0 Jul  1 20:38 README.md
-rw-rw-r--  1 gsokols gsokols  908 Jul  1 20:37 start.sh
-rw-rw-r--  1 gsokols gsokols  196 Jul  1 20:38 stop.sh
```
3. Give executable permissions to 2 files - start.sh, stop.sh
```
cd ./predicitive.llc 
chmod +x start.sh stop.sh uninstall.sh
```

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
