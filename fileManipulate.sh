#!/bin/bash

#method to append a new line in the file only of the user wishes to do so. A prompt will be generated asking for user's choice.
manipulate(){
	echo `cat $fileName`
	echo "---------"
	while true
	do
	echo -e "Press y/Y to add new line\nPress n/N to not add new line\n"
	read -p "Want to add new line? [Y/N] " ch
	case $ch in
	[yY] )
		read -p "Add some new line: " newLine
		echo $newLine >> $fileName
		echo "New line added"
		echo "---------"
		echo `cat $fileName` ;;
	[nN] )
		echo "No line added"
		echo `cat $fileName`
		break ;;
	* )
		echo "Enter valid input " ;;
	esac
	done
	wordSearch	
}
#method to search for a word in the file
wordSearch(){
	read -p "Want to search for a word? [Y/N] " choice
	case $choice in
	[yY] )
		read -p "Enter a word to search from file: " word
		echo `grep -i "$word" $fileName` ;;
	[nN] )
		echo "No search" ;;
	* )
		echo "Enter valid input " ;;
	esac
}
#pass a file name as argument to the shell script, if that file does not exist then new file with that name will be created 
fileName=$1
if [ -f "$fileName" ]
then
	echo "file exists"
else
	echo `touch $fileName`
	echo "New file created"
fi
manipulate
	
