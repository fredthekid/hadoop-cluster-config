#! /bin/bash
cp ./.bashrc ~/.bashrc
source ~/.bashrc
cp ./core-site.xml /usr/local/hadoop/etc/hadoop/
cp ./hadoop-env.sh /usr/local/hadoop/etc/hadoop/
cp ./hdfs-site.xml /usr/local/hadoop/etc/hadoop/
cp ./mapred-site.xml /usr/local/hadoop/etc/hadoop/
cp ./slaves /usr/local/hadoop/etc/hadoop/
