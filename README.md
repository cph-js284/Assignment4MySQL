# Assignment4MySQL
This is the 4th assignment, Databases PB soft2019spring

# The setup.

1) vagrant ssh into your Ubuntu.
2) clone the repo and enter the folder<br>
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
*The hand-in for this part of the assignment is located in the scripts-folder in the file "createusers.sql"*<br>
<br>
To run the script that creates the users type<br>
```
source createusers.sql
```
<br>
<b>Inventory:</b><br> 
*In order to maintain the tables: products and productlines, the Inventory roles has been granted select,insert,update,delete rights on these 2 tables, the roles has been barred from all other tables in the database, they have also been granted right from every terminal, the role needs these rights to maintain the inventory*

<b>Bookkeeping:</b><br>
*The Bookkeeping role has been granted  read-access(select) to all the tables in the database, should a discepancy occur the role needs to access to check data. Futhermore the role has been granted insert and update access to customers and payment tables, since this is where they need to modify data - no delete granted, the "papir-trail" is wanted*

<b>Human ressources:</b><br>
*The Humanressources role has been granted select, insert, update, delete rights on the employees- and offices tables, this role need to be able to make changes in the database concerning the staff and the buildings, anything from an jobtitle change to the location 
of a newly opened office*

<b>Sales:</b><br>
*The Sales role has been granted select, insert, update right to the tables: orders, orderdetails and customers. Again no delete rights granted. The Sales role manages the incomming orders, and the orders that gets cancelled aswell so the role need to be able to both commit updates to exsisting orders aswell as insert new ones into the database.*

<b>IT</b>:<br>
*Depending on the size of the company it likely that there are multiple roles with the IT department, such as database-administrator, Tech-support, inhouse-developer and so on - to create all these different roles it outside the scope of this assignment. Instead there will be only one IT role that is granted all privileges, although constrained to the localhost, meaning that only one machine has total access*

For all roles (except the IT role) the rights has been granted on all machines in the company.

