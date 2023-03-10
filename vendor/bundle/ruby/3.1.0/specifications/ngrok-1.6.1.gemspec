# -*- encoding: utf-8 -*-
# stub: ngrok 1.6.1 ruby lib
# stub: ext/rakefile.rb

Gem::Specification.new do |s|
  s.name = "ngrok".freeze
  s.version = "1.6.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Alex Peattie".freeze]
  s.date = "2014-01-30"
  s.email = ["alexpeattie@gmail.com".freeze]
  s.executables = ["ngrok".freeze]
  s.extensions = ["ext/rakefile.rb".freeze]
  s.files = ["bin/ngrok".freeze, "ext/rakefile.rb".freeze]
  s.homepage = "http://github.com/alexpeattie/ngrok-gem".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.3.7".freeze
  s.summary = "ngrok packaged as a gem (for easy installation)".freeze

  s.installed_by_version = "3.3.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<daemons>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<listen>.freeze, [">= 0"])
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<daemons>.freeze, [">= 0"])
    s.add_dependency(%q<listen>.freeze, [">= 0"])
  end
end
