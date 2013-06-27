source 'https://rubygems.org'
ruby '2.0.0'

# gem 'rails', github: 'rails/rails', branch: '4-0-stable'
gem 'rails', '4.0.0'

gem "carrierwave"
gem "carrierwave-mongoid", require: "carrierwave/mongoid"

gem "decent_exposure"
gem 'simple_form'

gem "mongoid", github: "mongoid/mongoid"

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
end

group :development, :test do
  gem "fabrication"
  gem 'minitest-rails'
  gem "minitest-rails-capybara"
  gem 'database_cleaner'
  # gem 'guard-minitest', github: 'guard/guard-minitest'
  # gem 'guard-minitest', "~> 1.0.0.rc.3"

  # gem 'guard-spork'
  # gem 'spork-rails', github: 'railstutorial/spork-rails'
  # gem "spork-minitest", "~> 1.0.0.beta1"
  # gem 'spork-testunit'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end