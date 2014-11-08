# coding: utf-8
require File.join(File.dirname(__FILE__), "lib/roleup/version")

Gem::Specification.new do |spec|
  spec.name                  = "roleup"
  spec.version               = Roleup::VERSION
  spec.license               = "MIT"
  spec.homepage              = "https://github.com/hopsoft/roleup"
  spec.summary               = "Simple role management"
  spec.description           = "Simple role management"
  spec.authors               = ["Nathan Hopkins"]
  spec.email                 = ["natehop@gmail.com"]

  spec.files = Dir["lib/**/*.rb", "[A-Z].*"]
  spec.test_files = Dir["test/**/*.rb"]

  spec.add_development_dependency "rake"
  spec.add_development_dependency "micro_test"
  spec.add_development_dependency "simplecov"
end
