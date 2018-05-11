const webpack = require('webpack')

module.exports = {
    mode: 'production',
    entry: {
        "dm-tags": './index.js'
    },
    // 出力の設定
    output: {
        // 出力するファイル名
        filename: "[name].js",
        path: __dirname + '/../'
    },
    plugins: [
        new webpack.ProvidePlugin({ riot: 'riot' })
    ],
    module: {
        rules: [
            { enforce: 'pre', test: /\.tag$/, exclude: /node_modules/, loader: 'riot-tag-loader', query: { type: 'none' } },
            { test: /\.js$|\.tag$/, exclude: /node_modules/, loader: 'babel-loader', query: { presets: ['es2015'] } }
        ]
    }
}
