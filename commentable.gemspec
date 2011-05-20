# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "commentable/version"

Gem::Specification.new do |s|
  s.name        = "commentable"
  s.version     = Commentable::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["TODO: Write your name"]
  s.email       = ["TODO: Write your email address"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "commentable"

  s.files         = Dir["{app,lib,config}/**/*.rb"]
  s.test_files    = Dir["test/**/*.rb"]
  s.require_paths = ["lib"]
end
