const path = require("path");
const merge = require("webpack-merge");

module.exports = {
  module: {
    rules: [
      {
        test: /\.elm$/,
        exclude: [/node_modules/, /elm_stuff/],
        loader: "elm-webpack-loader",
      },
    ],
  },
};
