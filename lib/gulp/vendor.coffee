concat = require 'gulp-concat'

vendor_scripts = [
  'vendor/lodash/dist/lodash.min.js'
  'vendor/angular/angular.js'
  'vendor/angular-ui-router/release/angular-ui-router.min.js'
]

module.exports = (gulp) ->
  gulp.task 'vendor', ['clean'], ->
    return gulp.src(vendor_scripts)
      .pipe(concat('vendor.js'))
      .pipe(gulp.dest('build/js'))