#!/bin/bash
while :
do
  maj=$(cl-update -p | awk '/à télécharger/ {print $2}')
  if [ ! -z "${maj}" ] && [ "${maj}" != "0" ]; then
    notify-send -u critical "cl-update : ${maj} mise(s) à jour disponible(s)"
  fi
sleep 86353
done
