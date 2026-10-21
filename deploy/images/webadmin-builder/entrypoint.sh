#!/usr/bin/env sh

npm init --yes
# gulp is unpinned here, so fresh builds silently pull gulp 5, which the
# bundled gulp-cli rejects with "Unsupported gulp version". The gulp plugins
# are also unpinned and their current majors are ESM-only, which this
# CommonJS gulpfile on Node 15 cannot require (ERR_REQUIRE_ESM). Pin every
# dependency to its last CJS-compatible version.
npm install --save-dev \
    gulp@4.0.2 \
    gulp-clean@0.4.0 \
    gulp-size@3.0.0 \
    gulp-concat@2.6.1 \
    gulp-clean-css@4.3.0 \
    gulp-terser@2.1.0
mkdir -p dist/
gulp
