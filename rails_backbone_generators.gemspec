# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_backbone_generators'

Gem::Specification.new do |spec|
  spec.name          = "rails_backbone_generators"
  spec.version       = OfcpCardCounter::VERSION
  spec.authors       = ["Jade Meskill", "Roy van de Water"]
  spec.email         = ["gems@integrumtech.com"]
  spec.description   = %q{Rails Backbone Generators}
  spec.summary       = %q{Generators for creating CoffeeScript Backbone Views, Models, Collections and Routers}
  spec.homepage      = "https://github.com/integrum/rails_backbone_generators"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
end
