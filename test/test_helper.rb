require 'rubygems'

ENV["RAILS_ENV"] ||= "test"

require File.expand_path("../../config/environment", __FILE__)

require "rails/test_help"
require "minitest/rails"
require "minitest/autorun"
require "minitest/rails/capybara"
require "minitest/pride"

require 'database_cleaner'

include Devise::TestHelpers

Turn.config do |c|
  # use one of output formats:
  # :outline  - turn's original case/test outline mode [default]
  # :progress - indicates progress with progress bar
  # :dotted   - test/unit's traditional dot-progress mode
  # :pretty   - new pretty reporter
  # :marshal  - dump output as YAML (normal run mode only)
  # :cue      - interactive testing
  c.format  = :outline
  # turn on invoke/execute tracing, enable full backtrace
  c.trace = 3
  # use humanized test names (works only with :outline format)
  c.natural = true
  c.ansi = true
  c.verbose = true
end

class ActiveSupport::TestCase

  DatabaseCleaner.strategy = :truncation
  DatabaseCleaner.orm = "mongoid"

  before :each do
    DatabaseCleaner.start
  end

  after :each do
    DatabaseCleaner.clean
  end

end



# Spork.prefork do
#   require File.expand_path("../../config/environment", __FILE__)
#   require "rails/test_help"
#   require "minitest/rails"

#   # To add Capybara feature tests add `gem "minitest-rails-capybara"`
#   # to the test group in the Gemfile and uncomment the following:
#   require "minitest/rails/capybara"

#   # Uncomment for awesome colorful output
#   require "minitest/pride"

# end

# Spork.each_run do
#   # This code will be run each time you run your specs.
#   require "minitest/autorun"

#   include Devise::TestHelpers

#   class ActiveSupport::TestCase
#     # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
#     # fixtures :all

#     # Add more helper methods to be used by all tests here...
#     #  before :each do
#     #   Mongoid.purge!
#     # end
#   end

# end