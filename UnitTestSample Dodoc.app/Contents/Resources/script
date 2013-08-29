#!/bin/sh

mkdir -p /Library/WebServer/Documents/UnitTestSample
mkdir -p /Library/WebServer/Documents/UnitTestSample/Documentation
mkdir -p /Library/WebServer/Documents/UnitTestSample/Documentation/iPhone

rm -rf /Library/WebServer/Documents/UnitTestSample/Documentation/iPhone/html

cd /Users/derekk/Solutions/UnitTestSample

(cat ./iPhoneDoxyfile; echo OUTPUT_DIRECTORY=/Library/WebServer/Documents/UnitTestSample/Documentation/iPhone) | /usr/local/bin/doxygen - | tee doxygen.out

##/usr/local/bin/doxygen iPhoneDoxyfile | tee doxygen.out

if [ $? == 0 ]; then

	pushd /Library/WebServer/Documents/UnitTestSample/Documentation/iPhone/html
	make install
	popd

fi
