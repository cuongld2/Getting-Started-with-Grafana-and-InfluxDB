# Step 1: add the `gpg` key to the apt sources key ring
wget -qO- https://repos.influxdata.com/influxdb.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/influxdb.gpg > /dev/null

# Step 2: export the environment variable for storing the distribution ID and distribution code name
export DISTRIB_ID=$(lsb_release -si); export DISTRIB_CODENAME=$(lsb_release -sc)

echo "deb [signed-by=/etc/apt/trusted.gpg.d/influxdb.gpg] https://repos.influxdata.com/${DISTRIB_ID,,} ${DISTRIB_CODENAME} stable" | sudo tee /etc/apt/sources.list.d/influxdb.list > /dev/null

# Step 3: update the package cache in the Ubuntu server
sudo apt-get update

# Step 5: install InfluxDB
sudo apt-get install influxdb2

# Step 6: verify a successful installation run the following code
influx version

