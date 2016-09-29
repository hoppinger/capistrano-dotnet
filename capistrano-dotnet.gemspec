# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'capistrano-dotnet'
  spec.version       = '0.1.0'
  spec.authors       = ['Sebastiaan de Geus']
  spec.email         = ['sebastiaan@hoppinger.com']
  spec.description   = %q{.NET Core support for Capistrano 3.x}
  spec.summary       = %q{.NET Core support for Capistrano 3.x}
  spec.homepage      = 'https://github.com/hoppinger/capistrano-dotnet'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'capistrano', '>= 3.0.0'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
