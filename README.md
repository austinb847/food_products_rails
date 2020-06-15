# Marios Speciality Foods

#### By Austin Butler

## Description

_A Ruby Rails app to add products to a store, and add multiple reviews for each product_


## Setup/Installation Requirements to run locally:

* _Step 1: Clone this repository https://github.com/austinb847/food_products_rails_
* _Step 2: Cd to new directory_
* _Step 3: Run Bundle install_
* _Step 4: Run rake db:setup to add database and seeded data_
* _Step 4: Run rails s_
* _Step 5: Navigate to localhost:3000_

## Admin functionality:

* To see admin functionality make sure to first run rake db:setup and then sign in as admin@admin.com with password admin

## Known bugs:

* Display US made products button doesn't function as intended yet. 

## Specifications
| Behavior     	| Input                                     	| Output                                                                                                 	|
|--------------	|-------------------------------------------	|--------------------------------------------------------------------------------------------------------	|
| Create/POST  	| Goldfish, 3, USA                          	| Homepage now has product added and so does the database                                                	|
| Read/GET     	| Goldfish, 3, USA                          	| read information about an individual product as well as a list of all products                         	|
| Update/Patch 	| Gold Fish, 3, EU                          	| update information about an individual product and display the new changes                             	|
| Delete       	| Gold Fish, 3, EU                          	| delete a product and display the new changes                                                           	|
| Create/POST  	| John Smith, 5, These snacks are amazing!  	| Individual product now has a review associated with it, and so does the database                       	|
| Read/GET     	| John Smith, 5, These snacks are amazing!  	| Read information about an individual review as well as a list of all reviews associated with a product 	|
| Update/Patch 	| Jimmy Smith, 5, These snacks are amazing! 	| Update information about an individual review and display the new changes                              	|
| Delete       	| Jimmy Smith, 5, These snacks are amazing! 	| delete a review and display the new changes                                                            	|

## Technologies Used

* Ruby
* Rails
* Bootstrap

Copyright (c) 2020 **_Austin Butler_**
