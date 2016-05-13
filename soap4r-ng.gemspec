$:.unshift File.expand_path("../lib", __FILE__)
require 'soap/version'

Gem::Specification.new do |s|
  s.name = 'soap4r_es'
  s.version = SOAP::VERSION::STRING

  s.authors = "Laurence A. Lee, Hiroshi NAKAMURA, Fabiano Pavan"
  s.email = "fabiano.pavan@soluzionipa.it"
  s.homepage = "https://github.com/EuroServiziSRL/soap4r_es"
  s.license = "Ruby"

  s.summary     = "Soap4R-ng - Soap4R (as maintained by RubyJedi) for Ruby 1.8 thru 2.1 and beyond"
  s.description = "Soap4R NextGen (as maintained by RubyJedi) for Ruby 1.8 thru 2.1 and beyond for Euro Servizi SRL"

  s.add_dependency("httpclient", "~> 2.6")
  s.add_dependency("logger-application", "~> 0.0.2")

  s.has_rdoc = false # disable rdoc generation until we've got more
  s.requirements << 'none'
  s.require_path = 'lib'

  s.files = `git ls-files lib bin`.split("\n")
  s.executables = [ "wsdl2ruby_rails.rb", "xsd2ruby.rb" ]
end
