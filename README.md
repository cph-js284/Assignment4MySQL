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
7) copy all the scripts into the container
```
sudo docker cp -a scripts/ mysql01:/
```
8) start a bash inside the running container
```
sudo docker exec -it mysql01 bash
```
9) log into the MySql database with the credentials you just created
```
mysql -u root -ppass1234
```
10) run the mysqlsampledatabase script
```
source tmp/mysqlsampledatabase.sql
```
---------------------------------------------------------------------------------------------------------------------
# 1 User privileges
To run the script that creates the users type
```
source createusers.sql
```
Inventory: *In order to maintain the tables: products and productlines, the Inventory roles has been granted select,insert,update,delete rights on these 2 tables, the roles has been barred from all other tables in the database, they have also been granted right from every terminal, the role needs these rights to maintain the inventory*

