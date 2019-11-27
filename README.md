# Basic Shiny Demo

The purpose of this is to create a basic demo of using shinyproxy to serve shiny apps with an NGINX front end to handle web redirects.

At the moment it only uses simple authentication with the username/password combinations of  
 - jack/password
 - tim/password

These can be changed in the `shinyproxy/application.yml` file.

## Usage

To use this repo:  
 1. Ensure docker & docker-compose are installed  
 2. Clone the repo  
 3. At the command line run `docker-compose up --build -d` which will launch two containers  
 4. Navigate to http://localhost  
 
*Note: I had all manner of issues when browsing to http://localhost in Safari as it always wanted to use `https` and would then fail, even when trying to force `http`. I tried it in Firefox, only to find out it was actually just a Safari issue rather than things not working.*
