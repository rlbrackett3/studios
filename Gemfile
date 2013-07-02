source 'https://rubygems.org'
ruby '2.0.0'

# gem 'rails', github: 'rails/rails', branch: '4-0-stable'
gem 'rails', '4.0.0'

gem "carrierwave"
gem "carrierwave-mongoid", require: "carrierwave/mongoid"#, github: "carrierwaveuploader/carrierwave-mongoid"
# gem "carrierwave-mongoid", "~> 0.6.0"
gem "mini_magick"
gem "fog", "~> 1.12.1"

gem "decent_exposure"
gem 'simple_form', '~> 3.0.0rc'
gem 'cancan'
gem 'nested_form'

gem "mongoid", github: "mongoid/mongoid"
# gem "mongoid-markdown"

gem "redcarpet"

# gem 'devise', github: 'plataformatec/devise', branch: 'rails4'
gem 'devise', '~> 3.0.0.rc'
gem 'devise_invitable', github: 'scambra/devise_invitable', branch: 'rails4'

gem 'puma'

# Assets
# gem 'sprockets-rails', github: 'rails/sprockets-rails'
gem 'sass-rails', '~> 4.0.0'
gem 'coffee-rails', '~> 4.0.0'
gem "uglifier", '>= 1.3.0'
gem 'compass-rails', github: 'milgner/compass-rails', branch: 'rails4'
gem 'susy'

gem 'jquery-rails'
gem 'haml-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'



group :development do
  gem 'guard-livereload'
  gem 'libnotify'
  gem 'rb-inotify'
  gem 'guard-minitest'
  gem 'guard-rails'
  gem 'letter_opener'
end

group :development, :test do
  gem "fabrication"
  gem 'minitest-rails'
  gem "minitest-rails-capybara"
  gem 'database_cleaner'
end

group :test do
  gem 'turn'
  gem 'ansi'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end