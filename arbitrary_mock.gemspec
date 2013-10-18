$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "arbitrary_mock/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "arbitrary_mock"
  s.version     = ArbitraryMock::VERSION
  s.authors     = ["Robert White"]
  s.email       = ["robert@terracoding.com"]
  s.homepage    = "TODO"
  s.summary     = "Basic object for asserting behaviour of classes upon their dependencies"
  s.description = "Basic series of objects designed to allow you to arbitrarily assign and access properties, for use in conjunction with typical isolated testing style."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", ">= 2.3.0"
  s.add_dependency "rspec", ">= 2.0.0"
end
