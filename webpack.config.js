/* globals require, module, __dirname */

var path = require("path");
var HtmlWebpackPlugin = require("html-webpack-plugin");

module.exports = {
    entry: "./app/index.js",
    output: {
        path: path.join(__dirname, "public"),
        filename: "app.js"
    },
    module: {
        loaders: [
            { test: /\.elm$/, loaders: ["exports?Elm", "elm"] },
            { test: /\.scss$/, loaders: ["style-loader", "css", "sass"] }
        ]
    },
    elmLoader: {
        dir: "./elm"
    },
    plugins: [
        new HtmlWebpackPlugin({
            title: "StudyTeam",
            hash: true,
            template: "./app/index.html",
            inject: "body"
        })
    ],
    devServer: {
        historyApiFallback: true
    }
};
