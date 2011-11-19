Gem::Specification.new do |s|
  s.name        = "wheelhouse-google-analytics"
  s.platform    = Gem::Platform::RUBY
  s.version     = "0.1"

  s.required_ruby_version     = ">= 1.8.7"
  s.required_rubygems_version = ">= 1.3.6"
  
  s.summary     = "Wheelhouse Google Analytics Plugin"
  s.description = "Google Analytics plugin for Wheelhouse CMS."
  s.author      = "Sam Pohlenz"
  s.email       = "info@wheelhousecms.com"
  s.homepage    = "http://www.wheelhousecms.com/"
  
  s.files        = Dir.glob("{app,config,lib}/**/*")
  s.require_path = "lib"
  
  s.add_dependency("wheelhouse", "~> 0.10.15")
end
