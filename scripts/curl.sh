#!/bin/bash

rm -f result.html
#URL='https://play.google.com/store/apps/details?id=com.movefastcompany.bora&gl=kr'
URL='https://play.google.com/store/apps/details?id=com.movefastcompany.bor&gl=kr'
curl "$URL" -o ./result.html
STATUS_CODE=`curl -s -o /dev/null -w "%{http_code}\n" "$URL"`
echo "$STATUS_CODE"
if [ $STATUS_CODE = '200' ]
then
  echo 'success'
  exit 0
else
  echo 'failure'
  exit 1
fi
