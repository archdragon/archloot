require 'bundler'
require 'rake/testtask'

Bundler::GemHelper.install_tasks

Rake::TestTask.new do |t|
  t.libs = ["lib", "test"]
  t.warning = true
  t.pattern = "test/archloot/*_test.rb"
end