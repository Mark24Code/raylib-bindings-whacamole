# -*- encoding: utf-8 -*-
# stub: raylib-bindings 0.7.3 x86_64-darwin lib

Gem::Specification.new do |s|
  s.name = "raylib-bindings".freeze
  s.version = "0.7.3".freeze
  s.platform = "x86_64-darwin".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["vaiorabbit".freeze]
  s.date = "2024-05-04"
  s.description = "Ruby bindings for raylib ( https://github.com/raysan5/raylib ), raygui ( https://github.com/raysan5/raygui ) and Physac ( https://github.com/raysan5/physac ).\n".freeze
  s.email = ["vaiorabbit@gmail.com".freeze]
  s.homepage = "https://github.com/vaiorabbit/raylib-bindings".freeze
  s.licenses = ["Zlib".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 3.0.0".freeze)
  s.rubygems_version = "3.5.9".freeze
  s.summary = "Ruby bindings for raylib, raygui and Physac".freeze

  s.installed_by_version = "3.5.9".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<ffi>.freeze, ["~> 1.16".freeze])
end
