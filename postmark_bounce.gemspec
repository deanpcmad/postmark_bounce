$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "postmark_bounce/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "postmark_bounce"
  s.version     = PostmarkBounce::VERSION
  s.authors     = ["Dean Perry"]
  s.email       = ["dean@voupe.com"]
  s.homepage    = "https://voupe.com"
  s.summary     = "Add Postmark Bounce notifications in your Rails app"
  s.description = "Rubygem to easily add Postmark Bounce notifications to your Rails app"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"

  s.add_development_dependency "sqlite3"
end
