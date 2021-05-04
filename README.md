# Clock App

Clock App is an app that allows  teachers check in and check out for time tracking management

## Installation

1) `git clone ...`
2) `cd clock-app`
3) `bundle install`
4) `rails s`


## How to Run the App

1) To visit home, URL is https://himama-clocker-app.herokuapp.com #GET
2) Sign Up and Login with your user details
3) Use your email and password to login in to the app

## How I approached this challenge 
* I tried to first understand the requirements
* I break the requirements down into smaller tasks in  form of user stories 
* At first I worked on the functionality to ensure it works as expected before working on the UI
* Test each functionality to ensure it works as expected 

## What kind of planning & process did I do?
* I drafted out all the process flow on a sheet of paper
* I designed the database schema 
* I drafted out the necessary routes the app needs
* Also I planned and generated the controllers, models and views the app will have
* I generated the the homepage
* I generated the User sign up and login pages
* I implemented the signup, login & logout functionalities
* I added the view for users to clock in and clock out 
* I displayed the list of user clock events 
* I added the edit time entry page and update functionality
* Added validations

## Describe the schema design you chose. 
* I designed the database schema using the relational database model with the associations 

* I designed the Users table to know the necessary fields that are related to users i.e. the first name, last name,email and password 

* I also drafted another separate table called clock_events to store/track the clock event logs of the user using the clock_in and the clock_out fields , this table is linked to the users table through a foreign key (user_id)

## Why did you choose this design?
I chose the relational database model design because of the relationship that exists between users and clock events is a one to many 1-M relationship i.e. a User can have many clock events and a clock event belongs to a user

## What other alternatives did you consider?
I did not consider any other alternative apart from the relational database model due to the kind of associations that exists between users and clock events 

## If I was given another day
* Refactor the controllers functionalities into helpers and concerns
* Completed Handling different Timezone functionality and also format timezones in more friendly words
* Fix failing tests and write more unit tests using Rspec
* I would done some code refactoring
* Pagination
* Improve the UI
* Add more validations


## If I was given a month 
* Optimize the code for scalability i.e. look into how the app can be scaled with increasing users
* Improve the security of the app
* Work on the mobile responsiveness
* Implement data caching using Redis for high speed performance



