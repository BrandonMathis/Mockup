# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ipsum-core/version"

Gem::Specification.new do |s|
  s.name        = "ipsum-core"
  s.version     = Ipsum::Core::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Clive Crous"]
  s.email       = ["clive@crous.co.za"]
  s.homepage    = "http://www.darkarts.co.za/ipsum"
  s.summary     = %q{This is the core engine of the ipsum gem, install that instead}
  s.description = %q{This is the core engine of the ipsum gem, install that instead}

  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_development_dependency "rake", ">= 0.8.7"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
