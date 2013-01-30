Gem::Specification.new do |s|
  s.name        = 'caesar_cipher'
  s.version     = '0.1'
  s.date        = '2013-01-30'
  s.authors     = ['Raul Gracia Lario']
  s.description = 'A simple Caesar Cipher ruby implementation'
  s.summary     = 'caesar_cipher-0.1'
  s.email       = 'raulgracialario@gmail.com'
  s.homepage    = 'http://maliciousmind.github.com/caesar_cipher/'
  s.platform    = Gem::Platform::RUBY
  s.files= [
    'README.md',
    'lib/caesar_cipher.rb',
    'spec/caesar_cipher_spec.rb',
    'spec/spec_helper.rb',
    'Gemfile',
    'Guardfile'
  ]
  s.require_path = 'lib'
end