require_relative 'lib/hearthstone_deck_cli/version'

Gem::Specification.new do |spec|
  spec.name          = "hearthstone_deck_cli"
  spec.version       = HearthstoneDeckCli::VERSION
  spec.authors       = ["Halle Montgomery"]
  spec.email         = ["h.rikkele.montgomery@gmail.com"]

  spec.summary       = "hearthstone deck builder gem"
  spec.description   = "hearthstone deck builder gem"
  spec.homepage      = "https://github.com/hvlleinc/hearthstone_deck_cli"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = "https://github.com/hvlleinc/hearthstone_deck_cli"
  spec.metadata["source_code_uri"] = "https://github.com/hvlleinc/hearthstone_deck_cli"
  spec.metadata["changelog_uri"] = "https://github.com/hvlleinc/hearthstone_deck_cli"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]


  spec.add_development_dependency "pry"
  # spec.add_development_dependency "HTTParty"
end
