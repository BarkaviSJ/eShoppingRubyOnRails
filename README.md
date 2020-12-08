# README
## SUKHA - A HAPPY PLACE TO SHOPPING APPLICATION :
###### *Designed, developed and deployed by: Barkavi Sundararajan - Student ID: 51989442

### About the application:
This application is an ecommerce application that sells 6 different types of product categories across U.K. and has warehouses in over 200 locations. It shows  relationship between different tables, separate login for customers and admin dashboard. It has live maps, admin dashboard charts, search filter and featured product graph for customers, capturing session details of customers with other security measures and test cases.

## Deployed application
The live application has been deployed on the heroku platform in postgres database and can be accessed through the following link: https://sukha-happy-shopping.herokuapp.com/


## System Requirements 
#### This application has the following system dependencies:
* Ruby version  - 2.6.5
* Rails version  - 6.0.3.4
* Heroku - heroku/7.47.0 linux-x64 node-v12.16.2
* Gems installed are:
    - pg version 1.2.3 (by default)
    - bootstrap version 3.4.1
    - gem 'faker'
    - gem 'devise'
    - gem 'activeadmin'
    - gem 'bootstrap'
    - gem 'chartkick'
    - gem 'brakeman'

____

# INSTALLATION 
## Installing and running the Application on Codio
Run the following commands:

1. cd workspace
2. git clone -b master https://github.com/BarkaviSJ/sukhashopping.git (because the master sub-branch of main has the complete code)
3. cd sukhashopping
4. bundle install 
5. yarn install --check-files
6. change the databse.yml file with yoru postgres username and password and remove the production database url
6. rails db:migrate
7. rake db:seed
8. replace the line in config/enviroment/development.rb between the bold text with the name of you local box name 
   config.hosts << "**mama-sigma-**-3000.codio-box.uk"
9. rails server -b 0.0.0.0
10. access application at https://**yourboxname**-3000.codio-box.uk
# PG setup 

1.	rails new eshopping(appname) –database=postgresql
2.	cd appname
3.	rake db:setup in local device automatically takes the environment variable and saves it in database.yml in config. In case of developing via codio environment, it requires the exact username and password available in the project.
4.	a. Created scaffold generate command only for the main tables such as products, customers and orders. Remaining tables such as shopping cart, shipping details, payments, line items and stores are manually created as and when needed to have a cleaner code without redundant details.
b. rails generate migration AddTableToTheSchema 
5.	rails db:migrate after creating the scaffold and generation
6.	In addition to some fake data using faker gem, open data from Kaggle and U.K. government websites were taken to populate the database and used for linking different tables. 
7.	rails server – localhost:/3000
8.	rails server -b 0.0.0.0 


# HEROKU DEPLOYMENT - STEP BY STEP

1.	created separate git repo for deployment
2.	created Heroku account 
3.	created an app in Heroku
4.	git remote -v
5.	git remote add github “url of git repo”
6.	git add .
7.	git commit -m “comment” – updates files inserted and changes
8.	heroku login –interactive
9.	heroku apps <displays available apps>
10.	heroku git:remote -a <appname> ----this commands sets git remote heroku to https://git.heroku.com/eshoprails.git
11.	git remote -v ------this command shows heroku and hithub’s fetch and push url
12.	git push heroku main to commit from main branch or 
13.	git push heroku base:main to commit from development branch
14.	heroku run rake db:setup – PG::ConnectionBad: FATAL - wrong
15.	Ensure that the databse.yml file has the username and password removed both from default and production and take the URL it states in yml for production
16.	heroku addons:create heroku-postgresql:hobby-dev – finally created postgressql database with the name “HEROKU_POSTGRESQL_COPPER_URL” Paste this URL in database.yml file - until this step was completed, the error mentioned in step 14 will occur.
17.	Repeated git steps for commits
18.	heroku run rake db:schema:load – to be used only for first time
19.	heroku run rake db:migrate
20.	heroku run rake db:seed - this need to be updated everytime the database changes are made


# WORKING APPLICATION
1. All the developed functionalities work in codio and heroku deployed
2. The images are working well in localhost but broken in codio and heroku

###### Other points to note: 
* the pages need to be refreshed to get the information shopping cart.
* The map location page in store need to be refreshed to get the live location

##### Points not mentioned in the submitted zip are:
1. admin user credentials - https://sukha-happy-shopping.herokuapp.com/admin
email is admin@example.com and password is <password>

2. Git text log from initial could not be retrieved from my local device beacuse it got terminated. The screenshot of git log commits committed using different branches are in the attached screenshot.


Below is the latest gitlog history for my final deployed application.

barkavis@Barkavis-MBP Eshoppingrails-base % git log --date=local --pretty=format:"%h%x09%an%x09%ad%x09%s" 
f7b3fb0 barkavi-jf      Mon Dec 7 22:26:35 2020 assets final
551f57b barkavi-jf      Mon Dec 7 22:22:48 2020 assets
587656e barkavi-jf      Mon Dec 7 21:55:44 2020 added heroku postgresdb in yml
1069667 barkavi-jf      Mon Dec 7 21:44:23 2020 final deployment
