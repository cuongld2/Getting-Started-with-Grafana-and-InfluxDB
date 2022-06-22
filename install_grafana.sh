# Step 1 : add a `gpg` key

wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -

# Step 2 : add the Grafana repository to the apt sources list

sudo add-apt-repository "deb https://packages.grafana.com/oss/deb stable main"

# Step 3 : update the package cache in Ubuntu
sudo apt update

# Step 4 :  install Grafana
sudo apt install grafana

# Step 5 : start the Grafana server and check whether it is up and running:

sudo systemctl start grafana-server

# Step 6 : Check grafana-server status
sudo systemctl status grafana-server
