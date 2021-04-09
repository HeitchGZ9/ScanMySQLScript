#! /bin/bash
#This script is desing to perform a scan over MySQL

echo "Enter the first 3 octects of IP using this format XX.XX.XX :"

read firstIP

echo "Enter the last octect of the IP :"

read lastIP

echo "Enter the port number or just - to scan all ports :"

read port

nmap -sT $firstIP.$lastIP -p $port >/dev/null -oG MySQLscan

cat MySQLscan | grep open > MySQLscan2

cat MySQLscan2



