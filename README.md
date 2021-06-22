# Bizzy - online business directory

Bizzy is a online business directory that helps people connect with local businesses. Business listings included contact information, operation hours, and reviews.

## Initial set up commands

1. `bundle` - installs all gems
2. `rails db:migrate` - creates a new migration
3. `rails db:seed`  - adds dummy date to local database

### Configuration: Enable third-party authentication

This app uses Google Auth API to enable third party authentication. `GOOGLE_CLIENT_ID` and `GOOGLE_CLIENT_SECRET` are required in the .env file within the project directory for third party authentication to work.

### run `rails s` to start a local server
