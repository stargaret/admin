require File.expand_path("../lib/admin/version", __FILE__)
# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "admin"
  s.summary = "Admin engine"
  s.description = "Admin engine."
  s.authors                   = [ "Margaret Le" ]
  s.email                     = [ "margaret@mob.me" ]
  s.homepage                  = "http://mob.me"
  s.files = Dir["{app,lib,config}/**/*"] + ["MIT-LICENSE", "Rakefile", "Gemfile", "README.rdoc"]
  s.version = "0.0.1"

  s.files = `git ls-files`.split("\n")
  s.executables = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end