$:.push File.expand_path("../lib", __FILE__)

require "secretary/gem_version"

Gem::Specification.new do |s|
  s.name        = "secretary-rails"
  s.version     = Secretary::GEM_VERSION
  s.authors     = ["Bryan Ricker"]
  s.email       = ["bricker@scpr.org"]
  s.homepage    = "https://github.com/scpr/secretary-rails"
  s.license     = "MIT"
  s.summary     = "Light-weight model versioning for ActiveRecord."
  s.description = "A Rails engine that provides simple versioning for " \
                  "your records."

  s.files = Dir["{app,config,db,lib}/**/*"] +
            ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "railties", ">= 3.2.0"
  s.add_dependency "activerecord", ">= 3.2.0"
  s.add_dependency "diffy", "~> 3.0.1"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "mysql2"
  s.add_development_dependency "pg"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "factory_girl"
  s.add_development_dependency "generator_spec", "~> 0.9.1"
  s.add_development_dependency "appraisal", ">= 1.0.0.beta2"
end
