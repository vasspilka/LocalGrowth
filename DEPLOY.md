## Deployment

# Some words

  Deployment in LocalGrowth is semi automated by [Capistrano][capistrano].

  Our goal is to make deployment as easy as possible so anyone can deploy and use.
  With this in mind the deployment procedure is going to be further automated in the future.
  [(Probably with Chef)][chef]


  Right now it requires some knowledge of how to connect to a VSP (Virtual Private Server)
  and of how to install all the dependencies for a rails app to work.


# The procedure


Current deployment settings requires you to have a Linux based system with the following software 
and free SSH access to it
 
 * Ruby ~> 2.1
 * Rails ~> 4.1
 * Git
 * Ngninx 
 * Passenger

More about how to have [free SSH access][ssh-access]

Deployment is done simply by running

 `cap production deploy`

Be sure to have a server ip and user in the `application.yml`



[capistrano]: http://capistranorb.com/
[ssh-access]: http://capistranorb.com/documentation/getting-started/authentication-and-authorisation/
[chef]: http://www.getchef.com/
