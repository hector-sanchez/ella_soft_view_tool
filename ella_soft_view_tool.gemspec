
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ella_soft_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "ella_soft_view_tool"
  spec.version       = EllaSoftViewTool::VERSION
  spec.authors       = ["Hector Sanchez"]
  spec.email         = ["sanchez.hector.m@gmail.com"]

  spec.summary       = %q{Various specific methods.}
  spec.description   = %q{Provides generated HTML data for Rails applications.}
  spec.homepage      = "http://github.com/hector-sanchez."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
