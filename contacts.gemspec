Gem::Specification.new do |s|
  s.name     = "contacts"
  s.version  = "0.1.0"
  s.date     = "2008-12-8"
  s.summary  = "Online contact APIs library"
  s.email    = "mislav.marohnic@gmail.com"
  s.homepage = "http://github.com/mislav/contacts"
  s.description = "Ruby library for consuming Google, Yahoo!, Flickr and Windows Live contact APIs"
  s.has_rdoc = true
  s.authors  = ["Mislav Marohnić"]
  s.files    = ["MIT-LICENSE", 
                "Rakefile", 
                "README.rdoc",
                "lib/contacts.rb"] + 
                Dir["lib/**/*.rb"] + 
                Dir["vendor/*.rb"] 
  s.test_files = Dir["spec/*"] + 
                 Dir["spec/**/*"]
  s.rdoc_options = ["--main", "README.rdoc"]
  s.extra_rdoc_files = ["README.rdoc"]
end
