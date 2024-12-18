#!/bin/bash

set -o pipefail -e
export PRELAUNCH_OUT="/home/alvinnguyen41/hadoop-3.4.1/logs/userlogs/application_1734513233151_0001/container_1734513233151_0001_01_000001/prelaunch.out"
exec >"${PRELAUNCH_OUT}"
export PRELAUNCH_ERR="/home/alvinnguyen41/hadoop-3.4.1/logs/userlogs/application_1734513233151_0001/container_1734513233151_0001_01_000001/prelaunch.err"
exec 2>"${PRELAUNCH_ERR}"
echo "Setting up env variables"
export HADOOP_COMMON_HOME=${HADOOP_COMMON_HOME:-"/home/alvinnguyen41/hadoop-3.4.1"}
export HADOOP_HDFS_HOME=${HADOOP_HDFS_HOME:-"/home/alvinnguyen41/hadoop-3.4.1"}
export HADOOP_CONF_DIR=${HADOOP_CONF_DIR:-"/home/alvinnguyen41/hadoop-3.4.1/etc/hadoop"}
export HADOOP_YARN_HOME=${HADOOP_YARN_HOME:-"/home/alvinnguyen41/hadoop-3.4.1"}
export HADOOP_TOKEN_FILE_LOCATION="/tmp/hadoop-alvinnguyen41/nm-local-dir/usercache/alvinnguyen41/appcache/application_1734513233151_0001/container_1734513233151_0001_01_000001/container_tokens"
export CONTAINER_ID="container_1734513233151_0001_01_000001"
export NM_PORT="46287"
export NM_HOST="localhost"
export NM_HTTP_PORT="8042"
export LOCAL_DIRS="/tmp/hadoop-alvinnguyen41/nm-local-dir/usercache/alvinnguyen41/appcache/application_1734513233151_0001"
export LOCAL_USER_DIRS="/tmp/hadoop-alvinnguyen41/nm-local-dir/usercache/alvinnguyen41/"
export LOG_DIRS="/home/alvinnguyen41/hadoop-3.4.1/logs/userlogs/application_1734513233151_0001/container_1734513233151_0001_01_000001"
export USER="alvinnguyen41"
export LOGNAME="alvinnguyen41"
export HOME="/home/"
export PWD="/tmp/hadoop-alvinnguyen41/nm-local-dir/usercache/alvinnguyen41/appcache/application_1734513233151_0001/container_1734513233151_0001_01_000001"
export LOCALIZATION_COUNTERS="272277,0,4,0,1475"
export JVM_PID="$$"
export NM_AUX_SERVICE_mapreduce_shuffle="AAA0+gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA="
export APPLICATION_WEB_PROXY_BASE="/proxy/application_1734513233151_0001"
export SHELL="/bin/bash"
export HADOOP_MAPRED_HOME="/root/hadoop-3.4.1"
export CLASSPATH="$PWD:$HADOOP_CONF_DIR:$HADOOP_COMMON_HOME/share/hadoop/common/*:$HADOOP_COMMON_HOME/share/hadoop/common/lib/*:$HADOOP_HDFS_HOME/share/hadoop/hdfs/*:$HADOOP_HDFS_HOME/share/hadoop/hdfs/lib/*:$HADOOP_YARN_HOME/share/hadoop/yarn/*:$HADOOP_YARN_HOME/share/hadoop/yarn/lib/*:$HADOOP_MAPRED_HOME/share/hadoop/mapreduce/*:$HADOOP_MAPRED_HOME/share/hadoop/mapreduce/lib/*:job.jar/*:job.jar/classes/:job.jar/lib/*:$PWD/*"
export APP_SUBMIT_TIME_ENV="1734514441674"
export LD_LIBRARY_PATH="$PWD:$HADOOP_COMMON_HOME/lib/native"
export MALLOC_ARENA_MAX="4"
echo "Setting up job resources"
ln -sf -- "/tmp/hadoop-alvinnguyen41/nm-local-dir/usercache/alvinnguyen41/appcache/application_1734513233151_0001/filecache/11/job.jar" "job.jar"
mkdir -p jobSubmitDir
ln -sf -- "/tmp/hadoop-alvinnguyen41/nm-local-dir/usercache/alvinnguyen41/appcache/application_1734513233151_0001/filecache/12/job.split" "jobSubmitDir/job.split"
ln -sf -- "/tmp/hadoop-alvinnguyen41/nm-local-dir/usercache/alvinnguyen41/appcache/application_1734513233151_0001/filecache/13/job.xml" "job.xml"
mkdir -p jobSubmitDir
ln -sf -- "/tmp/hadoop-alvinnguyen41/nm-local-dir/usercache/alvinnguyen41/appcache/application_1734513233151_0001/filecache/10/job.splitmetainfo" "jobSubmitDir/job.splitmetainfo"
echo "Copying debugging information"
# Creating copy of launch script
cp "launch_container.sh" "/home/alvinnguyen41/hadoop-3.4.1/logs/userlogs/application_1734513233151_0001/container_1734513233151_0001_01_000001/launch_container.sh"
chmod 640 "/home/alvinnguyen41/hadoop-3.4.1/logs/userlogs/application_1734513233151_0001/container_1734513233151_0001_01_000001/launch_container.sh"
# Determining directory contents
echo "ls -l:" 1>"/home/alvinnguyen41/hadoop-3.4.1/logs/userlogs/application_1734513233151_0001/container_1734513233151_0001_01_000001/directory.info"
ls -l 1>>"/home/alvinnguyen41/hadoop-3.4.1/logs/userlogs/application_1734513233151_0001/container_1734513233151_0001_01_000001/directory.info"
echo "find -L . -maxdepth 5 -ls:" 1>>"/home/alvinnguyen41/hadoop-3.4.1/logs/userlogs/application_1734513233151_0001/container_1734513233151_0001_01_000001/directory.info"
find -L . -maxdepth 5 -ls 1>>"/home/alvinnguyen41/hadoop-3.4.1/logs/userlogs/application_1734513233151_0001/container_1734513233151_0001_01_000001/directory.info"
echo "broken symlinks(find -L . -maxdepth 5 -type l -ls):" 1>>"/home/alvinnguyen41/hadoop-3.4.1/logs/userlogs/application_1734513233151_0001/container_1734513233151_0001_01_000001/directory.info"
find -L . -maxdepth 5 -type l -ls 1>>"/home/alvinnguyen41/hadoop-3.4.1/logs/userlogs/application_1734513233151_0001/container_1734513233151_0001_01_000001/directory.info"
echo "Launching container"
exec /bin/bash -c "$JAVA_HOME/bin/java -Djava.io.tmpdir=$PWD/tmp -Dlog4j.configuration=container-log4j.properties -Dyarn.app.container.log.dir=/home/alvinnguyen41/hadoop-3.4.1/logs/userlogs/application_1734513233151_0001/container_1734513233151_0001_01_000001 -Dyarn.app.container.log.filesize=0 -Dhadoop.root.logger=INFO,CLA -Dhadoop.root.logfile=syslog  -Xmx1024m  org.apache.hadoop.mapreduce.v2.app.MRAppMaster 1>/home/alvinnguyen41/hadoop-3.4.1/logs/userlogs/application_1734513233151_0001/container_1734513233151_0001_01_000001/stdout 2>/home/alvinnguyen41/hadoop-3.4.1/logs/userlogs/application_1734513233151_0001/container_1734513233151_0001_01_000001/stderr "
