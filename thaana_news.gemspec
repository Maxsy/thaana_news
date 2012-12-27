# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'thaana_news/version'

Gem::Specification.new do |gem|
  gem.name          = "thaana_news"
  gem.version       = ThaanaNews::VERSION
  gem.authors       = ["Maxsy"]
  gem.email         = ["max-e@live.com"]
  gem.description   = %q{Fetches news content from websites}
  gem.summary       = %q{Thaana news content fetcher}
  gem.homepage      = "http://twitter.com/maxsy"
  gem.add_dependency "hpricot"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
