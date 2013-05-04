# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "giff/version"

Gem::Specification.new do |spec|
  spec.name          = "giff"
  spec.version       = Giff::VERSION
  spec.authors       = ["Vinicius Horewicz"]
  spec.email         = ["vinicius@horewi.cz"]
  spec.description   = %q{TODO: Write a gem description}
  spec.summary       = %q{TODO: Write a gem summary}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = []
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rspec",   "~> 2.13"
  spec.add_development_dependency "rake"
end

