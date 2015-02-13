require 'loot_system'

require 'bundler/setup'
require 'factory_girl'
require 'factories'
require 'coveralls'
require "codeclimate-test-reporter"

CodeClimate::TestReporter.start

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
  config.raise_errors_for_deprecations!
end

Coveralls.wear!
