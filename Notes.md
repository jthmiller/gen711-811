

To get new course files added to your repository later, you will need to add the original repository (the one you forked) as a 'remote' [see here for help](https://stackoverflow.com/questions/3903817/pull-new-updates-from-original-github-repository-into-forked-github-repository),[and here](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo)  
To add updates/new files from the gen711-811 repo, copy and paste these lines into terminal on RON:
```
cd $HOME/gen711-811
git remote add upstream https://github.com/jthmiller/gen711-811.git
git fetch upstream
git merge upstream/master master
```
The first line is to get you back to your home directory just in case you switched. 
The second is to go looking for any changes that I might have made in my copy of 'gen711-811'
The third is to get any of those changes
The fourth is to merge my changes 'upstream/master' with your 'master'

Note, git merge is like "git pull" which is fetch + merge. Or, better, you can replay your local work on top of the fetched branch like a "git pull --rebase"
```
git rebase upstream/master
```



1. Ensure all your local changes are committed to your current branch.
- Save all your vscode additions, and commit them. 
2. Fetch the latest updates from the remote:
```git fetch origin```
3. Rebase your changes onto the updated remote branch
```git rebase origin/main```
4. Resolve any conflicts: If conflicts arise during the rebase, Git will pause the process and prompt you to resolve them. After editing the files to resolve the conflicts, use:
```
git add .
git rebase --continue
```
#### Resolving Conflicts
In both scenarios, if the same lines of code were changed in both your local work and the remote updates, Git will indicate a conflict. You must manually edit the conflicted files to choose which changes to keep. Your editor will show markers (like <<<<<<< and >>>>>>>) to help you identify the conflicting sections. 
After resolving the conflicts, add the file(s) and continue the operation as described above. 










