# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'snapengage_client/version'

Gem::Specification.new do |spec|
  spec.name          = "snapengage_client"
  spec.version       = SnapengageClient::Client::VERSION
  spec.authors       = ["Ciaran Lofts"]
  spec.email         = ["ciaran@wishpond.com"]

  spec.summary       = %q{Write a short summary, because Rubygems requires one.}
  spec.homepage      = "https://github.com/cjlofts/snapengage_client"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.add_dependency 'httparty'
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
