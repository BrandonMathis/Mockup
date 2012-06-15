# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ipsum/version"
require "ipsum/languages"

Gem::Specification.new do |s|
  s.name        = "ipsum"
  s.version     = Ipsum::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Clive Crous"]
  s.email       = ["clive@crous.co.za"]
  s.homepage    = "http://www.darkarts.co.za/ipsum"
  s.summary     = %q{Quickly generate text-like filler ala Lorem Ipsum}
  s.description = %q{Generate words or sentences for filler text while developing anything which requires text. Most people know this as "Lorem Ipsum". eg: require 'ipsum'; puts 10.sentences}

  Ipsum::LANGUAGES.each do |language|
    s.add_dependency "ipsum-#{language}", ">= 1.1.0"
  end

  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_development_dependency "rake", ">= 0.8.7"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
