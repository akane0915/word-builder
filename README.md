# _The Word Definer_

#### _A web application to allow users to input a word and then define the word.  The application allows users to store multiple words and multiple definitions for each word.  This application is currently deployed via Heroku and viewable at                  . April 21, 2017_

#### By _**Asia Kane**_

## Description

This application is built for children as the intended audience.  Its purpose is to allow children to create a list of words they don't know, but would like to learn.  After researching the definition(s) of the word, the child is able to store these definitions for the word.  The application

The application contains two classes: Word and Definition. The homepage of the app lists all words. When a word is clicked, it leads to a page with the words definition(s).

### Prerequisites

Web browser with ES6 compatibility
Examples: Chrome, Safari

Ruby
Bundler

## Specifications
| Behavior |  Input   |  Output  |
|----------|:--------:|:--------:|
|Program will allow user to input a word and return to a success page to show the word was successfully inputted| discover | (word success page) |
|From the success page, program will allow the user to return to the homepage to view the list of words| N/A | N/A |
|Once back on the homepage, program will allow the user to input another word or click on an existing word to view it| N/A | N/A |
|If user chooses to add another word, program follow same steps listed above| N/A | N/A |
|If user clicks on an existing word, program takes the user to the page for that word where user can click a button to add a definition for that word.  On this word page, the program lists all definitions for this word that have already been inputted. This page also contains a link to allow users to return to the homepage| N/A | N/A |
|If user chooses to add a definition, program takes the user to a definition form with a button to submit.  Once submitted, program takes the user to a success page| discover, find (something or someone) unexpectedly or in the course of a search.| (definition success page)|
|From the success page, program will allow the user to return to the word page to view the added definition| N/A | N/A |


## Setup/Installation Requirements

* _View the project at_
* _Or you can clone this repository to your machine, navigate to the file path in your terminal, and run app.rb by typing $ruby app.rb_
* _Then you have the option to clone this repository_
* _If you chose to clone the repository, after you run 'app.rb' you will need to copy the localhost path into your web browswer. The standard localhost for Sinatra is port 4567_
* _If you would like to make changes, open files in text editor of your choice_
* _Make changes as desired_
* _Make frequent commits with detailed comments_
* _Submit changes as pull request to Asia at akane0915 on Github_

## Known Bugs
_N/A_

## Support and contact details
_I encourage you to update/make suggestions/refactor this code as you see fit. I am always open to improvement! Please contact Asia Kane at asialkane@gmail.com with questions._

## Technologies Used
* Ruby
* Sinatra
* Capybara Integration Testing
* rspec Gem
* Heroku (Deployment)
* HTML
* CSS
* Bootstrap https://getbootstrap.com/
* ES6
* Jquery https://jquery.com/


### License
*This software is licensed under the MIT license*
Copyright © 2017 **Asia Kane**
