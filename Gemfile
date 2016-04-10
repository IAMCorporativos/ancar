source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'

gem 'pg' # Use postgresqlas the database for Active Record
gem 'ancestry' # Organise ActiveRecord model into a tree structure
gem 'paranoia' # Don`t destroy Active Record object but just "hid" the record.
gem 'pg_search'  # scopes that take advantage of PostgreSQL's full text search

gem 'sass-rails', '~> 5.0' # Use SCSS for stylesheets
gem 'foundation-rails' # Foundation on Sass/Compass
gem 'foundation_rails_helper'

gem 'uglifier', '>= 1.3.0' # Compressor for JavaScript assets
gem 'coffee-rails', '~> 4.1.0' # CoffeeScript for .coffee assets and views
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'jquery-rails' # Use jquery as the JavaScript library
gem 'turbolinks' # Following links in your web application faster.
gem 'jbuilder', '~> 2.0' # Build JSON APIs with ease. 
gem 'initialjs-rails', '0.2.0.1'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'devise', '~> 3.5.6' # flexible authentication solution for Rails 
gem 'devise-async'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'omniauth'
gem 'omniauth-twitter'
gem 'omniauth-facebook', '~> 3.0.0'
gem 'omniauth-google-oauth2', '~> 0.4.0'
# Roles library without any authorization enforcement supporting scope on resource objects (instance or class). 
# gem 'rolify', '~> 5.1'
gem 'cancancan' # simple authorization solution for Rails which is decoupled from user roles.
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'kaminari' # A Scope & Engine based paginator

gem 'responders' # A set of responders modules to dry up your Rails 4.2+ app.
gem 'ckeditor', '~> 4.1.5' # WYSIWYG editor to be used inside web pages

# HTTP server for Rack applications
# gem 'unicorn', '~> 5.0.1'
 
# gem 'rinku', require: 'rails_rinku' # auto-link rails, sanityze html
gem 'savon' # SOAP client
gem 'dalli' # mem cached client

gem 'rollbar', '~> 2.8.0' # exception tracking for ruby
# ActiveRecord backend for Delayed::Job, 
gem 'delayed_job_active_record', '~> 4.1.0'
gem 'daemons' # wrap existing ruby scripts to be run as a daemon.
gem 'newrelic_rpm', '~> 3.14' # information about the performance of your web application as it runs in production.
gem 'whenever', require: false # Clean ruby syntax for writing and deploying cron jobs (scheduled jobs).

# Visit tracking for Rails, usaremos piwik 
# gem 'ahoy_matey', '~> 1.2.1'
gem 'groupdate'   # group temporary data
gem 'tolk' # Web interface for translations

gem 'browser' # browser detection 
gem 'turnout' # put your Rails application into maintenance mode
gem 'redcarpet' # extensible Markdown to (X)HTML parser

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-commands-rspec'
 
  gem 'rspec-rails', '~> 3.3' # Trsting framework for Rails
  gem 'capybara' # integration testing tool for rack based web applications.
  gem 'factory_girl_rails' #integration between factory_girl and rails ( DSL for defining and using factories )
  
  gem 'fuubar' #  RSpec progress bar formatter
  gem 'launchy' # Launching external application from within ruby programs.
  gem 'quiet_assets' # turns off Rails asset pipeline log.
  gem 'letter_opener_web', '~> 1.3.0' # Gives letter_opener an interface for browsing sent emails
  gem 'i18n-tasks' #  helps you find and manage missing and unused translations.
  
  #  utility and framework for executing commands in parallel on multiple remote machines, via SSH.
  gem 'capistrano', '3.4.0',           require: false
  gem "capistrano-bundler", '1.1.4',   require: false
  gem "capistrano-rails", '1.1.6',     require: false
  gem "capistrano-rvm",                require: false
  gem 'capistrano3-delayed-job', '~> 1.0'
  
  gem "bullet"  # kill N+1 queries and unused eager loading.
  gem "faker" # generate fake data: names, addresses, phone numbers, etc.
end

group :development do
  gem 'database_cleaner'
  gem 'poltergeist'
  gem 'coveralls', require: false
  gem 'email_spec'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
end
