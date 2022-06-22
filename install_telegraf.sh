# Step 1: install the Telegraf agent on the Ubuntu server:

wget -qO- https://repos.influxdata.com/influxdb.key | sudo tee /etc/apt/trusted.gpg.d/influxdata.asc >/dev/null

# Step 2: add the Influxdata repo to the apt sources list:


# Step 3: Update `sudo apt update` in the system and install Telegraf using the following code. Then, check whether Telegraf was installed successfully:

sudo apt update && sudo apt install telegraf

telegraf version
