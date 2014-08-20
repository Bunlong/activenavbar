# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activenavbar/version'

Gem::Specification.new do |spec|
  spec.name          = "activenavbar"
  spec.version       = Activenavbar::VERSION
  spec.authors       = ["Bunlong"]
  spec.email         = ["bunlong.van@gmail.com"]
  spec.summary       = %q{active navbar is used to set the active menu link, a link becomes active when you click on it.}
  spec.description   = %q{active navbar is used to set the active menu link, a link becomes active when you click on it.}
  spec.homepage      = "https://github.com/Bunlong/activenavbar"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
