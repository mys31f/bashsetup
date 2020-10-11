#!/bin/bash
echo "Please note that Solus has very few mirrors, mostly the load goes to a server in the US so if you're not in North America, your installs may not be stable, so when it gets stuck at something and then cancels, run the script again, just to be sure. The script will start in 30 seconds."
sleep 30
sudo eopkg remove firefox* libreoffice* -y
sudo eopkg upgrade -y
sudo eopkg install chromium spotify 
