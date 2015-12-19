#! /bin/bash
#
# Enable port forwarding
#
# Requirements:
#   your Private Internet Access user and password as arguments
#
# Usage:
#  ./port_forward.sh <user> <password>

port_forward_assignment( )
{
  if [ "$(uname)" == "Linux" ]; then
    local_ip=`ifconfig tun0|grep -oE "inet *10\.[0-9]+\.[0-9]+\.[0-9]+"|tr -d "a-z :"|tee /tmp/vpn_ip`
    client_id=`head -n 100 /dev/urandom | md5sum | tr -d " -"`
  fi
  if [ "$(uname)" == "Darwin" ]; then
    local_ip=`ifconfig tun0 | grep "inet " | cut -d\  -f2|tee /tmp/vpn_ip`
    client_id=`head -n 100 /dev/urandom | md5 -r | tr -d " -"`
  fi
  json=`wget -q --post-data="user=$USER&pass=$PASSWORD&client_id=$client_id&local_ip=$local_ip" -O - 'https://www.privateinternetaccess.com/vpninfo/port_forward_assignment' | head -1`
  echo $json | jq .port
}

EXITCODE=0
PROGRAM=`basename $0`
VERSION=1.0
USER=""
PASSWORD=""

port_forward_assignment

exit 0
