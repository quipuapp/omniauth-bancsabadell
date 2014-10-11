# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'omniauth/bancsabadell/version'

Gem::Specification.new do |s|
  s.name     = 'omniauth-bancsabadell'
  s.version  = OmniAuth::Bancsabadell::VERSION
  s.authors  = ['Albert Bellonch']
  s.email    = ['albert@getquipu.com']
  s.summary  = 'BancSabadell OAuth2 Strategy for OmniAuth'
  s.homepage = 'https://getquipu.com'
  s.license  = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_runtime_dependency 'omniauth-oauth2', '~> 1.2'
end
