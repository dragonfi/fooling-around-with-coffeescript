BUILD_DIR="build"

.PHONY: build clean test test-watch run

build: clean
	coffee -o ${BUILD_DIR} -c `ls *.coffee | grep -v Spec.coffee`
	browserify ${BUILD_DIR}/*.js -o ${BUILD_DIR}/browserified.js
	uglifyjs ${BUILD_DIR}/browserified.js -o ${BUILD_DIR}/main.js

clean:
	rm -rf ${BUILD_DIR}

run: build
	nodejs ${BUILD_DIR}/main.js

test:
	jasmine-node --coffee *.coffee

test-watch:
	jasmine-node --autotest --watch *.coffee *.coffee --coffee *.coffee
