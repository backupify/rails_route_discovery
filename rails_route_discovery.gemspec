$:.push File.expand_path('../lib', __FILE__)

require 'rails_route_discovery/version'

Gem::Specification.new do |spec|
  spec.name          = 'rails_route_discovery'
  spec.version       = RailsRouteDiscovery::VERSION
  spec.authors       = ['Backupify Alpha Team']
  spec.email         = ['support@backupify.com']
  spec.description   = %q{Simple plugin enabling discovery of an application's routes in JSON format}
  spec.summary       = %q{Route discovery for Rails Applications}
  spec.homepage      = 'https://github.com/backupify/rails_route_discovery'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_dependency 'rails', '>= 3.1'
end
