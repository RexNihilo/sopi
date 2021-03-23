const { webpackConfig } = require('@rails/webpacker')

const VueLoaderPlugin = require('vue-loader/lib/plugin')
environment.plugins.append(
  'VueLoaderPlugin',
  new VueLoaderPlugin()
)

module.exports = environment
module.exports = webpackConfig

