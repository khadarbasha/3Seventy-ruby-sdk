# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'three_seventy_api/version'
Gem::Specification.new do |spec|
  spec.name          = "three_seventy_api"
  spec.version       = ThreeSeventyApi::VERSION
  spec.authors       = ["khadarbasha"]
  spec.email         = ["khadarbasha.s@hotmail.com"]
  spec.summary       = %q{3Seventy ruby api wrapper.}
  spec.description   = %q{3Seventy ruby api wrapper.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "rest-client"
  spec.add_dependency "yard"
  spec.add_dependency "json-schema"
  spec.add_dependency "rdoc"
  spec.add_development_dependency "pry"
end
