# coding: utf-8

# def bin_after_install(spec)
#   raise 'yo' if spec.installed_by_version.version.to_f > 0
#   #   ['ngrok']
#   # end
# end

Gem::Specification.new do |spec|
  spec.name          = 'ngrok'
  spec.version       = '1.6.1'
  spec.authors       = ['Alex Peattie']
  spec.email         = ['alexpeattie@gmail.com']
  spec.summary       = %q{ngrok packaged as a gem (for easy installation)}
  spec.homepage      = 'http://github.com/alexpeattie/ngrok-gem'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.extensions    = ['ext/rakefile.rb']
  spec.require_paths = ["lib"]
  spec.executables   = ['ngrok']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_runtime_dependency 'daemons'
  spec.add_runtime_dependency 'listen'
end
