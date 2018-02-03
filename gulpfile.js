var gulp = require('gulp');
var sass = require('gulp-sass');

gulp.task('compileSass',function(){
	gulp.src('./src/sass/*.scss')
	.pipe(sass({outputStyle:'expanded'}).on('error', sass.logError))
	.pipe(gulp.dest('./src/css/'))
});


var browserSync = require('browser-sync');

gulp.task('server',function(){
	browserSync({
		port:1008,
		proxy:'http://localhost:17080',
		files:['./src/**/*.html','./src/css/*.css','./src/api/*.php']
	});
	gulp.watch('./src/sass/*.scss',['compileSass']);
});
