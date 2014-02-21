Deployment in LocalGrowth is automated by Capistrano.


Current deployment settings requires you to have a Linux based system with the following software and SSH access to it

 
 `Ruby ~> 2.0`
 `Rails ~> 4.0` 
 `Git`
 `Ngninx` 
 `Passanger` 

Deployment is done simply by running

 `cap production deploy`

Be sure to have a server ip and user in the `application.yml`