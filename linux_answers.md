1. Explain the difference between ls -l and ls -a. What specific information does each option provide?
ls -l command (longlisitng format) provides a detailed listing of files and directories showing additional information about each entry such as file type and file size whereas ls -a command includes all files and directories including hidden ones

2. Describe a scenario where using mkdir might fail and how to handle such a failure programmatically.
mkdir(make directory) fails if the user tries to create a directory where he/she does not have sufficient permissions,the user might lack writing permission in the parent directory
to handle this error:fallback and try to create the directory in a different location

3. How can you use the cat command to concatenate the contents of two files into a new file? Provide the command syntax.
syntax: cat file1.txt file2.txt >concatenatedfile.txt

4. What is the primary difference between the cat and touch commands when it comes to file creation?
touch is mainly used to update the access and modification timestamps of a file and if it does not exist it creates this file as an empty file + it does not output the contents of the file 
cat outputs the contents of the files and the concatenated file so the difference is in the display of contents of files

5. Explain the use of wildcards with the cp command to copy multiple files at once. Provide an example.
wildcards are characters used to make copying files without specifying each one individually easier such as */?/[]([1-3]) for example: cp /home/razanhmede/desktop/*.txt /home/razanhmede/documents/ here *.txt specifies all text files that end with .txt extension to be copied.

6. How can the cd command be used to navigate to the parent directory of the current directory?
cd .. is used to navigate to the parent directory of the current directory, we can navigate multiple levels cd ../.. (going back 2 directories)

7. Describe the behavior of the mv command when the destination file already exists. How can you avoid accidental overwrites?
mv is used to move files and directories to a destination file; if this file already exists then we have to avoid ovewriting by using 
mv -i  --> it tells us if we are overwriting the destination file 
mv -n  --> it prevents us from ovewriting the destination file and will end the operation if its overwriting 
mv -b  -->  it creates a backup version from the destination file in case of override 

8. What is the significance of the pwd command in scripting, and how can its output be utilized in a script?
 pwd prints the full path name of the current directory so we know that we are operating in the right location
used mainly in storing the current directory to be able to go back to it later or even use it create a file in the directory instead of always writing the full path

9. Explain the differences between the whereis, whatis, and which commands. When would you use each one?
 whereis : finds the location of the binary executable,source code and manual page files for a specific command
   whatis:   provides a short description about the command and its usage
   which: used to find the exact executable that will be executed from the path 

10. How does the man command differ from the info command in terms of the structure and depth of documentation provided?
- structure and depth:
1- man (manuel) : pages are organized into sections and sections to topics (commands-system calls..) contains text description of command with usage, considered as quick reference with minimal detail
2- info: pages contain nodes and subnodes, contain more detailed description of each command with in depth examples and explanation

11. What does the grep command do, and how can it be used to search for a specific pattern in all text files within a directory?
 grep (Global regular expression print)
 used to search certain patterns in text files for example: grep -r "code" *.txt ---> searches in all text files for the word code if found in the file it returns it in the output 

12. Describe the output of the head and tail commands when used without any options. How can you customize the number of lines displayed?
head : displays the first 10 lines of the provided file 
tail: displays the last 10 lines of the provided file 
by default it's 10 but it could be customized : head -n 15 ... or tail -n 3...

13. How can the tac command be useful in text processing or data analysis tasks? Provide a practical example.
tac is used to display files in reverse order starting from the last line and moving upward to the first line.
this can be useful in data processing such as viewing recent entries starting from the most recent 
OR merging 2 files in reverse order 

14. Explain the purpose of the echo command in scripting and how it can be used to display both static and dynamic content.
echo: display text or dynamic content such as variables
static : echo " Hello RAZAN HMEDE!"
dynamic: var=razan
echo " hello $var"
echo  "thank you" >> file1.txt --> writes to the file 

15. What information does the df command provide, and how can this information be useful for system administrators?
df(disk free) provides information about disk space usage 
output of the command contains: Filesystem / 1K-Blocks/used/ available ...
importance : manage disk usage and identify full systems

16. Compare and contrast the df and du commands in terms of their functionality and typical use cases.
df: displays the disk space used and available on file systems as overview - used to monitor disk usage and availability 
du: displays the disk usage of files and directories - monitor the disk space at the file and directory level and provides detailed output on individual files and directories 

17. How can the ps command be used to identify processes consuming the most CPU resources? Provide the command syntax.
ps : provides information about running processes - used to identify the processes with very high consumption of the CPU 
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu  
eo stands for option and pid/ppid/cmd/mem/cpu are fields to display in the sorted output 
 - stands for descending order of CPU usage 
 + stands for ascending order of CPU usage  

18. Explain the concept of an alias in the context of the alias command. How can aliases improve command-line efficiency?
alias : mechanism to create shortcuts for commands
example for alias :  alias ll ='ls-l'
alias update= 'sudo apt update && sudo apt upgrade'
instead of writing long commands they can replaced by their alias created.

19. What information does the uname command provide, and how can this information be useful for troubleshooting system issues?
uname : unix name 
provides information about the OS such as : kernel name /hostname/ kernel release/kernel version/processor name/ name of OS 
helps in ensuring softwares are compatible with the operating system we are working with 

20. Describe the differences between sudo and su commands in terms of user privilege management. Provide examples of when to use each.
sudo : allows us to execute commands with the privileges of the root user by entering the user's password 
       logs commands execution
       control over the user's execution 
su: allows user to switch to another account including the root account by entering the password 
    does not log command execution
    full access and permissions 
usage example:
sudo --> for security and control purposes 
su -->  for long sessions requiring root access










