source 'https://rubygems.org'

## Below you can specify a ruby version and rvm gemset that you wish to use for the project.
 ruby '2.1.1'
# ruby-gemset=LocalGrowth



# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.0'

# Internationalization & Location
gem 'rails-i18n'      # Locale & Languages
gem "geocoder"        # Handling geographic data
gem 'gmaps4rails'     # Google maps intergration
gem "rails_admin_map_field", :git => "git://github.com/jasonl/rails_admin_map_field.git"

# Security and Admin tools
gem "devise"                  # User model & authorisation
gem 'omniauth-facebook'       # Facebook Login
gem 'rails_admin', '0.6.0'    # Admin Panel
gem 'bcrypt-ruby'

# Javascript related gems
gem 'uglifier', '>= 1.3.0'        # Removes all spaces from css files.
gem 'coffee-rails', '~> 4.0.0'    # Compiles to js
gem 'jquery-rails'                # Js library
gem 'jbuilder', '~> 1.2' 
gem 'underscore-rails'


# Front-end gems
gem 'compass-rails', '~> 1.1.3'
gem 'entypo-rails'
gem "breakpoint"
gem 'sass-rails'
gem 'simple_form'

# Other
gem 'kaminari'  # Pagination
gem 'paperclip' # File Upload

# sqlite database , error handling & test
group :development, :test do
  gem 'sqlite3'             # Easy Database adaptor
  gem "better_errors"       # Browser Errors
  gem 'meta_request'        # Chrome Plugin
  gem "binding_of_caller"
  gem 'rspec-rails'
  gem 'quiet_assets'        # Better logs
  gem 'railroady'           # For Diagrams
end

# Testing framework
group :test do
  gem 'selenium-webdriver'
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner', github: 'bmabey/database_cleaner'

  ## For test pop up
    gem 'libnotify'              # Linux

  # gem 'rb-notifu', '0.0.4'     # Windows
  # gem 'win32console', '1.3.2'  # Windows
  # gem 'wdm', '0.1.0'           # Windows

  # MAC OS X.
  # gem 'growl', '1.0.3'
end


# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end



# Capistrano for deployment
group :development do
  gem 'capistrano'
  gem 'capistrano-rvm'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
end

# Production gems
group :production do
  
  gem 'pg'      # Postgres Database          
  gem 'rails_12factor', '0.0.2'
end

# Use debugger
# gem 'debugger', group: [:development, :test]
