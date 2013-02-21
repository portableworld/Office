# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'Office/version'

Gem::Specification.new do |gem|
  gem.name          = "Office"
  gem.version       = Office::VERSION
  gem.authors       = ["Charles Caldwell"]
  gem.email         = ["charlie@unfalsedesign.com"]
  gem.description   = %q{For interacting with Microsoft Office on a Windows OS}
  gem.summary       = %q{Interacting with Microsoft Office on a Windows OS}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rspec'
end
