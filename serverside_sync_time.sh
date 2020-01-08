#!/bin/sh
for id in `mysql -B -N -u YouLogin -pYouPass YouDB -e 'select id from YouTable where (now() - tl_answ + 40000) > 60;'`
do
  mysql -B -N -u YouLogin -pYouPass YouDB -e "update YouTable set status=0 where id_client = $id and type = 'SYNC.TIME' order by id desc limit 1;"
#  echo "$id $(date)" >> ~/logs/$(date "+%F")".log"
done

#TODO in crontab * *	* * *	YouUser	/YouPath/serverside_sync_time.sh

#TODO replace all "you..."."You..."
