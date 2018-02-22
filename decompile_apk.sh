#!/bin/bash

HOME=$(cd "$(dirname "$0")"; pwd)


APK=$1
DECOMPILE_DIR=`basename $APK .apk`
JAR=$DECOMPILE_DIR/source.jar

java -jar $HOME/tools/apktool_2.3.1.jar d -f $APK
$HOME/tools/dex2jar-2.1-SNAPSHOT/d2j-dex2jar.sh --force $APK -o $JAR
