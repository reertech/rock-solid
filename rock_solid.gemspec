lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'rock-solid'
  spec.version       = '0.1'
  spec.authors       = ['Rustam Manakov']
  spec.email         = ['rustam.lon10@gmail.com']

  spec.summary       = 'Solid Commerce Products Sync'
  spec.description   = 'Solid Commerce Products Sync Support Library'
  spec.homepage      = 'http://reer.tech'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'TODO: Set to "http://mygemserver.com"'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'

  spec.add_dependency 'settingslogic'
  spec.add_dependency 'rest-client'
  spec.add_dependency 'virtus'
  spec.add_dependency 'activesupport'
end
