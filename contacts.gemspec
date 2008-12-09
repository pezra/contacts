Gem::Specification.new do |s|
  s.name     = "contacts"
  s.version  = "0.1.0"
  s.date     = Time.now
  s.summary  = "Online contact APIs library"
  s.email    = "mislav.marohnic@gmail.com"
  s.homepage = "http://github.com/mislav/contacts"
  s.description = "Ruby library for consuming Google, Yahoo!, Flickr and Windows Live contact APIs"
  s.has_rdoc = true
  s.authors  = ["Mislav Marohnić"]
  s.files    = ["MIT-LICENSE", 
      "Rakefile", 
      "README.rdoc",
      "contacts.gemspec",
      "lib/config/contacts.yml",
      "lib/contacts.rb",
      "lib/contacts/flickr.rb",
      "lib/contacts/google.rb",
      "lib/contacts/version.rb",
      "lib/contacts/windows_live.rb",
      "lib/contacts/yahoo.rb",
      "vendor/windowslivelogin.rb"]
  s.test_files = ["./spec/contact_spec.rb",
      "spec/fake_net_http.rb",
      "spec/fake_web.rb",
      "spec/feeds/contacts.yml",
      "spec/feeds/flickr",
      "spec/feeds/flickr/auth.getFrob.xml",
      "spec/feeds/flickr/auth.getToken.xml",
      "spec/feeds/google-many.xml",
      "spec/feeds/google-single.xml",
      "spec/feeds/wl_contacts.xml",
      "spec/feeds/yh_contacts.txt",
      "spec/feeds/yh_credential.xml",
      "spec/flickr/auth_spec.rb",
      "spec/gmail/auth_spec.rb",
      "spec/gmail/fetching_spec.rb",
      "spec/rcov.opts",
      "spec/spec.opts",
      "spec/spec_helper.rb",
      "spec/windows_live/windows_live_spec.rb",
      "spec/yahoo/yahoo_spec.rb"]
  s.rdoc_options = ["--main", "README.rdoc"]
  s.extra_rdoc_files = ["README.rdoc"]
end
