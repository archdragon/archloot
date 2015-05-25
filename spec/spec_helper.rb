require_relative '../lib/loot_system/item'
require_relative '../lib/loot_system/item_options'
require_relative '../lib/loot_system/item_pool'

require 'bundler/setup'
require 'factory_girl'
require 'factories'
require 'coveralls'
require 'codeclimate-test-reporter'

CodeClimate::TestReporter.start

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
  config.raise_errors_for_deprecations!
end

Coveralls.wear!
