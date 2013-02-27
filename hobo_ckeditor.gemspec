# -*- encoding: utf-8 -*-
name = File.basename( __FILE__, '.gemspec' )
version = File.read(File.expand_path('../VERSION', __FILE__)).strip
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'date'

Gem::Specification.new do |gem|
  gem.name          = name
  gem.version       = version
  gem.date          = Date.today.to_s
  #gem.rubyforge_project = 'hobo_ckeditor'
  gem.authors       = ["Peter Pavlovich"]
  gem.email         = ["pavlovich@gmail.com"]
  gem.description   = %q{Provides a rich Hobo text type optimized for use with CKEditor}
  gem.summary       = %q{Provides a rich Hobo text type optimized for use with CKEditor}
  gem.homepage      = "https://github.com/ppavlovich/hobo_ckeditor"

  gem.files         = `git ls-files`.split($/)

  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.required_rubygems_version = ">= 1.3.6"
  gem.rdoc_options = ["--charset=UTF-8"]
  gem.require_paths = ["lib", "taglibs"]

  gem.add_runtime_dependency('hobo_fields')
  gem.add_runtime_dependency('hobo_rapid')
  gem.add_runtime_dependency('ckeditor')
end
