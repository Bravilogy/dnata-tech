const path = require('path');

const isProd = !Boolean(process.env.WEBPACK_SERVE);
const loaderConfig = {
  loader: 'elm-webpack-loader',
  options: {
    debug: false,
    optimize: isProd,
    cwd: __dirname,
  },
};

const elmLoader = !isProd
  ? [{ loader: 'elm-hot-webpack-loader' }, loaderConfig]
  : [loaderConfig];

module.exports = {
  mode: isProd ? 'production' : 'development',
  entry: './src/app.js',
  output: {
    publicPath: '/',
    path: path.resolve('public'),
    filename: 'bundle.js',
  },
  devServer: {
    port: 8000,
    hot: 'only',
  },
  module: {
    rules: [
      {
        test: /\.elm$/,
        exclude: [/elm-stuff/, /node_modules/],
        use: elmLoader,
      },
    ],
  },
  resolve: {
    extensions: ['.elm', '.js'],
  },
  plugins: [],
};
