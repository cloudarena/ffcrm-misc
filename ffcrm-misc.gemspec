$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ffcrm-misc/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ffcrm-misc"
  s.version     = FfcrmMisc::VERSION
  s.authors     = ["Frank Tang"]
  s.email       = ["roadtang@gmail.com"]
  s.homepage    = "https://github.com/cloudarena/ffcrm-misc"
  s.summary     = "FfcrmMisc contains many simple change that is too simple to be a separate plugin"
  s.description = s.summary

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*", "spec/**/*"]
  
  s.add_dependency "rails", "~> 3.2.13"
  s.add_dependency "rspec-rails", "~> 2.0"
  s.add_development_dependency "sqlite3"
end
