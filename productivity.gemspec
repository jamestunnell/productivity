# -*- encoding: utf-8 -*-

require File.expand_path('../lib/productivity/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "productivity"
  gem.version       = Productivity::VERSION
  gem.summary       = %q{TODO: Summary}
  gem.description   = %q{TODO: Description}
  gem.license       = "MIT"
  gem.authors       = ["James"]
  gem.email         = "jamestunnell@lavabit.com"
  gem.homepage      = "https://github.com/jamestunnell/productivity#readme"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_development_dependency 'bundler', '~> 1.0'
  gem.add_development_dependency 'rake', '~> 0.8'
  gem.add_development_dependency 'rspec', '~> 2.4'
  gem.add_development_dependency 'rubygems-tasks', '~> 0.2'
  gem.add_development_dependency 'yard', '~> 0.8'
end
