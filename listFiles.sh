#!/bin/bash

#print only the files in a directory
for file in `ls -l * |grep ^- | awk '{print $NF}'`
do
	echo "$file"
done

