# LocalGrowth Ruby on Rails local buissness application


Current version: Early Alpha


## Description

LocalGrowth is an opensourced webapp project.

Our goal is to make a website, that can be deployed by anyone and potentially help local communities to improve their buisness.
  



##Features

Main LocalGrowth features 

  * A model for storing buisness data.
  * An UI in the website so admins can easily interact with data.
  * An easy way for users to find what they need.
  * A social netwok for users to interact with the local buisnesses.
  * A model for storing Events and Deals.
  * Integration with Facebook and Google maps.




## How to set up (Locally on your machine)

You will require the following software

* [ruby version ~> 2.0.0][1]:

  For Windows you can use [RubyInstaller][RubyInstaller] dont forget the DevKit. And FOLLOW THE INSTRUCTIONS!
  
  For Unix/Linux there is [RVM][rvm]. Just use this command `\curl -L https://get.rvm.io | bash -s stable` 
  and you should have the latest stable Ruby version with [RVM][rvm] a great tool for managing Ruby versions and gemsets.


  To ensure you have properly installed Ruby run the following command in cmd or Terminal.
  `ruby -v`
  Your output should be something like this.
  `ruby 2.0.0p247 (2013-06-27 revision 41674) [x86_64-linux]`

* [rails version ~> 4.0.0][2]:

  After succesfully installing Ruby, run these to install Bundler and Rails


    > gem install bundler
    > bundle update
    > bundle install --without production


* [git][3]:
  
  Installing git should be easy just follow the website instructions.



These components might be tricky to set up and might require additional dependencies depending on your system. In case you ran into problems I'd advise you to consult with goolge.

In my examples I will use shell commands, windows users can use 'cmd', linux users the 'terminal'.

First cd into the path you want to set up the app
    > cd my_app/path

First we need to clone the repository using git and install some dependencies

    > git clone https://github.com/vasspilka/LocalGrowth.git
    > cd LocalGrowth
    > bundle update
    > bundle install --without production

'bundle update' takes some time since it install the dependencies through the internet and might fail, if it fails try running it again until it succedes fully before running 'bundle install'.


After all the dependencies have been installed we need to create a config and a database file,
don't worry I have already set up examples for you. All you need to do is remove the 
`.example` extension from `application.example.yml` and `database.example.yml` inside the config folder.

Linux:

    $ cp config/database.example.yml config/database.yml 
    $ cp config/application.example.yml config/application.yml 

Windows:

    > ren config/database.example.yml database.yml
    > ren config/application.example.yml application.yml


You may want to have a look at those files `database.yml` consists of the database architecture
you will need this to set up `mysql` or `postgresql`.

`application.yml` has configurations for the application. While for local deployment these settings should work fine, for production you should change these.

Now we need to create the datatables and add some data. Finally we can run the server.

    > rake db:migrate
    > rake db:seed
    > rails s 

The database is seeded with some basic data for you to see how the application works.

Hopefully if everything ran smoothly, now you can visit your app inside your browser at 'localhost:3000'


## Learning more

  
  LocalGrowth is a web 2.0 application meaning it is a little bit more than a website.

  The technologies behind LocalGrowth are

  * HTML 5 
  * CSS 3 (Compiled from Sass)
  * Javascript (Compiled from CoffeScript)
  * Ruby (Server Side)
  * Foundation (CSS & Javascript framework)
  * Rails (Ruby webapp framework)

  These technologies are the heart and body of the LocalGrowth project.


## Geting involved
  
  If you know any of the above technologies you can help improve LocalGrowth
  by contribution to the code.
  More about that at [CONTRIBUTING.md][5] 


  Feedback is also a good way to help, you can tell us about suggestions you might have or 
  bugs you have experienced.


## How to deploy

  Deployment is a long procedure and I am in no place to explain it now.

## About us

lorem

## Licence




[1]: https://www.ruby-lang.org/en/
[2]: http://rubyonrails.org/
[3]: http://git-scm.com/
[rvm]: https://rvm.io/
[RubyInstaller]: http://rubyinstaller.org/downloads/
[5]: https://github.com/vasspilka/LocalGrowth/blob/master/CONTRIBUTING.md