
BIN_PATH=$(cd "$(dirname "$0")"; pwd)
cd $BIN_PATH
cd ..
SOFT_HOME=$(pwd)

java -classpath $SOFT_HOME/libs/**.jar Main

read -n 1 -p "Press any key to continue..."

