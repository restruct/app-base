// More or less relevant references:
// ! --> https://github.com/laravel-mix/laravel-mix/tree/master/docs
// https://laravel.com/docs/5.7/mix
// https://laravel-mix.com/docs/6.0/api
// https://northcreation.agency/laravel-mix-with-silverstripe/
// https://github.com/gorriecoe/silverstripe-mix/blob/master/package.json

// BROWSER targetting: in general by not specifying any browser targets, all (possible) browsers are targetted.
// There doesn't seem to be a (recommended/documented) way to configure specific target browsers via mix.
// Mix uses webpack but apparently doesnt support .browserslistrc (it does support .babelrc for BabelJS)
//    https://fostermade.co/blog/laravel-mix-and-es2015-javascript & https://babeljs.io/docs/en/babel-preset-env
// ## AUTOPREFIXER ## doesn't necessarily need to be configured it seems. If really needed however, it can be:
//    "by adding a browserslist key to your package.json" https://github.com/postcss/autoprefixer#browsers
// Note: "There is a defaults query, which gives a reasonable configuration for most users":
//    "browserslist": [ "defaults" ] (See: https://github.com/browserslist/browserslist#best-practices)
// ## BABELJS ## (Browserslist Integration: https://babeljs.io/docs/en/babel-preset-env.html#browserslist-integration)
// By default @babel/preset-env will use browserslist config sources unless either the targets or ignoreBrowserslistConfig options are set"
// If no targets are specified (either explicitly or by having no browserslist config), Babel will assume you are targeting
// the oldest browsers possible. We recommend setting targets to reduce the output code size. https://babeljs.io/docs/en/babel-preset-env


const dest = 'dist';
const path = require("path");
const mix = require('laravel-mix');
// const webpack = require('webpack');

// See: https://laravel-mix.com/docs/6.0/options
mix.options({
  // processCssUrls: false,
  // fileLoaderDirs: {
  //     fonts: 'fonts',
  // }
});

// this keeps relative image urls in js/scss intact, else they're converted to absolute
// (unless processCssUrls is set to false, but then no images will be copied to dist/images either...)
mix.setResourceRoot('../'); // eg from /css/here.css to /images/* or /fonts/*

// Generate sourcemaps in dev (not in prod)
mix.sourceMaps(null, 'source-map');

// Set the path to which all public assets should be compiled
mix.setPublicPath(dest);

// SASS examples: https://laravel-mix.com/docs/6.0/examples
mix.sass('src/scss/main.scss', 'css')
  .sass('src/scss/editor.scss', 'css')
  .sass('src/scss/cms.scss', 'css')
  // NOTE: fonts.scss gets included in main, editor & cms but also an isolated fonts.css file may be generated to allow for remote inclusion
  // .sass('src/scss/fonts.scss', 'css')
;

// Copy files/folders https://laravel-mix.com/docs/6.0/copying-files
mix.copy( 'src/images/*.*', `${dest}/images`);

// mix.scripts = basic concattenation
// mix.babel = concattenation + babel (ES2015 -> vanilla)
// mix.js = components, react, vue, etc
//   -> include { "presets": ["@babel/preset-react"/@babel/preset-env] } in .babelrc for correct transpilation
//   (or add .vue()/.react() in mix.js, eg:)
// mix.js('client/src/js/main.js', 'client/dist/js/main.js').vue();
// .extract() results in main.js plus separate vendor.js () + manifest.js which all three have to get loaded
// mix.js([ 'client/src/js/one.js', 'client/src/js/two.js', ], 'js/app.js').extract();
mix.js(['src/js/main.js'], 'js').extract();

// Autoload makes a module available as a variable in every other module required by webpack
// Will result in eg jQuery being compiled-in, even though it may be provided externally (see webpack.externals)
mix.autoload({ // Configures webpack's ProvidePlugin
  // jquery: ['$', 'jQuery', 'window.jQuery'], // prepends var $ = require('jquery') to every $, jQuery or window.jQuery
  // underscore: ['_', 'underscore']
});

// Webpack config overrides, mix will deep merge https://laravel-mix.com/docs/2.1/quick-webpack-configuration#using-a-callback-function
mix.webpackConfig(webpack => {
  return {
    // Prevent bundling of certain imported packages and instead retrieve these external dependencies at runtime
    // (the created bundle relies on that dependency to be present in the end-user application environment)
    // Externals will not be compiled-in (eg import $ from 'jQuery', combined with external 'jquery': 'jQuery' means jQuery gets provided externally)
    // Mainly for SS admin modules, for provided externals see: https://github.com/silverstripe/webpack-config/blob/master/js/externals.js
    externals: {
      // 'jquery': 'jQuery', // require("jquery") is external and available on the global var jQuery
      // 'lib/Injector': 'Injector',
    },

    // To display warnings: (eg autoprefixer: Replace color-adjust to print-color-adjust. The color-adjust shorthand is currently deprecated.)
    // stats: {
    //   children: true,
    // },

//     // Devtool option controls if and how source maps are generated -> equivalent of mix.sourceMaps(?)
//     devtool: 'source-map',
//
//     plugins: [
//       // ProvidePlugin: automatically load modules instead of having to import or require them everywhere
//       // ProvidePlugin is equivalent to mix.autoload() so the below seems unnecessary
//       // https://webpack.js.org/plugins/provide-plugin/#usage-jquery
//       new webpack.ProvidePlugin({
//         $: 'jquery',
//         jQuery: 'jquery',
//         'window.jQuery': 'jquery',
//         // _: "underscore",
//         // underscore: 'underscore'
//       })
//     ],
  };
});

// // LiveReload reloads the browser when it detects file changes.
// // BrowserSync injects inject any changes into the browser without reloading (No refresh required, state of document is preserved, saves time).
// // // https://laravel-mix.com/docs/6.0/livereload
// // var LiveReloadPlugin = require('webpack-livereload-plugin');
// // mix.webpackConfig({
// //   plugins: [new LiveReloadPlugin()]
// // });
// // https://laravel-mix.com/docs/6.0/browsersync & https://browsersync.io/docs/options/
// const sitepath = path.join(__dirname, '/../../');
// const parent = path.basename(path.join(sitepath, '../'));
// console.log(sitepath);
// mix.browserSync();
// // if (parent === 'Devsites') {
// //   mix.browserSync({
// //     files: [
// //       'dist/**/*',
// //       'templates/**/*',
// //     ],
// //     proxy: `${path.basename(sitepath)}.test`
// //   });
// // }
