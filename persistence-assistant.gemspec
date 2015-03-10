# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'persistence/assistant/version'

local_files = `git ls-files -z`.split("\x0").reject do |file|
  file.match(%r{^(test|spec|features)/})
end

Gem::Specification.new do |spec|
  spec.name          = "persistence-assistant"
  spec.version       = Persistence::Assistant::VERSION
  spec.authors       = ["Joseph McCormick"]
  spec.email         = ["esmevane@gmail.com"]

  spec.summary       = %q{Use Rails style database configuration for DB URIs.}
  spec.description   = %q{Use Rails style database configuration for DB URIs.}
  spec.homepage      = "https://github.com/esmevane/persistence-assistant"
  spec.license       = "MIT"

  spec.files         =  local_files
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |file| File.basename(file) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "pry"
end
