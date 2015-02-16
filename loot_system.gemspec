# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "loot_system/version"

Gem::Specification.new do |s|
  s.name        = "loot_system"
  s.version     = LootSystem::VERSION
  s.date        = "2014-12-08"
  s.summary     = "Simple loot system creation"
  s.description = "Provides a simple way to define rules governing random item generation."
  s.authors     = ["Przemysław Krowiński"]
  s.email       = ["hello@krowinski.com"]
  s.files       = ["lib/loot_system.rb"]
  s.homepage    = "https://github.com/archdragon/loot_system"
  s.license       = "MIT"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec}/*`.split("\n")

  s.require_paths = ["lib"]

  s.add_development_dependency "rake"
  s.add_development_dependency "bundler"
  s.add_development_dependency "factory_girl"
  s.add_development_dependency "rspec"
end
