
echo "# profile functions\n" >> ~/.profile

# echo 'export PROXY_HOST="localhost"' # set proxy host
# echo 'export MIX_PROXY_PORT=""' # set proxy port
echo "source $(readlink -f ./proxyrc.sh)" >> ~/.profile

