# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "archloot/version"

Gem::Specification.new do |s|
  s.name        = 'archloot'
  s.version     = Archloot::VERSION
  s.date        = '2014-12-08'
  s.summary     = "Simple loot tables creation"
  s.description = "Provides a simple way to define rules governing random item generation."
  s.authors     = ["Przemysław Krowiński"]
  s.email       = ["hello@krowinski.com"]
  s.files       = ["lib/archloot.rb"]
  s.homepage    =
    ''
  s.license       = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")

  s.require_paths = ["lib"]

  s.add_development_dependency "rake"
  s.add_development_dependency "bundler"
  s.add_development_dependency "minitest"
end