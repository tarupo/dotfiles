open() {
    if [ -z $1 ];
    then
        /mnt/c/Windows/explorer.exe .
        return
    fi
    p="$(readlink -f $1)"
    /mnt/c/Windows/explorer.exe "$(wslpath -w $p)"
}
