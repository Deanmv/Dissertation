# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "siriproxy-logic"
  s.version     = "0.1"
  s.authors     = ["Dean_Vizer"]
  s.email       = ["Dean@deanvizer.com"]
  s.homepage    = "http://www.deanvizer.com"
  s.summary     = %q{Siri Logic Controller Plugin}
  s.description = %q{This plugin allows you to control Logic Pro using Siri from anywhere on the same wifi network. }

  s.rubyforge_project = "siriproxy-logic"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end