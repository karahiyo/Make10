# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "make10"
  spec.version       = "0.1.0"
  spec.authors       = ["karahiyo"]
  spec.email         = ["a.ryuklnm@gmail.com"]
  spec.description   = %q{Solve Make10 problem.}
  spec.summary       = %q{Solve Make10 problem.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.rubyforge_project = "Make10"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
