
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "prescreen/api/version"

Gem::Specification.new do |spec|
  spec.name          = "prescreen-api"
  spec.version       = Prescreen::Api::VERSION
  spec.authors       = ["Johannes Heck"]
  spec.email         = ["yoyostile@gmail.com"]

  spec.summary       = %q{API Gem for Prescreen}
  spec.description   = %q{API Gem for Prescreen}
  spec.homepage      = "https://github.com/yoyostile/prescreen-api"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'dotenv'
  spec.add_development_dependency 'http_logger'
  spec.add_development_dependency 'rubocop'

  spec.add_dependency 'activeresource', '>= 5'
end
