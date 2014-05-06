# LocalGrowth Local business web application


Current version: Early Alpha (Unstable & Experimental)


## Description

LocalGrowth is an opensourced webapp project.

Our goal is to make a website that can be deployed by anyone and potentially help local communities to improve their business.
  



##Features

Main LocalGrowth features 

(Some features still under developement)

  * A model for storing business data.
  * An UI so admins can easily interact with data.
  * An easy way for users to find what they need.
  * A social netwok for users to interact with the local businesses and users.
  * A model for storing Events and Deals data.
  * Smart integration with Facebook and Google data.
  * Automated Analytics to help admin make business decisions.



## How to set up (Locally on your machine)

You will require the following software

* [ruby version ~> 2.1.1][ruby]:

  For Windows you can use [RubyInstaller][RubyInstaller] dont forget the DevKit. And FOLLOW THE INSTRUCTIONS! (You will also need to modify ruby version under gemfile to 2.0 if you cant find 2.1)
  
  For Unix/Linux there is [RVM][rvm]. Just use this command `\curl -L https://get.rvm.io | bash -s stable` 
  and you should have the latest stable Ruby version with [RVM][rvm] a great tool for managing Ruby versions and gemsets.


  To ensure you have properly installed Ruby run the following command in cmd or Terminal.
  `ruby -v`
  Your output should be something like this.
  `ruby 2.0.0p247 (2013-06-27 revision 41674) [x86_64-linux]`

* [rails version ~> 4.0.0][rails]:

  After succesfully installing Ruby, run these to install Bundler and Rails

      > gem install bundler
      > bundle update
      > bundle install --without production


* [git][git]:
  
  Installing git should be easy just follow the website instructions.



These components might be tricky to set up and might require additional dependencies depending on your system. In case you ran into problems I'd advise you to consult with goolge.

In my examples I will use shell commands, windows users can use 'cmd', linux users the 'terminal'.

First cd into the path you want to set up the app
    > cd my_app/path

Then clone the repository using git and install some dependencies

    > git clone https://github.com/vasspilka/LocalGrowth.git
    > cd LocalGrowth
    > bundle update
    > bundle install --without production

'bundle update' takes some time since it updates the dependencies through the internet and might fail, if it fails try running it again until it succedes before running 'bundle install'.


After all the dependencies have been installed we need to create a config and a database file,
don't worry I have already set up examples for you. All you need to do is remove the 
`.example` extension from `application.example.yml` and `database.example.yml` inside the config folder.

Linux:

    $ cp config/database.example.yml config/database.yml
    $ cp config/application.example.yml config/application.yml 

Windows:

    > rename config/database.example.yml database.yml
    > rename config/application.example.yml application.yml


You may want to have a look at those files `database.yml` consists of the database architecture
you will need this to set up `mysql` or `postgresql` when deploying to a server.

`application.yml` has configurations for the application. While for local deployment these settings should work fine, for production you should change these according to your needs.

Now we need to create the datatables and add some data. Finally we can run the server.

    > rake db:migrate && rake db:seed
    > rails s 

The database is seeded with some basic data for you to see how the application works don't run `rake db:seed` if you want the app empty.

Hopefully if everything ran smoothly, now you can visit your app inside your browser at 'localhost:3000'


## Learning more

  LocalGrowth is a web 2.0 application meaning it is a little bit more than a website.

  The technologies behind LocalGrowth are

  * Rails (Ruby webapp framework)
  * Ruby (Server Side Language)
  * HTML 5 
  * CSS 3 (Compiled from Sass)
  * Javascript (Compiled from CoffeScript)
  * ~~Foundation (CSS & Javascript framework)~~

  These technologies are the heart of the LocalGrowth project.

## How to deploy

  Deployment is explained in [DEPLOY.md][6]


## Geting involved
  
  If you know any of the above technologies you can help improve LocalGrowth
  by contribution to the code.
  More about that at [CONTRIBUTING.md][5] 


  Feedback is also a good way to help, you can tell us suggestions you might have or 
  bugs you have experienced. Just make a [new issue][issue] on the GitHub page.


## Goals, and the future

  LocalGrowths main feature tries to be an easy deployment and use by anyone.
  Our goal is for LocalGrowth to be deployed for your local region to do tasks your comminity needs.

  LocalGrowth dosen't have to be just a business app, It can potentially be used as a web project for developers to learn from, understand, modify and use in any way they like.

  In the future LocalGrowth could be separated into modules that would help other aspects of  communities, as Local news or a place where people would suggest ideas to improve their enviroment.

  Then you could use the modules you want.

## About us

  I started LocalGrowth in order to learn web-developement and to make a usefull application for my town while I was a student. I hope it grows into something bigger, I already have more people than myself working on this which I find great :) !! 

## Licence
  
  LocalGrowth is licenced under Creative Commons wich means the code can be used by anyone as long as it stays open.


  
  
  Creative Commons License. 
  
  ![alt tag](http://i.creativecommons.org/l/by-sa/4.0/88x31.png)
  
  LocalGrowth is licensed under a Creative [Commons Attribution-ShareAlike 4.0 International License][cc].
  Based on a work at [LocalGrowth][LG].



[ruby]: https://www.ruby-lang.org/en/
[rails]: http://rubyonrails.org/
[git]: http://git-scm.com/
[rvm]: https://rvm.io/
[RubyInstaller]: http://rubyinstaller.org/downloads/
[5]: https://github.com/vasspilka/LocalGrowth/blob/master/CONTRIBUTING.md
[6]: https://github.com/vasspilka/LocalGrowth/blob/master/DEPLOY.md
[issue]: https://github.com/vasspilka/LocalGrowth/issues/new
[cc]: http://creativecommons.org/licenses/by-sa/4.0/
[LG]: https://github.com/vasspilka/LocalGrowth
