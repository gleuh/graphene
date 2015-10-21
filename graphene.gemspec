# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'graphene/version'

Gem::Specification.new do |spec|
  spec.name          = "graphene"
  spec.version       = Graphene::VERSION
  spec.authors       = ['Powershop NZ Ltd']
  spec.email         = ['dev@powershop.co.nz']

  spec.summary       = "SVG graph generator."
  spec.description   = "SVG graph generator."
  spec.homepage      = "https://github.com/powershop/graphene"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "builder"
  spec.add_dependency "json"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
