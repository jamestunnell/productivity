# -*- encoding: utf-8 -*-

require File.expand_path('../lib/productivity/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "productivity"
  gem.version       = Productivity::VERSION
  gem.summary       = "Provides a systematic way to approach the production of anything: software, hardware, ham sandwiches, etc."
  gem.description   = <<DESCRIPTION
  TODO
DESCRIPTION

  gem.license       = "MIT"
  gem.authors       = ["James"]
  gem.email         = "jamestunnell@gmail.com"
  gem.homepage      = "https://github.com/jamestunnell/productivity#readme"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_development_dependency 'bundler', '~> 1.13'
  gem.add_development_dependency 'rake', '~> 11.3'
  gem.add_development_dependency 'rspec', '~> 3.5'
  gem.add_development_dependency 'rubygems-tasks', '~> 0.2'
  gem.add_development_dependency 'rubygems-bundler', '~> 1.4'
  gem.add_dependency 'unitwise', '~> 2.0'
end
