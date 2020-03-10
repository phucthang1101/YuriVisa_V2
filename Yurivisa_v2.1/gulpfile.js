const { watch, src, dest, series } = require('gulp');
const sass = require('gulp-sass');
const minifyCSS = require('gulp-clean-css');
const uglify = require('gulp-uglify');
const rename = require('gulp-rename');
const changed = require('gulp-changed');



var SCSS_SRC = './Content/SCSS/**/*.scss';
var SCSS_DEST = './Content/CSS';


function compileScss() {
    return src(SCSS_SRC)
        .pipe(sass().on('error', sass.logError))
        .pipe(minifyCSS())
        .pipe(rename({ extname: '.min.css' }))
        .pipe(changed(SCSS_DEST))
        .pipe(dest(SCSS_DEST));
}

function watch_css() {
    watch(SCSS_SRC, compileScss);
}

exports.default = series(compileScss, watch_css);

