# entry setup
echo "" >> ~/.profile
echo "# DOTFILES PROFILE" >> ~/.profile
ENTRY_PATH=$(readlink -f ./entry.sh)
DOT_PROFILE_ROOT=$(dirname $ENTRY_PATH)

echo "export DOT_PROFILE_ROOT=$DOT_PROFILE_ROOT" >> ~/.profile
echo "source $ENTRY_PATH" >> ~/.profile

# proxy setup
echo 'export PROXY_HOST="localhost"' >> ~/.profile # set proxy host 
echo 'export MIX_PROXY_PORT=""' >> ~/.profile # set proxy port
echo "# DOTFILES PROFILE END" >> ~/.profile
echo "" >> ~/.profile
