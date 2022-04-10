<h1>**OVERVIEW**</h1>

**-->** In this project, in addition to the mavenium/PyEditorial Blog CMS structure, PostgreSQL for database and Nginx for proxy-pass are integrated.

**-->** Forked from https://github.com/mavenium/PyEditorial.git

**-->** Edited for development environment.

<h1>**DEPENDINCIES**</h1>

**-->** Docker

**-->** docker-compose

<h1>**FEATURES**</h1>

**-->** PyEditorial, PostgreSQL and Nginx run seperate containers.

**-->** PostgreSQL needs eviroment variables which username, password etc., project includes these enviroment variable samples in env_samples file 

**-->** The table and data required for the initial installation are in the dummydata.sql file. 

**!!! IMPORTANT NOTE; If the installation script is run again after installation, newly added data and tables will be deleted. Persistent data is not kept !!!**

**-->** There is a sef-signed certificate and key for nginx in the ssl folder, it is recommended to change it after installation.

**-->** One click to install development enviroment on docker containers.

**-->** It updates existing dev-enviroments.

<h1>**INSTALLATION**</h1>

**-->** For installation, run the command in below; 

_./install-configure.sh_

**-->** If the script is not working please run the command in below and try the first command again;

_chmod +x install-configure.sh_

**-->** install-configur.sh script performs operations in the following order;

**---->** Checks docker's existance. If it is exist, script will continue, If it is not exist, script will broke and warn. 

**---->** Checks docker-compose's existance. If it is exist, script will continue, If it is not exist, script will broke and warn.

**---->** Generates the .env file from the enviroment variables contained in the env_sample file. If it is not desired to keep the default values, it is recommended to change these values before the script runs.

**---->** Stops, builds and starts the enviroment.

**!!! IMPORTANT NOTE; If the installation script is run again after installation, newly added data and tables will be deleted. Persistent data is not kept !!!**

<h1>**HOW TO WORK?**</h1>

**-->** PyEditorial, PostgreSQL and Nginx run seperate containers. Because of that, network setting as bridge is given in docker compose file.

**-->** PostgreSQL gets the required data and tables from the dumydata.sql file to get started.

**-->** After the installation is completed, go to http://localhost or https://localhost to use project
