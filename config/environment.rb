# Load the Rails application.
require File.expand_path('../application', __FILE__)

#ActionMailer::Base.smtp_settings = {
#  :address        => 'smtp.sendgrid.net',
#  :port           => '587',
#  :authentication => :plain,
#  :user_name      => ENV['app19086118@heroku.com'],
#  :password       => ENV['5xq9crht'],
#  :domain         => 'heroku.com',
#  :enable_starttls_auto => true
#}


# Initialize the Rails application.
LocalGrowth::Application.initialize!
