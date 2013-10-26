#!/bin/bash
# $1: dir for lewa
# $2: dir for original

APKTOOL="$PORT_ROOT/tools/apktool --quiet"
BUILD_OUT=out

SEP_FRAME="framework_ext.jar.out"

if [ $2 = "$BUILD_OUT/framework" ]
then
    # remove all files at out/framework those exist in framework_ext.jar.out
    for file2 in `find framework_ext.jar.out -name *.smali`; do
            file=${file2/framework_ext.jar.out/$BUILD_OUT\/framework}
            echo "rm file: $file"
            rm -rf "$file"
    done

	
	
	
	mkdir -p "$BUILD_OUT/$SEP_FRAME/smali"
	mkdir -p "$BUILD_OUT/$SEP_FRAME/smali/android"
	mkdir -p "$BUILD_OUT/$SEP_FRAME/smali/com"
	mkdir -p "$BUILD_OUT/$SEP_FRAME/smali/com/google"
	mkdir -p "$BUILD_OUT/$SEP_FRAME/smali/com/google/android"
	
	mv "$BUILD_OUT/framework/smali/com/google/android/mms" "$BUILD_OUT/$SEP_FRAME/smali/com/google/android/"
	mv "$BUILD_OUT/framework/smali/android/widget" "$BUILD_OUT/$SEP_FRAME/smali/android/"
	
#    rm -rf "$BUILD_OUT/framework/smali/com/google"
#    rm -rf "$BUILD_OUT/framework/smali/com/qualcomm"
#    rm -rf "$BUILD_OUT/framework/smali/android/renderscript" 
fi

if [ $2 = "$BUILD_OUT/framework_ext" ]
then

    # remove all files at out/framework_ext those exist in framework.jar.out
    for file2 in `find framework.jar.out -name *.smali`; do
            file=${file2/framework.jar.out/$BUILD_OUT\/framework_ext}
            echo "rm file: $file"
            rm -rf "$file"
    done

	cp -rf "$BUILD_OUT/$SEP_FRAME/smali/com/google/android/mms" "$BUILD_OUT/framework_ext/smali/com/google/android"
	mv "$BUILD_OUT/$SEP_FRAME/smali/android/widget/"  "$BUILD_OUT/framework_ext/smali/android/widget"
	#mv "$BUILD_OUT/$SEP_FRAME/smali/miui/"  "$BUILD_OUT/framework_ext/smali/miui"
	rm -rf $BUILD_OUT/$SEP_FRAME
fi
