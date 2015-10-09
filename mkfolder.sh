#!/bin/bash

#the function of this script is to creat the same folder with the source data's
#and then copy the file to the particular folder
#was used to prepare data
#

#set the source folder
path1=$PWD
echo 'getting the folder name....'
for file in `ls $path1` 
do
    if [ -d $path1/$file ];then
	echo $file >> foldername.txt
    fi
done


mkdir $path1/another
cd another
echo 'read the name of the folder and creat it....'
cat $path1/foldername.txt|while read myline
do
    echo $myline
    mkdir $myline
done

path2=$path1/another
#read the name for each folder in the file
echo 'copy the file....'
cat $path1/foldername.txt|while read myline
do
    #show the name
    #echo $myline
    #copy the file
    cp /$path1/$myline/* /$path2/$myline
done
