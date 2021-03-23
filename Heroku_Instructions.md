the following is a barebones guide on deploying the app to heroku

1. `sudo snap install heroku --classic`
2. `heroku login --interactive`
3. *enter credentials*
4. `heroku create`
5. `heroku buildpacks:clear`
6. `heroku buildpacks:set heroku/nodejs`
7. `heroku buildpacks:add heroku/ruby`
8. `git branch herokupleasework`
9. `git checkout herokupleasework`
10. `git add .`
11. `git commit -m "please work"`
12. `git push heroku herokupleasework:main`
