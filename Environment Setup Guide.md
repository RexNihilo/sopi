First Time Environment Configuration Guide. 

1. Goto [AWS](https://us-east-2.console.aws.amazon.com/cloud9/home?region=us-east-2)
2. Click __Create Environment__
3. __Name__: ipos (This does not matter, name it anything)
4. __Next Step__
5. __Environment Settings__: Create a new EC2 instance for environment (direct access)
6. __Environment Settings__: t2.micro (1 GiB RAM + 1 vCPU)
7. __Environment Settings__: Ubuntu Server 18.04 LTS
8. __Next Step__
9. __Create Environment__
10. Right Click environment folder (Main directory folder) -> New File -> name it “resize.sh”. Open it
11. Goto New Tab [AWS Environment Config Guide](https://docs.aws.amazon.com/cloud9/latest/user-guide/move-environment.html)
12. Copy Script under “Resize an Amazon EBS volume used by an environment”

13. Paste into resize.sh you just created. 
14. __File__ -> __Save all__
15. Goto Terminal, if terminal is not open then __Window__-> __New Terminal__ (or press Alt-T)
16. `sh resize.sh 20`
17. `git config --global user.email “email@example.com”`
18. Check to ensure your email is correct: `git config --global user.email`
19. `git clone https://github.com/CitadelCS/ipos`
20. `rvm get stable`
21. `rvm install "ruby-2.6.6"`
22. `cd ipos`
23. `rvm get stable`
24. `rvm install "ruby-2.6.6"`
25. `gem install bundle`
26. `sudo apt-get install postgresql-contrib libpq-dev`
27. `y` then __Enter__
28. `bundle install`
29. `bundle exec figaro install`
30. `y` then __Enter__
31. Goto ipos-> config-> application.yml
32. Add these two lines to the application.yml file:
33. `PG_USER: "pg-user"`
34. `PG_PASS: "pg-pass123"`
35. File -> Save all
36. `sudo -u postgres createuser -s pg-user`
37. `sudo -u postgres createdb pg-user`
38. `sudo su postgres`
39. `psql`
40. `ALTER USER "pg-user" WITH SUPERUSER;` *should see ALTER ROLE afterwards*
41. `\q`
42. `exit`
43. `sudo -u postgres psql`
44. `\password pg-user`
45. `pg-pass123`
46. `pg-pass123`
47. `\q`
48. `bin/rails db:create db:migrate`
49. `curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -`
50. `echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list`
51. `sudo apt update && sudo apt install yarn`
52. `bin/yarn install`
53. `bin/rails webpacker:install`
54. `y`
55. `y`
56. `rails webpacker:install:stimulus` <---- This is new, 22 March 2021
57. `rails active_storage:install` <---- This is new, 22 March 2021
58. `rails action_text:install` <---- This is new, 22 March 2021
59. `bin/rails db:migrate`
60. `rails db:seed`
61. `bin/rails s`
62. Goto __Preview__-> __Preview Running Application__
63. Copy the “config.hosts << xxxxxxxx” in the error message
64. Goto __ipos__->__config__->__environments__->__development.rb__
65. Paste the “config.hosts << xxxxxxxx”form the error message under the Rails.application.configure do portion.
66. __File__->__Save all__
67. Exit server with ctr+C
68. `bin/rails s`
69. Goto __Preview__-> __Preview Running Application__
70. Hit the double box icon on the integrated view screen to open preview in a new tab
*You should see the index page at this point, if not something is wrong*
71. git branch Mybranchnamegoeshere *make your git branch name descriptive*

Useful links (i like to have these open in other tabs):
[Ruby on Rails Guide](https://guides.rubyonrails.org/getting_started.html)
[Github Branch Crash Course](https://www.atlassian.com/git/tutorials/using-branches)
[video of environment setup](https://www.youtube.com/watch?v=IwRPcyY891g)
[IPOS github](https://github.com/CitadelCS/ipos)

