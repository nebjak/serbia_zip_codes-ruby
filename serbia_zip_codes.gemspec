# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "serbia_zip_codes"
  spec.version       = "0.1.0"
  spec.authors       = ["Nebojša Jakovljević"]
  spec.email         = ["nebojsa@nebjak.net"]
  spec.summary       = %q{Easy access to Serbia zip codes}
  spec.description   = %q{Easy access to Serbia zip codes. You can search zip code by city, or city by zip code.}
  spec.homepage      = "http://github.com/nebjak/serbia_zip_codes-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake", "~> 10.0"
end
