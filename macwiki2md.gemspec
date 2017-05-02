# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'macwiki2md/version'

Gem::Specification.new do |spec|
  spec.name          = 'macwiki2md'
  spec.version       = MacWiki2MD::VERSION
  spec.authors       = ['Björn Albers']
  spec.email         = ['bjoernalbers@gmail.com']

  spec.summary       = "#{spec.name}-#{spec.version}"
  spec.description   = 'Convert a Mac OS X Wiki to Markdown'
  spec.homepage      = 'https://github.com/bjoernalbers/macwiki2md'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
