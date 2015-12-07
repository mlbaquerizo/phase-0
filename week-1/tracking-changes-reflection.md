####How does tracking and adding changes make developers' lives easier?

Tracking and adding changes allows developers to continuously develop their
product without worrying about any changes causing issues. Github makes this
process easier by graphically showing the process of tracking changes to anyone
involved in the project.


####What is a commit?

A commit is a stable snapshot of code that is saved for the developer to go back
to in case future changes need to be reversed. Commits are used as checkpoints to
save any good changes.


####What are the best practices for commit messages?

The commit message is a summary of changes made leading up to that commit.Verbs
should be used in the imperative tense. The heading of the commit message should
not exceed 50 characters. The body should be wrapped to 72 characters and give a
more detailed summary.


####What does the HEAD^ argument mean?

HEAD^ is the argument name given to the commit made before the most recent commit.
HEAD would be the most recent/current commit. HEAD~3 and HEAD~4 are the 3rd and
4th commit from HEAD, and so on.


####What are the 3 stages of a git change and how do you move a file from one stage
to the other?

- Untracked : A file is created or changed inside the branch, but not ready to commit.
The file can be created with the touch command and modified inside a text editor.
- Staged to commit : A file is ready to commit. Use git add [file name].
- Commit : git commit -m "Commit message" or git commit -v will commit the changes.


####Write a handy cheatsheet of the commands you need to commit your changes?

- git checkout -b [new branch] : Create new branch to work from.
- git status : Check status of changes made to files.
- git add [file] : Add the file to tracked files to be committed
- git commit -m "Commit message" : Commit changes and include a descriptive
message
- git checkout [branch name] : work from specified branch
- git pull origin master : Fetch changes from remote repository (Github) and
merge those changes to local repository
- git merge master : merge changes from master branch to current branch.
- git push origin [new branch] : Push changes from local new branch to remote
(Github)


####What is a pull request and how do you create and merge one?

- A pull request requests code to be merged from a feature branch to the master
branch. This is done once a commit is made. The feature branch is pushed to
Github via the terminal by the following command:

$ git push origin [feature-branch]

- The pull request is then made on Github. Github will recognize that a branch was
pushed in, and there will be a link to pull request. Click that.

- Your base branch should be the master, the compare branch should be the feature.

- Fill in the description for what changes were made, and make the pull request.

- Once those changes are reviewed, they can be merged with the "Merge pull request"
link.


####Why are pull requests preferred when working with teams?

Pull requests are preferred so that other members of your team can check your work.
It is good practice to have another developer review and merge your code.