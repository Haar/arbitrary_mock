# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'arbitrary_mock/version'

Gem::Specification.new do |spec|
  spec.name          = "arbitrary_mock"
  spec.version       = ArbitraryMock::VERSION
  spec.authors       = ["Robert White"]
  spec.email         = ["robert@terracoding.com"]
  spec.summary       = "Basic object for asserting behaviour of classes upon their dependencies"
  spec.description   = "Basic series of objects designed to allow you to arbitrarily assign and access properties, for use in conjunction with typical isolated testing style."
  spec.homepage      = "http://github.com/Haar/arbitrary_mock"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", ">= 2.0.0"
end
