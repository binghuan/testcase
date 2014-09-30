#!/bin/sh
echo "Powered by BH_Lin@2014/06/10"
echo "description: pre-check funtionality for test environment."

#echo "#1 check network interface"
#result=$(ifconfig | grep -i -E "utun0|utun1" );
#if [ "${result}" != "" ]; then
#    echo "OK: #1 check Network Interface for VPN"
#else
#    echo "FAIL: #1 check Network Interface for VPN"
#    exit 0;
#fi

#result=$(curl "http://binghuan.github.io/debug/index.html" | grep -i -E "extensionFrame/content_script.js")
result=$(curl "http://binghuan.github.io/debug/index.html" | grep -i -E "content_script.js")
echo "check injection of content script by parsing HTML content"
echo "${result}"
if [ "${result}" == "" ]; then
    echo "FAIL: check injection of content script"
    exit 0;
else
    echo "OK: check injection of content script"
fi

echo "OK: all functionality is clear"
