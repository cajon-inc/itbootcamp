# -*- encoding: utf-8 -*-
# stub: rails_heroicon 2.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "rails_heroicon".freeze
  s.version = "2.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/abeidahmed/rails-heroicon/blob/main/CHANGELOG.md", "homepage_uri" => "https://github.com/abeidahmed/rails-heroicon", "rubygems_mfa_required" => "true", "source_code_uri" => "https://github.com/abeidahmed/rails-heroicon" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["abeidahmed".freeze]
  s.date = "2022-12-08"
  s.email = ["abeidahmed92@gmail.com".freeze]
  s.homepage = "https://github.com/abeidahmed/rails-heroicon".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.7".freeze)
  s.rubygems_version = "3.3.7".freeze
  s.summary = "Ruby on Rails view helpers for the awesome Heroicons by Steve Schoger.".freeze

  s.installed_by_version = "3.3.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<actionview>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<railties>.freeze, [">= 0"])
  else
    s.add_dependency(%q<actionview>.freeze, [">= 0"])
    s.add_dependency(%q<railties>.freeze, [">= 0"])
  end
end
