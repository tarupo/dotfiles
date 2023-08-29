# proxy settings

if [ -z $PROXY_HOST ]; then
        PROXY_HOST="localhost"
fi
PROXY_TITLE=("all_proxy" "http_proxy" "https_proxy")


pon()
{
    scheme=$1

    if [ -z $MIX_PROXY_PORT ]; then
        echo "proxy port not set."
        return 1
    fi

    if [ -z $scheme ]; then
        echo "scheme not set."
        return 1
    fi

    proxy_addr="$scheme://$PROXY_HOST:$MIX_PROXY_PORT"


    for title in $PROXY_TITLE; do
        export "$title"="$proxy_addr"
        export "$(echo $title | tr '[:lower:]' '[:upper:]')"="$proxy_addr"
    done

    unset scheme proxy_addr
}

proxyon ()
{
    pon "http"
}

sproxyon()
{
    pon "socks5"
}


proxyoff ()
{
    for title in $PROXY_TITLE; do
        unset $title
        unset $(echo $title | tr '[:lower:]' '[:upper:]')
    done
}
