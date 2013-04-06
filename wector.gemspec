# coding: utf-8
Gem::Specification.new do |spec|
  spec.name          = "wector"
  spec.version       = "0.0.3"
  spec.authors       = ["Stephen Belanger"]
  spec.email         = ["admin@stephenbelanger.com"]
  spec.description   = %q{
    Wector does what we all wish the built-in Vector class did; it makes vector
    math easy by allowing any method of the Numeric interface to be used to
    combine two arrays or an array and a number.
  }
  spec.summary       = %q{Wector makes vector math dead simple}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end