require 'bundler/setup'
require 'factory_girl'

require 'archloot'
require 'coveralls'

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end

Dir["factories/*.rb"].each do |file| 
  require file 
end

Coveralls.wear!