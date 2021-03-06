# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'elasticsearch/aggsmatrix/version'

Gem::Specification.new do |spec|
  spec.name          = "elasticsearch-aggsmatrix"
  spec.version       = Elasticsearch::Aggsmatrix::VERSION
  spec.authors       = ["foostan"]
  spec.email         = ["ks@fstn.jp"]
  spec.summary       = %q{Build matrix of aggregations by elasticsearch}
  spec.description   = %q{Build matrix of aggregations by elasticsearch}
  spec.homepage      = "https://github.com/foostan/elasticsearch-aggsmatrix"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
