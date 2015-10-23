#!/bin/bash

#the function of this script is to copy the .mat file outside

#set the source folder
path1=$PWD
echo 'getting the folder name....'
for file in `ls $path1` 
do
    if [ -d $path1/$file ];then
	echo $file >> foldername.txt
    fi
done



mkdir $path1/copyfile
path2=$path1/copyfile
#read the name for each folder in the file
echo 'copy the file....'
cat $path1/foldername.txt|while read myline
do
    #show the name
    #echo $myline
    #copy the file
    echo 'copy the file: '$myline
    cp $path1/$myline/*  /$path2
done
