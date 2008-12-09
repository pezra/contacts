Gem::Specification.new do |s|
  s.name = %q{contacts}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mislav Marohni\304\207"]
  s.date = %q{2008-12-08}
  s.description = %q{Ruby library for consuming Google, Yahoo!, Flickr and Windows Live contact APIs}
  s.email = %q{mislav.marohnic@gmail.com}
  s.files = ["lib/config", "lib/contacts.rb", "lib/contacts", "lib/config/contacts.yml", "lib/contacts/flickr.rb", "lib/contacts/google.rb", "lib/contacts/version.rb", "lib/contacts/windows_live.rb", "lib/contacts/yahoo.rb", "vendor/windowslivelogin.rb", "MIT-LICENSE", "README.rdoc", "Rakefile", "lib", "spec", "vendor", "contacts.gemspec", "spec/contact_spec.rb", "spec/fake_net_http.rb", "spec/fake_web.rb", "spec/feeds", "spec/flickr", "spec/gmail", "spec/rcov.opts", "spec/spec.opts", "spec/spec_helper.rb", "spec/windows_live", "spec/yahoo", "spec/feeds/contacts.yml", "spec/feeds/flickr", "spec/feeds/flickr/auth.getFrob.xml", "spec/feeds/flickr/auth.getToken.xml", "spec/feeds/google-many.xml", "spec/feeds/google-single.xml", "spec/feeds/wl_contacts.xml", "spec/feeds/yh_contacts.txt", "spec/feeds/yh_credential.xml", "spec/flickr/auth_spec.rb", "spec/gmail/auth_spec.rb", "spec/gmail/fetching_spec.rb", "spec/windows_live/windows_live_spec.rb", "spec/yahoo/yahoo_spec.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/mislav/contacts}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{Online contact APIs library}
  s.test_files = ["spec/contact_spec.rb", "spec/fake_net_http.rb", "spec/fake_web.rb", "spec/feeds", "spec/flickr", "spec/gmail", "spec/rcov.opts", "spec/spec.opts", "spec/spec_helper.rb", "spec/windows_live", "spec/yahoo", "spec/contact_spec.rb", "spec/fake_net_http.rb", "spec/fake_web.rb", "spec/feeds", "spec/feeds/contacts.yml", "spec/feeds/flickr", "spec/feeds/flickr/auth.getFrob.xml", "spec/feeds/flickr/auth.getToken.xml", "spec/feeds/google-many.xml", "spec/feeds/google-single.xml", "spec/feeds/wl_contacts.xml", "spec/feeds/yh_contacts.txt", "spec/feeds/yh_credential.xml", "spec/flickr", "spec/flickr/auth_spec.rb", "spec/gmail", "spec/gmail/auth_spec.rb", "spec/gmail/fetching_spec.rb", "spec/rcov.opts", "spec/spec.opts", "spec/spec_helper.rb", "spec/windows_live", "spec/windows_live/windows_live_spec.rb", "spec/yahoo", "spec/yahoo/yahoo_spec.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
    else
    end
  else
  end
end
