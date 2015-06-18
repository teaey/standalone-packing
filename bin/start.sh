#!/bin/bash
BIN_PATH=$(cd "$(dirname "$0")"; pwd)
cd $BIN_PATH
cd ..
SOFT_HOME=$(pwd)

CLASSPATH=
for i in `ls $SOFT_HOME/libs/*.jar`
do
    CLASSPATH=$CLASSPATH:$i
done

CLASSPATH=${CLASSPATH#*:}

echo $CLASSPATH

java -classpath $CLASSPATH Main

read -n 1 -p "Press any key to continue..."