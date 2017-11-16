
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "qyu/version"

Gem::Specification.new do |spec|
  spec.name                  = "qyu"
  spec.version               = Qyu::VERSION
  spec.authors               = ["Mohamed Osama"]
  spec.email                 = ["mohamed.o.alnagdy@gmail.com"]

  spec.summary               = 'Distributed task execution system for complex workflows'
  spec.description           = 'Distributed task execution system for complex workflows'
  spec.homepage              = 'https://github.com/FindHotel/qyu'
  spec.required_ruby_version = '>= 2.4'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.5"
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'simplecov'
end
