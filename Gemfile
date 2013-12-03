source 'https://rubygems.org'



ruby '2.0.0'
#ruby-gemset=LocalGrowth

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Design related gems
gem 'formtastic'
gem 'sass-rails', '~> 4.0.0'

# For website Redesign
gem 'foundation-rails'
gem 'foundation-icons-sass-rails'

#Security and Admin tools
gem 'rails_admin'
gem "devise"
gem 'bcrypt-ruby' 

# Pagination with
gem 'kaminari'

# Javascript related gems
gem 'uglifier', '>= 1.3.0'        # Removes all spaces.
gem 'coffee-rails', '~> 4.0.0' 
gem 'jquery-rails'
gem 'jbuilder', '~> 1.2'


# Use sqlite3 as the database for Active Record
group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
end

#Testing framework
group :test do
  gem 'selenium-webdriver'
  gem 'capybara'
  #Next line for linux pop-up, you might need diferent gem for other OS
    gem 'libnotify'
  gem 'factory_girl_rails'
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner', github: 'bmabey/database_cleaner'
end


# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

#Production  related gems, Database etc.
group :production do
  gem 'pg'
  gem 'rails_12factor', '0.0.2'
  gem 'capistrano'
end

# Use unicorn as the app server

# Use Capistrano for deployment


# Use debugger
# gem 'debugger', group: [:development, :test]
