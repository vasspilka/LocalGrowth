source 'https://rubygems.org'


ruby '2.0.0'
#ruby-gemset=LocalGrowth

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.0.0'

#Locale and Languages
gem 'i18n'

# Security and Admin tools
gem "devise"
gem 'omniauth-facebook'
gem 'rails_admin'
gem 'bcrypt-ruby' 

# Javascript related gems
gem 'uglifier', '>= 1.3.0'        # Removes all spaces from css files.
gem 'coffee-rails', '~> 4.0.0' 
gem 'jquery-rails'
gem 'jbuilder', '~> 1.2'

# Design related gems
gem 'sass-rails', '~> 4.0.0'
gem 'simple_form'
# harris's gems
gem 'compass-rails', '~> 1.1.3' 
gem 'entypo-rails'

# Pagination with
gem 'kaminari'

# Use sqlite3 as the database for Active Record
group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
end

# Testing framework
group :test do
  gem 'selenium-webdriver'
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner', github: 'bmabey/database_cleaner'

  # For test pop up
  # Linux
    gem 'libnotify'

  # Windows
  # gem 'rb-notifu', '0.0.4'
  # gem 'win32console', '1.3.2'
  # gem 'wdm', '0.1.0'

  # MAC OS X.
  # gem 'growl', '1.0.3'
end


# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Production gems
group :production do
  # Postgres Database
  gem 'pg'
  gem 'rails_12factor', '0.0.2'
end


# Capistrano for deployment
group :development do
  gem 'capistrano'
  gem 'capistrano-rvm'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
end


# Use debugger
# gem 'debugger', group: [:development, :test]
