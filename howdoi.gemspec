# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'howdoi/version'

Gem::Specification.new do |gem|
  gem.name          = "howdoi"
  gem.version       = Howdoi::VERSION
  gem.authors       = ["Scott Werner"]
  gem.email         = ["stwerner@vt.edu"]
  gem.description   = %q{How do I fix this error?}
  gem.summary       = %q{A rubygem that searches stackoverflow for your errors that come through STDERR and finds the first Stack Overflow answer for you}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
