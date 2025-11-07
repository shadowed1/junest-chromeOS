curl -L -o ~/MyFiles/Downloads/junest.zip https://github.com/fsquillace/junest/archive/refs/tags/7.4.10.zip
bsdtar -xf ~/MyFiles/Downloads/junest.zip
sudo cp -r ~/MyFiles/Downloads/junest-7.4.10 /usr/local/junest_installer
sudo mkdir -p /usr/local/junest
sudo chown -R 1000:1000 /usr/local/junest_installer
sudo chown -R 1000:1000 /usr/local/junest
find /usr/local/junest_installer -type d -exec chmod +x {} \;
find /usr/local/junest_installer -type f -name "*.sh" -exec chmod +x {} \;
find /usr/local/junest_installer -type f -exec grep -q '^#!' {} \; -exec chmod +x {} \;
export JUNEST_HOME=/usr/local/junest
export PATH="$PATH:/usr/local/junest:/usr/local/junest_installer"
cd /usr/local/junest_installer/bin/
./junest setup
export JUNEST_HOME=/usr/local/junest
export JUNEST_INSTALLER=/usr/local/junest_installer
export PATH="$PATH:$JUNEST_INSTALLER/bin:$JUNEST_HOME/bin:$JUNEST_HOME/usr/bin_wrappers"
#export LD_LIBRARY_PATH="$JUNEST_HOME/usr/lib:$JUNEST_HOME/usr/lib64:$LD_LIBRARY_PATH"
