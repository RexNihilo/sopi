const { webpackConfig } = require('@rails/webpacker')

module.exports = environment
module.exports = webpackConfig

const VueLoaderPlugin = require('vue-loader/lib/plugin')
environment.plugins.append(
  'VueLoaderPlugin',
  new VueLoaderPlugin()
)