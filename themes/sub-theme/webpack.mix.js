const mix = require('laravel-mix');
const dest = 'dist';

mix.setResourceRoot('../');
mix.setPublicPath(dest);
mix.sourceMaps(null, 'source-map');

mix.sass('src/scss/main.scss', 'css');

mix.copy( 'src/images/*.*', `${dest}/images`);

mix.js(['src/js/main.js'], 'js').extract();
