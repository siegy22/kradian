# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "kradian/version"

Gem::Specification.new do |spec|
  spec.name          = "kradian"
  spec.version       = Kradian::VERSION
  spec.authors       = ["Yves Siegrist"]
  spec.email         = ["Elektron1c97@gmail.com"]

  spec.summary       = %q{Kradian loves to change his name on steam every second.
                          With this gem, we ensure he has the same name on the whiffmasters discord server.}
  spec.homepage      = "https://github.com/siegy22/kradian"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "discordrb", "~> 3.2"
  spec.add_dependency "steam-api", "~> 1.1"
  spec.add_dependency "dotenv", "~> 2.2"

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
