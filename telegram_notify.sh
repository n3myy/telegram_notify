#!/bin/sh

botid="xxxxxxxxx:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
chatid="xxxxxxxx"


if [ -n "$SSH_CLIENT" ] ; then
        ip_address=$(echo $SSH_CLIENT | awk '{print $1}')

        fi

date=$(date)
userr=$(whoami)
hostname=$(hostname)
message="$hostname: SSH CONNECTED: $userr@$ip_address | $date"

curl -s -d "chat_id=$chatid&text=$message" https://api.telegram.org/bot$botid/sendmessage > /dev/null
