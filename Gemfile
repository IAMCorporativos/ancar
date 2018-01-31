source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.7.1'

gem 'ancestry' # Organise ActiveRecord model into a tree structure

gem 'bcrypt' # hashing algorithm
gem 'browser' # browser detection

gem 'cancancan' # simple authorization solution for Rails which is decoupled from user roles.
gem "chartkick" # Create beautiful Javascript charts with one line of Ruby
gem 'cocoon',  '~> 1.2'
gem 'coffee-rails', '~> 4.1.0' # CoffeeScript for .coffee assets and views

gem 'daemons' # wrap existing ruby scripts to be run as a daemon.
gem 'dalli' # mem cached client
gem 'delayed_job_active_record', '~> 4.1.0' # ActiveRecord backend for Delayed::Job,
gem 'devise'

gem 'faraday', '~> 0.9.2'
gem 'foundation-rails' # Foundation on Sass/Compass
gem 'foundation_rails_helper'

gem 'groupdate'   # group temporary data

gem 'kaminari' # A Scope & Engine based paginator

gem 'initialjs-rails', '0.2.0.1'

gem 'jbuilder', '~> 2.0' # Build JSON APIs with ease.
gem 'jquery-rails' # Use jquery as the JavaScript library
gem 'jquery-ui-rails', '~> 5.0'

gem 'pg' # Use postgresqlas the database for Active Record
gem 'pg_search'  # scopes that take advantage of PostgreSQL's full text search

gem 'redcarpet' # extensible Markdown to (X)HTML parser
gem 'responders' # A set of responders modules to dry up your Rails 4.2+ app.
gem 'rolify', '~> 5.1' # Roles library without any authorization enforcement supporting scope on resource objects
gem 'rollbar', '~> 2.8.0' # exception tracking for ruby

gem 'sass-rails', '~> 5.0' # Use SCSS for stylesheets
# gem 'rinku', require: 'rails_rinku' # auto-link rails, sanityze html
gem 'savon' # SOAP client
gem 'sdoc', '~> 0.4.0', group: :doc # bundle exec rake index.html.erb:rails generates the API under index.html.erb/api
gem 'spreadsheet', '~> 1.1', '>= 1.1.2' # to read and write Spreadsheet Documents.

gem 'tolk' # Web interface for translations
gem 'turnout' # put your Rails application into maintenance mode
gem 'turbolinks', '2.5.3' # Following links in your web application faster.

gem 'uglifier', '>= 1.3.0' # Compressor for JavaScript assets
gem 'unicorn' # Use Unicorn as the app server

gem 'whenever', require: false # Clean ruby syntax for writing and deploying cron jobs (scheduled jobs).
gem 'wicked_pdf' # Wicked PDF uses the shell utility wkhtmltopdf to serve a PDF file to a user from HTML
gem 'wkhtmltopdf-binary'

group :development, :test do
  gem "bullet"  # kill N+1 queries and unused eager loading.
  gem 'byebug' # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'capybara' # integration testing tool for rack based web applications.

  #  utility and framework for executing commands in parallel on multiple remote machines, via SSH.
  gem 'capistrano', '3.5.0',           require: false
  gem "capistrano-bundler", '1.1.4',   require: false
  gem "capistrano-rails", '1.1.7',     require: false
  gem "capistrano-rvm",                require: false
  gem 'capistrano3-delayed-job', '~> 1.0'

  gem 'factory_girl_rails', require: false #integration between factory_girl and rails ( DSL for defining and using factories )
  gem "faker" # generate fake data: names, addresses, phone numbers, etc.
  gem 'fuubar' #  RSpec progress bar formatter
  gem 'i18n-tasks' #  helps you find and manage missing and unused translations.

  gem 'launchy' # Launching external application from within ruby programs.
  gem 'letter_opener_web', '~> 1.3.0' # Gives letter_opener an interface for browsing sent emails
  gem 'quiet_assets' # turns off Rails asset pipeline log.
  gem 'rspec-rails', '~> 3.3' # Trsting framework for Rails
  gem 'spring' # Spring speeds up development by keeping your application running in the background.
  gem 'spring-commands-rspec'
end

group :development do
  gem 'coveralls', require: false
  gem 'database_cleaner'
  gem 'email_spec'
  gem 'jazz_hands', :git => 'https://github.com/nixme/jazz_hands.git', branch: 'bring-your-own-debugger'
  gem 'poltergeist'
  gem 'seed_dump'
  gem 'web-console', '~> 2.0' # Access an IRB console on exception pages or by using <%= console %> in views
end