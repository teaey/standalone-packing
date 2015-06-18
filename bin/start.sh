#!/bin/bash
BIN_PATH=$(cd "$(dirname "$0")"; pwd)
cd $BIN_PATH
cd ..
SOFT_HOME=$(pwd)

if [ ! -d "$SOFT_HOME/logs" ]; then
  mkdir "$SOFT_HOME/logs"
fi

if [ -f "$SOFT_HOME/logs/packing.pid" ]; then
kill -9 $(cat "$SOFT_HOME/logs/packing.pid")
fi

CLASSPATH=
for i in `ls $SOFT_HOME/libs/*.jar`
do
    CLASSPATH=$CLASSPATH:$i
done

CLASSPATH=${CLASSPATH#*:}

echo $CLASSPATH

nohup java -classpath $CLASSPATH Main >/dev/null 2>&1 &

echo $!>$SOFT_HOME/logs/packing.pid

read -n 1 -p "Press any key to continue..."