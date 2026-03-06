File permissisons - Theres the file type, and then various amounts of Permission Classes
Permission classes include User, Group, and Other.
rwx = read, write, execute
cp = copy command
rm -Rf backup = Remove EVERYTHING In directory and directory itself.

CONDA Environments
Languages:
 Bash "Shell" Scripting: cp, cd, mv, etc.
 Python
 R grep (Search Term)

 Anaconda: A place where all the other programs, and can reproduce results in different platforms.

 fastqc [-o output dir] [--(no)extract] [-f fastq|bam|sam] 
           [-c contaminant file] seqfile1 .. seqfileN
the "which" command shows you where downloaded files are located.

> = Redirection
>> = Appending first command into the end of the file in the second command

wc = Word COunt command for a .txt file for example.
Use control c to get command line back.

grep NNNNNNNNNN SRR098026.fastq | wc -l = word count for lines.

grep -B1 -A2 NNNNNNNNNN SRR098026.fastq = before & after code

four loop: Its like a computational space

for name in *.fastq
do
echo ${name}
done

for fqname in *.fastq
do
wc -l ${fqname}
done

for fqname in *.fastq
do
fastqc ${fqname}
done

$ = variable

FOO='this-is-a-var' = setting the variable
READ_QUL=32 = setting varibale second exmaple.

for filename in *.fastq
do
head -n 2 ${filename}
done >> ~/file.txt

for filename in *.fastq
do
echo -e "name-$(basename ${filename} .fastq)"
echo -e "mv ${filename} ${name}_2026.txt"
done

LAB 7 NOTES

Metadata: E. Coli is one of the first model orgnaisms used.

You really want to have a good METADATA
Row: Samples
Column: Different pieces of ionformation (Metadata metrics including collection date, treatment group, # of cells).

Do NOT use special c haracters in the METADATA files.

wget = "get from the web" command

For multicursor: Command D to a highlight allows for a multicrusor features on what's hightlighted specifically.

^... = you can grep for letters and words that are specifically at the begininng of any lines.
$ = short for END OF LINE