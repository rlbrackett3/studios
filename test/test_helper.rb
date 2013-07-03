ENV["RAILS_ENV"] ||= "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"

# require 'mongoid'
# require 'mongoid-minitest'

require 'database_cleaner'

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

# Unit
class ActiveSupport::TestCase

  # include Mongoid::Matchers

  DatabaseCleaner.strategy = :truncation
  DatabaseCleaner.orm = "mongoid"

  setup { DatabaseCleaner.start }
  teardown { DatabaseCleaner.clean }

end

class ActionController::TestCase

  include Devise::TestHelpers

  DatabaseCleaner.strategy = :truncation
  DatabaseCleaner.orm = "mongoid"

  setup { DatabaseCleaner.start }
  teardown { DatabaseCleaner.clean }

end

class ActionView::TestCase

end

class ActionMailer::TestCase

end

class ActionDispatch::TestCase

end