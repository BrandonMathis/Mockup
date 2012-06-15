# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "ipsum-french"
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Clive Crous"]
  s.date = "2011-03-15"
  s.description = "French language dictionary for Ipsum"
  s.email = ["clive@crous.co.za"]
  s.homepage = "http://www.darkarts.co.za/ipsum-french"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.11"
  s.summary = "French language dictionary for Ipsum"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ipsum-core>, [">= 2.0.0"])
      s.add_development_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_development_dependency(%q<rake>, [">= 0.8.7"])
    else
      s.add_dependency(%q<ipsum-core>, [">= 2.0.0"])
      s.add_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_dependency(%q<rake>, [">= 0.8.7"])
    end
  else
    s.add_dependency(%q<ipsum-core>, [">= 2.0.0"])
    s.add_dependency(%q<bundler>, [">= 1.0.0"])
    s.add_dependency(%q<rake>, [">= 0.8.7"])
  end
end
