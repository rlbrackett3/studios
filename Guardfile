# vim:set filetype=ruby:

# guard 'spork', cucumber: false, rspec: false, test_unit: false, minitest: true do
#   watch('config/application.rb')
#   watch('config/environment.rb')
#   watch('config/environments/test.rb')
#   watch(%r{^config/initializers/.+\.rb$})
#   watch('Gemfile.lock')
#   watch('spec/spec_helper.rb') { :minitest }
#   watch('test/test_helper.rb') { :minitest }
#   watch(%r{features/support/}) { :cucumber }
# end


guard :minitest do
  # # with Minitest::Unit
  watch(%r{^test/(.*)\/?test_(.*)\.rb})
  # watch(%r{^lib/(.*/)?([^/]+)\.rb})     { |m| "test/#{m[1]}test_#{m[2]}.rb" }
  watch(%r{^test/test_helper\.rb})      { 'test' }

  # # with Minitest::Spec
  watch(%r{^spec/(.*)_spec\.rb})
  # watch(%r{^lib/(.+)\.rb})         { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^spec/spec_helper\.rb}) { 'spec' }

  # Rails 4
  watch(%r{^test/test_helper\.rb}) { 'test' }
  watch(%r{^test/.+_test\.rb})
  watch(%r{^app/(.+)\.rb})                               { |m| "test/#{m[1]}_test.rb" }
  watch(%r{^app/controllers/application_controller\.rb}) { 'test/controllers' }
  watch(%r{^app/controllers/(.+)_controller\.rb})        { |m| "test/integration/#{m[1]}_test.rb" }
  watch(%r{^app/views/(.+)_mailer/.+})                   { |m| "test/mailers/#{m[1]}_mailer_test.rb" }
  watch(%r{^lib/(.+)\.rb})                               { |m| "test/lib/#{m[1]}_test.rb" }
end

# guard(
  # "rspec",
  # all_after_pass: false,
  # cli: "--fail-fast --tty --format documentation --colour") do

  # watch(%r{^spec/.+_spec\.rb$})
  # watch(%r{^lib/(.+)\.rb$}) { |m| "spec/lib/#{m[1]}_spec.rb" }
  # watch(%r{^app/(.+)\.rb$}) { |m| "spec/#{m[1]}_spec.rb" }
  # watch(%r{^app/views/(.+)/.*\.(erb|haml)$}) { |m| "spec/requests/#{m[1]}_spec.rb" }
# end

guard 'livereload' do
  watch(%r{app/views/.+\.(erb|haml|slim)$})
  watch(%r{app/helpers/.+\.rb})
  watch(%r{public/.+\.(css|js|html)})
  watch(%r{config/locales/.+\.yml})
  # Rails Assets Pipeline
  watch(%r{(app|vendor)(/assets/\w+/(.+\.(coffee|scss|css|js|html))).*}) { |m| "/assets/#{m[3]}" }
end


guard 'rails', server: :puma do
  watch('Gemfile.lock')
  watch(%r{^(config|lib)/.*})
end

