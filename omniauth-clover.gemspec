# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/clover/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-clover"
  spec.version       = OmniAuth::Clover::VERSION
  spec.authors       = ["David Yun", "Rocco Stanzione"]
  spec.email         = ["grasshopper@linuxkungfu.org"]
  spec.description   = %q{Clover OAuth2 Strategy for Omniauth}
  spec.summary       = %q{Clover OAuth2 Strategy for Omniauth}
  spec.homepage      = "https://github.com/gigwage/omniauth-clover.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'omniauth-oauth2', '~> 1.2'

  spec.add_development_dependency "bundler", "~> 2.2"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
