# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'code_terminator/version'

Gem::Specification.new do |spec|
  spec.name          = "code_terminator"
  spec.version       = CodeTerminator::VERSION
  spec.authors       = ["Evelin Ponce"]
  spec.email         = ["eponce19@gmail.com"]

  spec.summary       = "Validate syntaxis and instructions of html and css code"
  spec.description   = "Helps to evaluate and parse html and css code."
  spec.homepage      = 'http://rubygems.org/gems/code_terminator'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"

end
