require_relative 'lib/garactor/version'

Gem::Specification.new do |spec|
  spec.name          = "garactor"
  spec.version       = Garactor::VERSION
  spec.authors       = ["Tadashi Saito"]
  spec.email         = ["tad.a.digger@gmail.com"]

  spec.summary       = %q{To keep name.}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/tadd/garactor"
  spec.required_ruby_version = Gem::Requirement.new(">= 3.0.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^test/}) }
  end
  spec.require_paths = ["lib"]
end
