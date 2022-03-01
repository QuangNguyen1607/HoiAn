const del = require('del');
const gulp = require('gulp');
const { parallel } = require('gulp');
const pug = require('gulp-pug');
const Fiber = require('fibers');
const sass = require('gulp-sass')(require('sass'));
const cssnano = require('cssnano');
const babel = require('gulp-babel');
const uglify = require('gulp-terser');
const concat = require('gulp-concat');
const rename = require('gulp-rename');
const plumber = require('gulp-plumber');
const postcss = require('gulp-postcss');
const prefixer = require('autoprefixer');
const srcmap = require('gulp-sourcemaps');
const cssImport = require('gulp-cssimport');
const sassUnicode = require('gulp-sass-unicode');
const cssDeclarationSorter = require('css-declaration-sorter');
const browserSync = require('browser-sync').create();
const readFileSync = require('graceful-fs').readFileSync;
sass.compiler = require('dart-sass');

///////////////////////////////////
let settings = JSON.parse(readFileSync('./page.json'));
const buildAll = settings.buildAll;
const pageList = settings.page;
///////////////////////////////////

let ArrayHtml = [];

if (buildAll == true) {
	pageList.forEach(page => {
		ArrayHtml.push(page);
	});
} else {
	pageList.forEach(page => {
		if (page.isWorking == true) {
			ArrayHtml.push(page);
		};
	});
};

let singleTaskHtml = Object.keys(ArrayHtml);
///////////////////////////////////

// Task clean folder dist
gulp.task('clean', function () {
	return del(['./dist']);
});

// Task copy fonts
gulp.task('copyFonts', function () {
	let config = JSON.parse(readFileSync('./config.json'));
	let srcFonts = ['./src/assets/fonts/**'];
	return gulp.src(config.font, srcFonts)
		.pipe(gulp.dest('./dist/fonts'));
});

// Task clean images
gulp.task('cleanImages', function () {
	return del(['./dist/img'])
});

// Task copy images
gulp.task('copyImages', function () {
	return gulp.src('./src/assets/img/**')
		.pipe(gulp.dest('./dist/img'));
});

// Start task Html
singleTaskHtml.forEach(function (number) {
	gulp.task('html:' + ArrayHtml[number].name, function () {
		return gulp.src('./src/pages/' + ArrayHtml[number].name + '.pug')
			.pipe(pug({
				pretty: '\t',
			}))
			.pipe(rename({
				basename: ArrayHtml[number].name,
			}))
			.pipe(plumber())
			.pipe(gulp.dest('./dist/'))
			.pipe(browserSync.reload({
				stream: true
			}));
	});
});

gulp.task('processHtml', gulp.series(
	singleTaskHtml.map(function (number) {
		return 'html:' + ArrayHtml[number].name;
	}))
);
// End task Html

// Start task Css
gulp.task('globalCss', function () {
	let config = JSON.parse(readFileSync('./config.json'));
	return gulp.src(config.globalCss, {
			allowEmpty: true,
		})
		.pipe(plumber())
		.pipe(concat("global.min.css"))
		.pipe(postcss([
			prefixer({
				overrideBrowserslist: ['last 4 version', "IE 10"],
				cascade: false,
				stats: ["> 1%, IE 10"]
			}),
			cssnano(),
			cssDeclarationSorter({
				order: 'concentric-css'
			})
		]))
		.pipe(gulp.dest('./dist/css'))
});

gulp.task('processCss', function () {
	let srcSass = [
		'./src/global/_shared/index.sass',
		'./src/components/**/**.sass',
	];
	return gulp.src(srcSass)
		.pipe(srcmap.init())
		.pipe(concat("main.min.sass"))
		.pipe(sass.sync({
			fiber: Fiber
		}).on('error', sass.logError))
		.pipe(sassUnicode())
		.pipe(cssImport())
		.pipe(postcss([
			prefixer({
				env: ['last 4 version', "IE 9"],
				cascade: false,
			}),
			cssnano(),
			cssDeclarationSorter({
				order: 'concentric-css'
			})
		]))
		.pipe(rename({
			basename: 'main',
			suffix: '.min',
			extname: '.css'
		}))
		.pipe(srcmap.write('.'))
		.pipe(gulp.dest('./dist/css'))
		.pipe(browserSync.reload({
			stream: true
		}))
});
// End task Css

// Start task Js
gulp.task('globalJs', function () {
	let config = JSON.parse(readFileSync("./config.json"));
	return gulp.src(config.globalJs, {
			allowEmpty: true
		})
		.pipe(concat('global.min.js'))
		.pipe(uglify())
		.pipe(rename({
			basename: 'global',
			suffix: '.min',
			extname: '.js'
		}))
		.pipe(srcmap.write('.'))
		.pipe(gulp.dest('dist/js'))
		.pipe(browserSync.reload({
			stream: true
		}))
});

gulp.task('processJs', function () {
	let srcJs = ['./src/assets/js/main.js'];
	return gulp.src(srcJs)
		.pipe(srcmap.init())
		.pipe(concat("main.min.js"))
		.pipe(babel({
			presets: ['@babel/env']
		}))
		.pipe(uglify())
		.pipe(rename({
			basename: 'main',
			suffix: '.min',
			extname: '.js'
		}))
		.pipe(srcmap.write('.'))
		.pipe(gulp.dest('dist/js'))
		.pipe(browserSync.reload({
			stream: true
		}));
});
// End task Js

// Task watch
gulp.task('serve', function () {
	browserSync.init({
		notify: true,
		server: {
			baseDir: './dist',
		},
		port: 8000
	}),

	gulp.watch([
		'./src/assets/img/**'
	], gulp.series('cleanImages', 'copyImages')),

	gulp.watch([
		'./src/**/**.pug',
	], gulp.series('processHtml')),

	gulp.watch([
		'./config.json',
	], gulp.series('globalCss', 'globalJs')),
	
	gulp.watch([
		'./src/global/**/**.sass',
		'./src/components/**/**.sass',
	], gulp.series('processCss')),

	gulp.watch([
		'./src/assets/js/main.js'
	], gulp.series('processJs')),

	gulp.watch('./dist').on('change', browserSync.reload)
})
// End task watch

gulp.task('done', function (cb) {
	// console.log('Done!!');
	cb();
})

// Gulp task default
gulp.task('default', gulp.series(
	'clean',
	'copyFonts',
	'copyImages',
	'processHtml', 
	'globalCss',
	'globalJs',
	'processCss',
	'processJs',
	'serve'
))
