---
title: "Lab 5"
author: "Jeffrey Miller"
date: "2026 Feb 20"
output: pdf_document
---


### Today
1. Review
2. Permissions
3. Conda environments
4. Running Fastqc
5. Redirection (if there is time)

:::::::::::::::::::::::::::::::::::::::: keypoints

- You can view file permissions using `ls -l` and change permissions using `chmod`.
- The `history` command and the up arrow on your keyboard can be used to repeat recently used commands.
- Conda environments simplify reporducability, dependencies and sharing environments.

::::::::::::::::::::::::::::::::::::::::::::::::::


:::::::::::::::::::::::::::::::::::::::: review

- You can view file contents using `less`, `cat`, `head` or `tail`.
- The commands `cp`, `mv`, and `mkdir` are useful for manipulating existing files and creating new directories.

### Quality scores. Highest score for a base is 41
Quality encoding: !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJ
                   |         |         |         |         |
Quality score:    01........11........21........31........41

::::::::::::::::::::::::::::::::::::::::::::::::::

*Warm ups: What is the last read in the SRR2097977.fastq file? How confident are you in this read?
A: 
GGGTAGGTATTACTCAGGACGAGGCGGTCGTGCCAC
+SRR097977.249 209DTAAXX_Lenski2_1_7:8:3:441:292 length=36
C:CCC::CCCCCCCC<8?6A:C28C<608'&&&,'$

C = 34 (14) = 34 x 14 = 476
: = 25 (4) = 25 x 4 = 100 
< = 27 (2) = 2 x 27 = 54 
8 = 23 (3) = 3 x 23 = 69
? = 30 (1)          = 30 
6 = 21 (2) = 2 x 21 = 42 
A = 32 (1)          = 32 
2 = 17 (1)          = 17 
0 = 15 (1)          = 15 
' = 6 (2)           = 12 
& = 5 (3)           = 15 
, = 11 (1)          = 11 
$ = 3 (1)           = 3 
36 x 41 = 1476

How big are your fastqs? (Hint: Look at the options for the ls command to see how to show file sizes.)
- hint, it involves 'ls'. See if you can do it using a relative and absolute path
- another hint: There is an option to make it easy to read the file size. Use one of the two methods to find it
A: SRR097977.fastq has a file size of 47 Kilobytes and SRR098026.fastq has a file size of 43 Kilobytes 



### EXERCISE 5.1
Starting in the shell_data/untrimmed_fastq directory, do the following:

Make sure that you have deleted your backup directory and all files it contains.
Create a backup of each of your FASTQ files using cp. (Note: You’ll need to do this individually for each of the two FASTQ files. We haven’t learned yet how to do this with a wildcard.)
Use a wildcard to move all of your backup files to a new backup directory.
Paste the code you used to do each step between the \'\'\' below:


```
rm -Rf backup/
mkdir backup/
cp SRR097977.fastq backup/SRR097977.fastq
cp SRR098026.fastq backup/SRR098026.fastq
```

### File Permissions Help
The first part of the output for the `-l` flag gives you information about the file's current permissions. There are ten slots in the
permissions list. The first character in this list is related to file type, not permissions, so we'll ignore it for now. The next three
characters relate to the permissions that the file owner has, the next three relate to the permissions for group members, and the final
three characters specify what other users outside of your group can do with the file. We're going to concentrate on the three positions
that deal with your permissions (as the file owner).

![](fig/rwx_figure.svg){alt='Permissions breakdown'}

Here the three positions that relate to the file owner are `rw-`. The `r` means that you have permission to read the file, the `w`
indicates that you have permission to write to (i.e. make changes to) the file, and the third position is a `-`, indicating that you
don't have permission to carry out the ability encoded by that space (this is the space where `x` or executable ability is stored, we'll
talk more about this later).

### EXERCISE 5.2
Change the permissions on all of your backup files to be write-protected.

```
cd backup/
ls -l -h
chmod -w SRR097977.fastq 
chmod -w SRR098026.fastq
ls -l -h

```

How do you know they are write protected?
A: The write protections are removed as the 'w' from the permissions line is no longer present when the -l command is used in the backup file. 


### EXERCISE 5.3: CONDA ENVIRONMENTS AND PROGRAMS
After loading a conda environment, where is the program 'fastqc' stored?
The fastqc program is stored in the untrimmed_fastq directory. 
```
conda activate genomics 
fastqc *.fastq*
mkdir fastqc_untrimmed_reads 
unzip SRR097977_fastqc.zip 
unzip SRR098026_fastqc.zip
mv SRR097977_fastqc.zip fastqc_untrimmed_reads/
mv SRR098026_fastqc.zip fastqc_untrimmed_reads/
```

### Explore the fastqc output. Which samples failed at least one of FastQC’s quality tests? What test(s) did those samples fail?
Both samples failed at least one of the FastQC's quality test.  The SRR098026.fastq sample failed the per base sequence quality
per sequence quality scores, per base seqeunce content, per sequence GC content, per base N content, and overrepresented sequence tests.
The SRR97977.fastq sample failed the per base sequence quality, per base sequence quality content, and per sequence GC content tests.

:::::::::::::::::::::::::::::::::::::::: keypoints
- Use `which` for commands/programs to see where they are installed
- You can view file permissions using `ls -l` and change permissions using `chmod`.
- The `history` command and the up arrow on your keyboard can be used to repeat recently used commands.
- Explain what a conda environment is, and how to activate and deactivate it

::::::::::::::::::::::::::::::::::::::::::::::::::