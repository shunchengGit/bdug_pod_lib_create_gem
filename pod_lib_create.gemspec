
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "pod_lib_create/version"

Gem::Specification.new do |spec|
  spec.name          = "pod_lib_create"
  spec.version       = PodLibCreate::VERSION
  spec.authors       = ["chengshun"]
  spec.email         = ["chengshun.1990@qq.com"]

  spec.summary       = %q{pod lib create加速.}
  spec.description   = %q{固化pod lib create常用设置，加快pod lib create速度.}
  spec.homepage      = "https://github.com/shunchengGit/pod_lib_create_gem"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = "pod_lib_create"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "cocoapods", '~> 0'
end
