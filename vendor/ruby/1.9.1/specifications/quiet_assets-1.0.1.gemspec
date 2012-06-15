# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "quiet_assets"
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dmitry Karpunin", "Dmitry Vorotilin"]
  s.date = "2012-04-29"
  s.description = "Quiet assets turn off rails assets log."
  s.email = ["koderfunk@gmail.com", "d.vorotilin@gmail.com"]
  s.homepage = "http://github.com/evrone/quiet_assets"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Turn off rails assets log."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, ["~> 3.1"])
    else
      s.add_dependency(%q<railties>, ["~> 3.1"])
    end
  else
    s.add_dependency(%q<railties>, ["~> 3.1"])
  end
end
