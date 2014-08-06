LocalGrowth::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true
  
  # Mailer settings
  
  #config.action_mailer.default_url_options = {host: CONFIG[:action_mailer_host]}
  config.action_mailer.smtp_settings = {
    address:               CONFIG[:action_mailer_address],
    port:                  CONFIG[:action_mailer_port],
    #domain:                CONFIG[:action_mailer_domain],
    user_name:             CONFIG[:action_mailer_username],
    password:              CONFIG[:action_mailer_password],
    authentication:        :login,
    enable_starttls_auto:  :true
  }  

  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.default charset: 'utf-8'
  

end

silence_warnings do 
  require 'pry'
  IRB = Pry
end