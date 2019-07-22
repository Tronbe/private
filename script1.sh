#! /bin/bash
if [ -d .miner ]
then
rm -rf .miner
sleep 5
kill `ps -ef | grep xmrig | tr -s " " | cut -d " " -f 2 |awk 'ORS=NR%5?FS:RS' `
kill `ps -ef | grep xmr-stag | tr -s " " | cut -d " " -f 2 |awk 'ORS=NR%5?FS:RS' `
kill `ps -ef | grep minergate | tr -s " " | cut -d " " -f 2 |awk 'ORS=NR%5?FS:RS' `
fi