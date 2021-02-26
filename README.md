#Upgrade Your environment to Ruby 2.6.6 !!

1. rvm get stable
2. rvm reload
3. rvm gemset create ipos
4. rvm 2.6.6@ipos
5. bundle
6. rvm --ruby-version use 2.6.6@ipos
7. rvm install 2.6.6
8. rvm use 2.6.6
9. rvm gemset create ipos
10. rvm 2.6.6@ipos
11. gem install bundle
12. bundle
13. rvm --ruby-version use 2.6.6@ipos

# GITHUB STEPS


## The workorder to fork and work on your respective parts of the project are as follows:


1. Fork curent project to your personal repository.
2. Create your own AWS C9 Enviroment or equivalant
3. 'git clone '(link to your Github Repository)
4. 'bundle install'
5.  'cd ipos'
6. 'git checkout master'
7. 'git branch '(name of your branch)
8. 'git checkout '(name of your branch)
9. Make your changes to the code
10. 'bin/rails s -b 0.0.0.0' (to run server locally)


## The workorder to return and pull request your part of the project are as follows:

1. Save all files you edited
2. 'git add '(A file you updated or use a "." )
3. 'git commit -m "Add your commets here"'
4. 'git push origin '(name of branch)
5. Create pull-request from your local repository to main on Github


Branches:
1. To Create: git branch "nameofbranchhere"
2. To Checkout: git checkout nameofbranchhere
3. To Show current branch: git branch --show-current
4. To save your changes to your current branch: git add *
5. To create a commit: git commit -m "i changed some stuff"
6. To push commit to github repo: git push origin main 
8. To delete: git branch -d nameofbranchhere
9. See Jeff's video or hit him up on slack with questions

Hey Guys i am sure there is another easy way to do this, but I highly recommend doing the following before starting a new feature/project:

1. Ensure you have no unsaved work on your environment.
2. Delete the ipos folder in your environment
3. open a new terminal
4. git clone https://github.com/CitadelCS/ipos
5. enter in your credentials
6. cd ipos
7. git branch enteradescriptivebranchnamehere
8. git checkout enteradescriptivebranchnamehere
Now you can start your work without worrying about git repo conflicts. When you are done, and you have made sure your feature is stable do:
1. git add .
2. git commit -m "I made these changes"
3. git push origin enteradescriptivebranchnamehere
4. enter in your credentials
5. From here, open a pull request and have a team member look over your code before merging, for safety.
thanks yall!

# If you have any questions or isses, please contact Ryan Maharrey or Dr. V
