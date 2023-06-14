
Gem::Specification.new do |spec|
  spec.name          = "crawlab_ruby_sdk"
  spec.version       = "1.0.0"
  spec.authors       = ["min"]
  spec.email         = ["lijinmin3903@126.com"]

  spec.summary       = %q{This guy is very lazy.}
  spec.description   = %q{This guy is very lazy.}
  spec.homepage      = "https://github.com/rich-bro/crawlab_ruby_sdk"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.7.2")

  spec.metadata["allowed_push_host"] = "https://github.com/rich-bro/crawlab_ruby_sdk"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/rich-bro/crawlab_ruby_sdk."
  spec.metadata["changelog_uri"] = "https://github.com/rich-bro/crawlab_ruby_sdk."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  puts spec.files
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
