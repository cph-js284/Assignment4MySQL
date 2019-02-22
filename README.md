# Assignment4MySQL
This is the 4th assignment, Databases PB soft2019spring

# The setup.

1) vagrant ssh into your Ubuntu.
2) clone the repo and enter the folder
(*since we were instructed not to wrap this inside code, we're going to have to do these next steps manually*)
3) get the zip-file, by executing this line in the terminal
```
wget http://www.mysqltutorial.org/wp-content/uploads/2018/03/mysqlsampledatabase.zip
```
4) unzip the file, by executing this line in the terminal
```
unzip mysqlsampledatabase.zip
```
5) start a Docker container with MySQL
```
sudo docker run --rm --name mysql01 -p 3306:3306 -e MYSQL_ROOT_PASSWORD=pass1234 -d mysql
```
6) copy the unzipped .sql file into the container
```
sudo docker cp mysqlsampledatabase.sql mysql01:/tmp
```
7) import the .sql into the MySQL database inside the container
```
sudo docker exec mysql01 bash -c "mysql -u root -ppass1234 < /tmp/mysqlsampledatabase.sql"
```
