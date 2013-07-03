source 'https://rubygems.org'
ruby '2.0.0'

gem 'rails', '4.0.0'

gem 'sass-rails', '~> 4.0.0'
gem 'coffee-rails', '~> 4.0.0'
gem "uglifier", '>= 1.3.0'

gem 'compass-rails', github: 'milgner/compass-rails', branch: 'rails4'
gem 'susy'

gem 'jquery-rails'
gem 'haml-rails'
gem "redcarpet"

gem 'turbolinks'
gem 'jbuilder', '~> 1.2'

gem "mongoid", github: "mongoid/mongoid"
gem "decent_exposure"

gem 'devise', '~> 3.0.0.rc'
gem 'devise_invitable', github: 'scambra/devise_invitable', branch: 'rails4'
gem 'cancan'
# gem 'rolify'

gem "carrierwave"
gem "carrierwave-mongoid", require: "carrierwave/mongoid"
gem "mini_magick"
gem "fog", "~> 1.12.1"

gem 'simple_form', '~> 3.0.0rc'
gem 'nested_form'

gem 'puma'
gem 'foreman'

gem 'figaro'

group :development do
  gem 'better_errors'
  gem "binding_of_caller"
  gem 'quiet_assets'

  gem 'guard-livereload'
  gem 'guard-bundler'
  gem 'guard-minitest'
  gem 'guard-rails'

  gem 'html2haml'
  gem 'hub', require: nil

  gem 'rb-fchange', require: false
  gem 'rb-fsevent', require: false
  gem 'rb-inotify', require: false
  gem 'libnotify'

  gem 'letter_opener'
end

group :development, :test do
  gem "fabrication"
  gem 'database_cleaner'
end

group :test do
  gem 'capybara'
  gem 'minitest-spec-rails'
  gem 'mongoid-minitest'

  gem 'turn'
  gem 'ansi'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end