the following is a barebones guide on deploying the app to heroku

1. `sudo snap install heroku --classic`
2. `heroku login --interactive`
3. *enter credentials*
4. `heroku create`
5. `git push heroku main`

The following three commands fix a webpacker/heroku issue causing deploymnet to fail. It took me 6 hours to fix this -JAS 

`heroku buildpacks:clear`
`heroku buildpacks:set heroku/nodejs`
`heroku buildpacks:add heroku/ruby`

