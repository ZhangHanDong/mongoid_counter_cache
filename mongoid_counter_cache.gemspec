# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mongoid_counter_cache/version"
require 'rake'

Gem::Specification.new do |s|
  s.name        = "mongoid_counter_cache"
  s.version     = MongoidCounterCache::VERSION
  s.authors     = ["AlexZhang"]
  s.email       = ["blackanger.z@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Mongoid Counter Cache}
  s.description = %q{Mongoid Counter Cache}
  s.files       =  FileList["[A-Z]*", "{app,config,lib}/**/*"]
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.rubyforge_project = "mongoid_counter_cache"


  s.require_paths = ["lib"]
  
  s.add_dependency "rails", ">= 3.0.8"
  s.add_dependency "mongoid"
  s.add_dependency "bson_ext"
end