#!/bin/bash 

#first check for missing or invalid  directory paths before starting the count 
if [ -z  "$1" ];then  # $1 is  the directory path provided by the user
echo "Attention!Error Directory path is not provided to proceed!"
fi

if [ ! -d  "$1" ];then
echo "Attention!Error The directory path provided is invalid"
fi
#After we checked that the directory path provided is valid we store the directory for usage
directory=$1;
#Initialize the counters:nbof directories ,regular files,symbolic links
nbdir=0
nbsymblinks=0
nbfiles=0

while IFS= read -r -d '' file ; do # -r prevents read from interpreting backslashes as escape characters, -d sets the delimeter to a  null character
 case $(stat -c '%F' "$file") in #stat retreives file status information in the form of regularfiles..
      directory) (( nbdir++));; #based on the output of stat we increment the file type 
      "regular file") ((nbfiles++));;
      "symbolic link") ((nbsymblinks++));;
 esac
done < <(find "$directory" -print0) #using the find  command we search in the directory provided for all directories and files 
# displaying the numbers of directories,files and links
# -print0 prints the files names in the output seperated by a null character/0 instead of the default printing method which is each file name on a line

echo "Directories: $(( nbdir -1))" #subtract the root directory
echo "Regular files:  $nbfiles"    #print the number of regular files
echo "Symbolic links: $nbsymblinks" #print the number of files as links 

exit 0

