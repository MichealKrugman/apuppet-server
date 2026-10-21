#!/usr/bin/env sh

npm init --yes
# gulp is unpinned here, so fresh builds silently pull gulp 5, which the
# bundled gulp-cli rejects with "Unsupported gulp version". Pin to 4 to match
# the gulpfile API this project uses.
npm install --save-dev gulp@4 gulp-clean gulp-size gulp-concat gulp-clean-css gulp-terser
mkdir -p dist/
gulp
