the following is a barebones guide on deploying the app to heroku

`sudo snap install heroku --classic`
`heroku login --interactive`
*enter credentials*

`heroku create`
`git push heroku main`

The following three commands fix a webpacker/heroku issue causing deploymnet to fail. It took me 6 hours to fix this -JAS 

`heroku buildpacks:clear`
`heroku buildpacks:set heroku/nodejs`
`heroku buildpacks:add heroku/ruby`

