# coding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "huobi_client/version"

Gem::Specification.new do |spec|
  spec.name          = "huobi_client"
  spec.version       = HuobiClient::VERSION
  spec.authors       = ["Vcinly"]
  spec.email         = ["vcinly@gmail.com"]

  spec.summary       = %q{A Huobi api client.}
  spec.description   = %q{A Huobi api client.}
  spec.homepage      = "https://github.com/vcinly/huobi_client"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", "~> 0.15"
  spec.add_dependency "faraday_middleware", "~> 0.12.2"
  spec.add_dependency "activerecord", "~> 5.2.0"
  spec.add_dependency "json", "~> 2.1"
  spec.add_dependency "awesome_print", "~> 1.8.0"
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry", "~> 0.11.3"
  spec.add_development_dependency "safe_yaml", "~> 1.0.4"
end
