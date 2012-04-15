# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mobius/version"

Gem::Specification.new do |s|
  s.name        = "mobius"
  s.version     = Mobius::VERSION
  s.authors     = ["Mobius Caesar, GFM"]
  s.email       = ["caesar@mobiusgame.net"]
  s.homepage    = "http://www.mobiusgame.net"
  s.summary     = %q{Client Gem for Mobius Game}
  s.description = %q{Client Gem for Mobius Game}

  s.rubyforge_project = "mobius"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  # s.add_runtime_dependency "net/http"
  # s.add_runtime_dependency "uri"
end
