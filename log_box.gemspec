# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'log_box/version'

Gem::Specification.new do |spec|
  spec.name          = "log_box"
  spec.version       = LogBox::VERSION
  spec.authors       = ["Jun Yoshida"]
  spec.email         = ["yoshida.jun@gmail.com"]
  spec.description   = %q{group Rails log by Web transaction or any other grouping}
  spec.summary       = %q{separate Rails log per Web transaction}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency 'fluent-logger'
  spec.add_development_dependency 'rspec'
end
