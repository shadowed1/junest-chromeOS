curl -L -o ~/MyFiles/Downloads/junest.zip https://github.com/fsquillace/junest/archive/refs/tags/7.4.10.zip
sleep 1
bsdtar -xf junest.zip
sleep 0.2
sudo cp -r ~/MyFiles/Downloads/junest-7.4.10 /usr/local/junest_installer
sleep 0.2
sudo mkdir -p /usr/local/junest
sleep 0.2
sudo chown -R 1000:1000 /usr/local/junest_installer
sleep 0.2
sudo chown -R 1000:1000 /usr/local/junest
sleep 0.2
find /usr/local/junest_installer -type d -exec chmod +x {} \;
sleep 0.2
find /usr/local/junest_installer -type f -name "*.sh" -exec chmod +x {} \;
sleep 0.2
find /usr/local/junest_installer -type f -exec grep -q '^#!' {} \; -exec chmod +x {} \;
sleep 0.2
export JUNEST_HOME=/usr/local/junest
export PATH="/usr/local/junest:/usr/local/junest_installer:$PATH"

cd /usr/local/junest_installer/bin/
./junest setup

export JUNEST_HOME=/usr/local/junest
export PATH="$PATH:/usr/local/junest_installer/bin:$JUNEST_HOME/bin"
