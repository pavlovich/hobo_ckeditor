# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hobo_ckeditor/version'

Gem::Specification.new do |gem|
  gem.name          = "hobo_ckeditor"
  gem.version       = HoboCkeditor::VERSION
  gem.authors       = ["Peter Pavlovich"]
  gem.email         = ["pavlovich@gmail.com"]
  gem.description   = %q{Provides a rich Hobo text type optimized for use with CKEditor}
  gem.summary       = %q{Provides a rich Hobo text type optimized for use with CKEditor}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency('hobo_fields')
  gem.add_runtime_dependency('hobo_rapid')
  gem.add_runtime_dependency('ckeditor')

end
