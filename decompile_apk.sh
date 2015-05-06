#!/bin/bash

HOME=$(cd "$(dirname "$0")"; pwd)


APK=$1
DECOMPILE_DIR=`basename $APK .apk`
JAR=$DECOMPILE_DIR/source.jar

java -jar $HOME/tools/apktool_2.0.0.jar d -f $APK
$HOME/tools/dex2jar-0.0.9.15/d2j-dex2jar.sh --force $APK -o $JAR
