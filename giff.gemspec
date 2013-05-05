# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "giff/version"

Gem::Specification.new do |spec|
  spec.name          = "giff"
  spec.version       = Giff::VERSION
  spec.authors       = ["Vinicius Horewicz"]
  spec.email         = ["vinicius@horewi.cz"]
  spec.description   = %q{Giff uses git-diff to compare two strings.
                          The motivation for creating it was to enable
                          word per word diff. }
  spec.summary       = %q{A Ruby wrapper around git-diff.}
  spec.homepage      = "https://github.com/wicz/giff"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = []
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rspec",   "~> 2.13"
  spec.add_development_dependency "rake"
end

