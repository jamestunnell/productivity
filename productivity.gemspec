# -*- encoding: utf-8 -*-

require File.expand_path('../lib/productivity/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "productivity"
  gem.version       = Productivity::VERSION
  gem.summary       = "Provides a systematic way to approach the production of anything: software, hardware, ham sandwiches, etc."
  gem.description   = <<DESCRIPTION
  For any good that you might want to produce, there is a common pattern of
  following a recipe and using cooperating factors of production (which includes
  labor) to produce the good.

  Systematizing this pattern may seems trivial for a simple good, but the complexity
  lies in the fact that there are usually multiple stages of production for even the
  simplest consumer good (see the essay "I, Pencil" by Leonard Read).

  It becomes important for a producer to
   1) Decide which recipe to use in producing a give consumer good
   2) Map the relationships between a good and its factors of productions
   3) If any of the factors of production will themselves be produced, then
      the same process should be followed for those factors.
DESCRIPTION

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
