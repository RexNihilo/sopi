const { webpackConfig } = require('@rails/webpacker')

module.exports = webpackConfig

{ test: /\.vue$/, include: /src/, loader: 'vue-loader', options: { loaders: { js: 'awesome-typescript-loader?silent=true' } } }
