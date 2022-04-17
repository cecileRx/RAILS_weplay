const { environment } = require('@rails/webpacker')
const webpack = require("webpack")

environment.plugins.append("Provide", new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    Popper: ['popper.js', 'default']  // we're still using popper.js here but @popper/js/core is also implemented to work properly with Bootstrap 5
}))
module.exports = environment
