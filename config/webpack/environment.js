const { environment } = require('@rails/webpacker')

module.exports = environment

//Try adding this to your config/webpack/environment.js
const webpack = require('webpack')
environment.plugins.prepend('Provide',
    new webpack.ProvidePlugin({
        $: 'jquery/src/jquery',
        jQuery: 'jquery/src/jquery'
    })
)
