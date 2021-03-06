# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cinch/plugins/greet/version'

Gem::Specification.new do |spec|
  spec.name          = 'cinch-greet'
  spec.version       = Cinch::Plugins::Greet::VERSION
  spec.authors       = ['Brian Haberer']
  spec.email         = ['bhaberer@gmail.com']
  spec.description   = %q{cinch greet}
  spec.summary       = %q{Greet people with silly things!}
  spec.homepage      = 'https://github.com/bhaberer/cinch-greet'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency  'rake'
  spec.add_development_dependency  'rspec'
  spec.add_development_dependency  'coveralls'
  spec.add_development_dependency  'cinch-test'

  spec.add_dependency              'cinch',           '~> 2.0.12'
  spec.add_dependency              'cinch-storage',   '~> 1.1.0'
end
