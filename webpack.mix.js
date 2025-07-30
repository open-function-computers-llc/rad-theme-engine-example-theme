let mix = require('laravel-mix');

mix.js('src/js/app.js', 'dist')
    .postCss('src/css/app.css', 'css', [
        require('@tailwindcss/postcss'),
    ])
    .setPublicPath('dist')
    .version();
