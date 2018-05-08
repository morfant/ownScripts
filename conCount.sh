#!/bin/bash
echo "Connection counting on Port: $1 "

#netstat -ant | grep :$1 | grep ESTAB | awk '{print $5}' | cut -f 1 -d : | sort | uniq | wc -l
netstat -ant | grep :$1 | grep ESTAB | uniq | wc -l
