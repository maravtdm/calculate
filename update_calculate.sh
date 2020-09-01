#!/bin/bash
while :
do
  cl-update -p > /tmp/update_result.txt
  maj=$(cat /tmp/update_result.txt | awk '/à télécharger/ {print $2}')
  if [ ! -z "${maj}" ] && [ "${maj}" != "0" ]; then
    notify-send -u critical "cl-update : ${maj} mise(s) à jour disponible(s)"
    exit 0
  fi
sleep 86353
done
