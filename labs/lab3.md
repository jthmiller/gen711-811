# Lab3 - 2/6/26

## Before lab begins
1. Open up vscode
2. Control + shift + 'p' to open command prompt (command + shift + p on apple)
3. Start typing 'Connect to...' and the 'Connect current window to host' menu item will pop up. Select it
4. If asked, connect to 'ron.sr.edu host'
5. Enter your RON username if prompted
6. Enter your RON password when prompted
7. Go to 'File --> Open folder'
8. Select your 'gen711-811' directory
9. If you haven't done so already, save your workspace to this directory (File --> save directory as --> enter)
10. Take your notes in 'Markdown' format. See the readme.txt for taking notes for this lab below. 

### Your Notes Here: 
Seperate notes by an empty line, or they'll get pasted together

- Using a dash is helpful for lists
1. And numbers for lists

The pound sign is used for 'sections'. A single pound (or hashtag) in front of a word makes it appear bigger/bold to show a new section. See below

# My Notes:

To change directories, use 'cd' and then hit tab two times to see directories in my current directory





### Complete the questions below when intrstructed. Push the changes to this document to recive credit for attending the lab

#### 1. What are 3 ways to change directories to your home directory from the  untrimmed_fastq directory?
1. cd $HOME
2. cd ../../../
3. cd /home/users/kac1224
4. cd ~

#### 3b. How many programs in /bin 
2. Do each of the following tasks from your current directory using a single ls command for each:
    - List all of the files in /bin that start with the letter ‘c’.
    - List all of the files in /bin that contain the letter ‘a’.
    - List all of the files in /bin that end with the letter ‘o’.
    - Bonus: List all of the files in /bin that contain the letter ‘a’ or the letter ‘c’.

#### Answers here
Start with the letter c: ls /bin/c* OR ls /bin/ | grep '^c'

Start with the letter a: ls /bin/a* OR ls /bin/ | grep '^a'

Start with the letter o: ls /bin/o* OR ls /bin/ | grep '^o'

Contain the letter ‘a’ or the letter ‘c’ ???

#### What command/commands would you use to find the line number in your history for the command that listed all the '.fastq' files using the absolute path. Paste your answer below.
/home/users/kac1224/gen711-811/shell_data/untrimmed_fastq/*fastq to list files, then history | grep '/home/users/kac1224/gen711-811/shell_data/untrimmed_fastq/*fastq' 