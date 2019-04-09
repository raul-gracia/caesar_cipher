# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'caesar_cipher'

Gem::Specification.new do |gem|
  gem.name          = "caesar_cipher"
  gem.version       = CaesarCipher::VERSION
  gem.authors       = ["Raul Gracia"]
  gem.email         = ["raulgracialario@gmail.com"]
  gem.description   = %q{Is a simple Caesar Cipher ruby implementation}
  gem.summary       = %q{Simple Caesar Cipher}
  gem.homepage      = "http://maliciousmind.github.com/caesar_cipher/"
  gem.license       = "Apache"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency('rdoc')
  gem.add_development_dependency('aruba')
  gem.add_development_dependency('rake', '~> 0.9.2')
  gem.add_development_dependency('guard')
  gem.add_development_dependency('guard-bundler')
  gem.add_development_dependency('guard-rspec')
  gem.add_development_dependency('growl')
  gem.add_development_dependency('rb-fsevent', '~> 0.9.1')
  gem.add_dependency('methadone', '~> 1.2.4')
  gem.add_development_dependency('rubocop')
  gem.add_development_dependency('rubocop-rspec')
end
