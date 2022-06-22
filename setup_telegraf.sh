# Step 1: export environment variable for Influx token
export INFLUX_TOKEN=${your_token}

# Step 2: Start telegraf agent

telegraf --config http://localhost:8086/api/v2/telegrafs/${your_telegraf_id}

