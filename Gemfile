source 'https://rubygems.org'
ruby '2.0.0'

gem 'rails', github: 'rails/rails', branch: '4-0-stable'
# gem 'rails', '4.0.0.rc1'

gem "carrierwave"
gem "carrierwave-mongoid", require: "carrierwave/mongoid"
gem "decent_exposure"

gem "mongoid", github: "mongoid/mongoid"

gem 'devise', github: 'plataformatec/devise', branch: 'rails4'

gem 'jquery-rails'
gem 'haml-rails'

gem 'puma'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.0.1'

# group :assets do
  gem 'sprockets-rails', github: 'rails/sprockets-rails'
  gem 'sass-rails',   github: 'rails/sass-rails'
  gem 'coffee-rails', github: 'rails/coffee-rails'
  gem "uglifier"
  gem 'bourbon'
  gem 'neat'
# end

group :development, :test do
  gem "fabrication"
  gem "guard-rspec"
  gem "rspec-rails"
  gem "spork", "~> 0.9.0.rc"
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end