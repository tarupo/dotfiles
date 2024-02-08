# entry setup
ENTRY_PATH=$(readlink -f ./entry.sh)
echo "source $ENTRY_PATH" >> ~/.profile

# proxy setup
echo 'export PROXY_HOST="localhost"' >> ~/.profile # set proxy host 
echo 'export MIX_PROXY_PORT=""' >> ~/.profile # set proxy port

