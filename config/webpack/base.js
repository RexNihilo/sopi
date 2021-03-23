const { webpackConfig } = require('@rails/webpacker')

module.exports = webpackConfig

const VueLoaderPlugin = require('vue-loader/lib/plugin')
webpackConfig.plugins.append(
  'VueLoaderPlugin',
  new VueLoaderPlugin()
)