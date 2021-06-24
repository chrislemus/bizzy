# Bizzy - online business directory
>Local business listings WebApp built with Ruby on Rails. App allows users to sign in using third party authentication(eg. Google). Search for businesses, write reviews, or add your business to the sites directory.


**Table of Contents**  

- [Bizzy](#bizzy)
  - [Technology Stack](#technology-stack)
  - [Installation](#installation)
  - [Operation](#operation)
  - [Live Preview](#live-preview)
  - [Screenshot](#screenshots)

## Technology Stack
1. Ruby on Rails
2. Active Record
3. PostgreSQL
4. Bulma CSS Library


## Installation
1. `bundle` - installs all gems
2. `rake db:migrate` - creates a new migration
3. `rake db:seed`  - adds dummy date to local database
4. `rake s`  - starts the app
- This app uses Google Auth API to enable third party authentication. You must create a google developer account and provide `GOOGLE_CLIENT_ID` and `GOOGLE_CLIENT_SECRET` variables in the enviroment file within the project directory for third party authentication to work.

## Operation
Browse business listings in the sites main landing page. 

View all reviews for a certain business by clicking `view all` text link under the business name. 

## Live Preview
[Check out the live demo here!](https://www.chrislemus.io/project-demo/3)


## Screenshots

### Landing page
![landing-page](https://github.com/chrislemus/bizzy/blob/master/project-screenshots/landing-page.gif)

### Google Auth
![google-auth](https://github.com/chrislemus/bizzy/blob/master/project-screenshots/google-auth.gif)

### Write Reviews
![write-reviews](https://github.com/chrislemus/bizzy/blob/master/project-screenshots/write-reviews.gif)

### Add Business Listing
![add-business-listing](https://github.com/chrislemus/bizzy/blob/master/project-screenshots/add-business-listing.gif)
