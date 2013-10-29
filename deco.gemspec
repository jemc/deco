Gem::Specification.new do |s|
  s.name          = 'deco'
  s.version       = '0.0.2'
  s.date          = '2013-10-28'
  s.summary       = \
    "Decorate an existing method in Ruby cleanly, without aliasing."
  s.description   = \
    "Decorate an existing method in Ruby cleanly, without aliasing."
    
  s.authors       = ["Joe McIlvain"]
  s.email         = 'joe.eli.mac@gmail.com'
  s.files         = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md", "USAGE.rb"]
  s.require_path  = 'lib'
  s.homepage      = 'https://github.com/jemc/deco/'
  s.licenses      = ["MIT License",
                     "Copyright 2013 Joe McIlvain"]
end