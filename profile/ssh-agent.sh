# ssh agent
if [ -z "$SSH_AUTH_SOCK" ]; then
  # Check if an existing agent process is running
  if [ "$(pgrep ssh-agent)" ]; then
    # Set SSH_AUTH_SOCK to the existing socket file
    export SSH_AUTH_SOCK=$(find /tmp/ssh-* -name "agent.*" -user $USER -printf '%T@ %p\n' | sort -r | head -n1 | awk '{print $2}')
  else
    # Start a new agent process and set SSH_AUTH_SOCK
    eval $(ssh-agent > /dev/null 2>&1) 
  fi
fi
