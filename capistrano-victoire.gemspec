# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'capistrano-victoire'
  spec.version       = '0.0.6'
  spec.authors       = ['Leny Bernard']
  spec.email         = ['erwan@victoire.com']
  spec.description   = %q{Victoire tasks for Capistrano 3.x}
  spec.summary       = %q{Victoire tasks for Capistrano 3.x}
  spec.homepage      = 'https://github.com/victoire/capistrano-victoire'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'capistrano', '>= 3.0.0.pre'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake', '~> 10.1'
end
