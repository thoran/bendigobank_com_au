require_relative './lib/BendigobankComAu/VERSION'

class Gem::Specification
  def development_dependencies=(gems)
    gems.each{|gem| add_development_dependency(*gem)}
  end
end

Gem::Specification.new do |spec|
  spec.name = 'bendigobank_com_au'
  spec.version = BendigobankComAu::VERSION

  spec.summary = "Download transactions from Bendigo Bank e-banking."
  spec.description = "Log into Bendigo Bank e-banking and export an account's transactions. Nothing is implemented yet."

  spec.author = 'thoran'
  spec.email = 'code@thoran.com'
  spec.homepage = 'https://github.com/thoran/bendigobank_com_au'
  spec.license = 'MIT'

  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 3.3'

  spec.files = [
    'bendigobank_com_au.gemspec',
    Dir['lib/**/*.rb'],
    Dir['test/**/*.rb'],
    'CHANGELOG',
    'Gemfile',
    'LICENSE',
    'Rakefile',
    'README.md',
  ].flatten

  spec.development_dependencies = %w{
    minitest
    rake
  }
end
