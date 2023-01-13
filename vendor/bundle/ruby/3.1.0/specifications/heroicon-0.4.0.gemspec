# -*- encoding: utf-8 -*-
# stub: heroicon 0.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "heroicon".freeze
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Benjamin Hargett".freeze]
  s.date = "2021-08-19"
  s.description = "Ruby on Rails view helpers for the beautiful hand-crafted SVG icons, Heroicons.".freeze
  s.email = ["hargettbenjamin@gmail.com".freeze]
  s.homepage = "https://github.com/bharget/heroicon".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5".freeze)
  s.rubygems_version = "3.3.7".freeze
  s.summary = "Rails View Helpers for Heroicons.".freeze

  s.installed_by_version = "3.3.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rails>.freeze, [">= 5.2"])
    s.add_development_dependency(%q<appraisal>.freeze, [">= 0"])
    s.add_development_dependency(%q<pry>.freeze, [">= 0"])
    s.add_development_dependency(%q<pry-rails>.freeze, [">= 0"])
    s.add_development_dependency(%q<standard>.freeze, [">= 0"])
    s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_development_dependency(%q<mocha>.freeze, [">= 0"])
  else
    s.add_dependency(%q<rails>.freeze, [">= 5.2"])
    s.add_dependency(%q<appraisal>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<pry-rails>.freeze, [">= 0"])
    s.add_dependency(%q<standard>.freeze, [">= 0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<mocha>.freeze, [">= 0"])
  end
end
