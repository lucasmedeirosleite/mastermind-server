# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mastermind/version'

Gem::Specification.new do |spec|
  spec.name          = "mastermind"
  spec.version       = Mastermind::VERSION
  spec.authors       = ["Lucas Medeiros Leite"]
  spec.email         = ["lucastoc@gmail.com"]
  spec.summary       = %q{Mastermind server app}
  spec.description   = %q{Mastermind server app that handles game logic and chat logic}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", "4.1.4"
  spec.add_dependency "activemodel", "4.1.4"
  spec.add_dependency "json", "1.8.1"
  spec.add_dependency "mongoid", "4.0.0"
  spec.add_dependency "redis", "3.1.0"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry", "0.9.12"
  spec.add_development_dependency "pry-byebug", "1.3.2"
  spec.add_development_dependency "rspec", "2.14.1"

end
