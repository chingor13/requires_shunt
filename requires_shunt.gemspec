require File.join(File.dirname(__FILE__), 'lib/requires_shunt/version')

Gem::Specification.new do |s|
  s.name        = 'requires_shunt'
  s.version     = RequiresShunt::VERSION::STRING
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['David Doan']
  s.email       = ['davedoan@gmail.com']
  s.homepage    = 'https://github.com/davedoan/requires_shunt'
  s.summary     = 'A basic plugin for marking disruptive migrations'
  s.description = 'Allows marking migrations as requiring shunt'

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ['lib']

  s.licenses = ['MIT']

  s.add_dependency 'rails', ['~> 3.2.8']
end
