#!/usr/bin/env bash

echo "Updating packages..."
#sudo apt-get -y update

echo "Installing JDK..."
sudo apt-get -y install openjdk-7-jdk

echo "Installing scala..."
apt-get install -y scala

echo "Installing SBT..."
debfile="repo-deb-build-0002.deb"
wget http://apt.typesafe.com/"$debfile"
dpkg -i "$debfile"
apt-get update
apt-get install -y sbt
echo "SBT defaults may need to be changed. See http://onor.io/2014/01/03/provisioning-a-vm-with-scala-and-sbt/"

echo "Installing Spark..."
wget http://d3kbcqa49mib13.cloudfront.net/spark-1.5.0-bin-hadoop2.6.tgz
tar -zxf spark-1.5.0-bin-hadoop2.6.tgz
ln -d spark-1.5.0-bin-hadoop2.6 spark
