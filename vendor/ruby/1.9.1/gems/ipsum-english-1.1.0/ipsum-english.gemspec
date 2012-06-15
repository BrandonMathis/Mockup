# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ipsum-english/version"

Gem::Specification.new do |s|
  s.name        = "ipsum-english"
  s.version     = Ipsum::English::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Clive Crous"]
  s.email       = ["clive@crous.co.za"]
  s.homepage    = "http://www.darkarts.co.za/ipsum-english"
  s.summary     = %q{English language dictionary for Ipsum}
  s.description = %q{English language dictionary for Ipsum}

  s.add_dependency "ipsum-core", ">= 2.0.0"

  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_development_dependency "rake", ">= 0.8.7"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
