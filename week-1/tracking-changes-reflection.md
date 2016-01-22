##Tracking Changes Reflection

**How does tracking and adding changes make developers' lives easier?**

Tracking and adding changes makes developers lives easier because if the code is static and does not allow any changes to be made, adding features and troubleshooting bugs will be exteremely difficult. The fact that developers can make changes and updates when needed makes software very flexible.  The issue then becomes how will developers track and manage that change which is why version control was developed.


The ability to track changes adds transparency and accountability to the code.  As the code is being developed and changes are made a robust version control allows developers to understand why changes were being made (assuming clear messages are added in association to the changes).  If issues arise from the code, developers have the option of reverting back to a previous version of code that was tracked. Additionally, the changes that are tracked are assigned to a particular user.

**What is a commit?**

In the context of Git, a commit is a snapshot of the code changes at a given point in time.

**What are the best practices for commit messages?**

A commit message should be written in imperative, present tense.  In terms of the structure, a commit message is composed of a subject and body.  The subject should be a concise summary of the changes that is commonly 50 characters or less.  A hard return with an empty line should be made to seperate the subject from the body. The body of the commit message should provide additional information including the context of the current state of the code, the associated issues, and the changes that are made.  These commit messages become helpful when a developer looks back and reviews changes.  Instead of having to read through all the code changes the developer should be able to get a good understanding by glancing through the commit message.

**What does the HEAD^ argument mean?**
HEAD^ is the previous commit that was made.

**What are the 3 stages of a git change and how do you move a file from one stage to the other?**
1.Staged
  A.I will go to working directory I plan on adding new changes.  When a new file has been added it will not currently be tracked by git. To get git to start tracking the file I must provide the following commands in bash: git add "name of the file".  Doing so will add the file to the staging area
2.Modified:
  A. Once the file has been added to git staging area for tracking, I can make any changes to the file.
  B. When I hit git status, I will see that the file has been modified; however the modified file is still not being tracked by git as it has not been committed.
3.Committed
  A. To commit the file to git I would type in the following commands in bash: git commit -m "the change message"
  B. If everything goes as planned then the changes will be commited to git

**Write a handy cheatsheet of the commands you need to commit your changes?**
git status: provides an overview of the status of changes
git log: provides a historical list of changes
git pull: pulls files to synchronize the changes made
git checkout -b "branchname": creates a new branch and makes it the current working branch
git add: add file so that it cam be tracked
git commit -m "commit message": takes a snapshot of the changes and allows users to add a message of the change made
git push origin "branchname": uploads the changes to github may require username/password
git checkout master: makes the master branch the current working directory
git fetch origin master: downloads all history from the origin master repo
git merge origin/master: combines the changes to the master branch

**What is a pull request and how do you create and merge one?**
A pull request allows the developer making the request to let other collaborators know that the changes that he/she made and ready to be review and merged into the master.

To initiate a pull request one would:
1. Make sure that the changes have been pushed to GitHub
2. Click the "Compare & pull request" button on GitHub
3. Check to ensure the base branch is the "master" and the compare branch is the branch with the changes you intend to merge
4. Provide the necessary information to open a pull request including the name and description.
5. Click "create pull request"
6. Review the changes that were made.  GitHub has the functionality to show what lines have been added and deleted making it easier to review the changes.
7. After the review is complete, click "merge pull request" and "confirm"

**Why are pull requests preferred when working with teams?**
Pull requests are preferred when working with a team because it provides a second line of defense by having another teammate review the code before it is merged to the master. The other individual will also be responsible for merging the changes to the master branch. It is not good practice to add code changes directly to the master branch.  Doing this could lead to potential errors.