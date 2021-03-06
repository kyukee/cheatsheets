# adding an existing remote repository
clone <repo-url>                  ; note: will create a subdirectory named after the repository

# creating a local repository
init /path/to/directory            create local repo
remote add 'label' 'repo url'      connect to a github repo (for no login use git+ssh://git@github.com/username/reponame.git)
remote rm 'label'                  remove connection to github repo
remote -v                          show current connections

# resetting a file to remote HEAD
fetch --all                        get remote HEAD
reset --hard origin/master         now you can discard the local changes

# discard commits
reset --hard HEAD~n                discard the previous n commits
push origin HEAD --force           the previous reset command for deleting commits is local. this updates the remote repository

# discard recent changes in a file
checkout -- 'filename'             restore to last commit of the file

# adding and removing files
add 'filename'                     add a file to the staging area (* for all) (-u for modified or deleted files)
reset 'filename'                   remove a file from the staging area (* for all)
rm --cached 'filename'             untrack a file
commit -m 'Description'            add staged files to local repo

# look at changes made
status                             current directory status
diff HEAD                          see differences since last commit
log                                show commit history

# working with branches
branch                                                              list local branches
checkout -b 'new branch'                                            create new branch
checkout 'branch name'                                              switch to a different branch
checkout -b 'remote branch' 'name of remote'/'remote branch'        check out a remote branch (remote should be 'origin')
checkout -t 'name of remote'/'remote branch'                        shorter alternative
branch -d 'branch'                                                  delete branch (locally)

# create a tag
checkout -b first-deliver
tag DELIVERY_1
push origin --tags first-deliver:first-deliver

# delete sensitive data from history
filter-branch --force --index-filter "git rm --cached --ignore-unmatch PATH-TO-YOUR-FILE-WITH-SENSITIVE-DATA" --prune-empty --tag-name-filter cat -- --all
git push origin --force --all

# squash last N commits into one
git reset --soft HEAD~3            this is an example for the last three commits
git commit

# push and pull
pull 'label' 'repo branch'         pull current github repo to local repo
push 'label' 'repo branch'         push local changes to github repo
                                   note: use -u to set upstream and next time just write git push/pull without parameters
