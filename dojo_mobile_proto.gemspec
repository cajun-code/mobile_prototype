# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dojo_mobile_proto/version'

Gem::Specification.new do |gem|
  gem.name          = "dojo_mobile_proto"
  gem.version       = DojoMobileProto::VERSION
  gem.authors       = ["Allan Davis"]
  gem.email         = ["cajun.code@gmail.com"]
  gem.description   = %q{Project generator to kickstart a mobile prototype application with dojo}
  gem.summary       = %q{Project generator to kickstart a mobile dojo prototype application. See: http://www.dojotoolkit.org for more information about dojo}
  gem.homepage      = "https://github.com/cajun-code/dojo_mobile_prototype"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency "thor"
  #gem.add_dependency 'sinatra'
end
