https://github.com/bethesdamd/spark-examples

Stand up Apache Spark on any machine using Vagrant.  Also includes some sample jobs for Word Count, and for log file processing.

Vagrant is a front-end for VirtualBox, and allows the easy creation and launching of virtual machines on any platform.  The included VagrantFile here will create and completely configure a Linux VM with Apache Spark.

Please see the Vagrant site for further details about Vagrant.

##Dependencies

- [Install VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [Install Vagrant](http://www.vagrantup.com/downloads.html)

##Setup

1. Clone this repository
1. Run **vagrant up**.  This will take a while as software is downloaded and installed.  You will then have a running VM but you won't be connected to it yet.
1. Run **vagrant ssh** to connect to your VM
1. **spark/bin/spark-shell**
1. You are now in the spark-shell environment
1. **:load /vagrant_data/wordcount.scala**
1. After quite a bit of output you will see the program results

**Note:**

- These jobs are designed to be run from within the spark console (as opposed to using spark-submit).

- If you use any SQL/Hive functionality in Spark you must always start `spark-shell` from the ssh login folder. This is because the default Hive metastore database is embedded Derby, which will create its database (`metastore_db` folder) in the current folder. If you start Spark from another folder you'll end up with multiple Hive metastores which will cause a lot of problems down the road. 
