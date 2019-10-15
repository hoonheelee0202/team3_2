#!bin/bash

cd
# install mysql, git tasks, etc.
ansible-playbook /home/cc/playbook_install_DBserver_applications.yml
# create database bookdatabase, movieDB
# populate mysqlDB and grant permission
ansible-playbook /home/cc/playbook_createAndpopulateDatabases.yml
