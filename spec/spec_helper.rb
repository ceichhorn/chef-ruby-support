require 'chefspec'
require 'chefspec/berkshelf'
require 'fauxhai'
ChefSpec::Coverage.start!
RSpec.configure do |config|
  # run all specs when using a filter, but no spec match
  config.run_all_when_everything_filtered = true
  config.log_level = :error
  config.color = true
  config.tty = true
  config.formatter = :documentation
  config.filter_run :focus => true
  config.run_all_when_everything_filtered = true
  config.expect_with(:rspec) { |c| c.syntax = :expect }
end

at_exit { ChefSpec::Coverage.report! }
