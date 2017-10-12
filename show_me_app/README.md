## Show Case  

This is a web application that allows members of the Sparta Global Organisation to upload and view projects they have worked on. Members can make an account, and are then able to create, read, update and delete their projects, and view projects created by other Spartan members. Users without an account can still view projects, but are unable to modify or create them. There is also built in functionality for an admin user, who has to make projects live before they can be viewed. 

## Getting Started  

* Clone the git repo
* ``` git pull origin master``` to pull the latest version down from github
* ``` Bundle ``` to install gem dependencies
* ``` rake db:reset ``` to reset the database 
* ``` rails s``` to spin up the server at **localhost:3000**

## Built with  

* Ruby **2.4.2**
* Ruby on Rails **5.1.4**
* PostgreSQL **9.6** 
* Devise **3.4**
* Bootstrap Sass **3.3.6** 

## Database

* Have a Users and a Projects table
* Used PostgreSQL as the SQL database
* To modify the seed file, go to the **db** directory 
* If the seed file has been modified, run the ```rake db:seed ``` command to update the database
* To create a change in the tables, create a migrate file and make the relevant changes in there
* To update the database, run ```rake db:migrate```
* Alternatively, run ```rake db:reset``` to drop and create all tables with the seed data 

## Contributers

* [Seb Faull](https://github.com/seb-faull)
* [Keir Stannard](https://github.com/stannard95)
* [Sophie Baxter](https://github.com/sbaxter95)