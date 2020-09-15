Gem::Specification.new do |s|
  s.name = 'diffyc32'
  s.version = '0.1.1'
  s.summary = 'Diffy with colour on the command-line.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/diffyc32.rb']
  s.add_runtime_dependency('c32', '~> 0.2', '>=0.2.0')
  s.add_runtime_dependency('rexle', '~> 1.5', '>=1.5.8')
  s.add_runtime_dependency('diffy', '~> 3.4', '>=3.4.0')
  s.signing_key = '../privatekeys/diffyc32.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/diffyc32'
end
