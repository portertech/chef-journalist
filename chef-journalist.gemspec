Gem::Specification.new do |s|
  s.name        = "chef-journalist"
  s.version     = "0.0.2"
  s.authors     = ["Sean Porter"]
  s.email       = ["portertech@gmail.com"]
  s.homepage    = "https://github.com/portertech/chef-journalist"
  s.summary     = "An OpsCode Chef report handler for updated resources"
  s.description = "An OpsCode Chef report handler for updated resources"
  s.has_rdoc    = false
  s.license     = "MIT"

  s.rubyforge_project = "chef-journalist"

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]
end
