# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "pludoni-rubocop"
  spec.version = "1.62.0"
  spec.authors = ["Stefan Wienert"]
  spec.email = ["info@stefanwienert.de"]

  spec.summary = "Shared company Rubocop"
  spec.description = "Shared company Rubocop"
  spec.homepage = "https://github.com/pludoni/pludoni-rubocop"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # betterlint requires 1.62
  spec.add_dependency "betterlint", "~> 1.13.0"
  spec.add_dependency 'rubocop', '~> 1.62.0'
  spec.add_dependency 'rubocop-rails', '~> 2.24.0'
  spec.add_dependency 'rubocop-performance', '~> 4.21.1'
end
