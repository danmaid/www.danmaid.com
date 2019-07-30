const webpack = require('webpack')

module.exports = {
    mode: 'production',
    entry: {
        "common": './src/common.js',
        "dm-gauge2": "./src/dm-gauge2.js",
        "dm-zawa": "./src/dm-zawa.js"
    },
    output: {
        filename: "[name].js",
        path: `${__dirname}/public/tags/`
    },
    plugins: [
        new webpack.ProvidePlugin({ riot: 'riot' })
    ],
    module: {
        rules: [
            { enforce: 'pre', test: /\.tag$/, exclude: /node_modules/, loader: 'riot-tag-loader', query: { type: 'none' } },
            { test: /\.js$|\.tag$/, exclude: /node_modules/, loader: 'babel-loader' }
        ]
    },
    devServer: {
        contentBase: 'public',
        watchContentBase: true,
        inline: true
    }
}
