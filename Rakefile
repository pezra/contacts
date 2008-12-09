require 'spec/rake/spectask'
require 'rake/rdoctask'
require 'pathname'

task :default => :spec

spec_opts = 'spec/spec.opts'
spec_glob = FileList['spec/**/*_spec.rb']
libs = ['lib', 'spec']

desc 'Run all specs in spec directory'
Spec::Rake::SpecTask.new(:spec) do |t|
  t.libs = libs
  t.spec_opts = ['--options', spec_opts]
  t.spec_files = spec_glob
  # t.warning = true
end

namespace :spec do
  desc 'Analyze spec coverage with RCov'
  Spec::Rake::SpecTask.new(:rcov) do |t|
    t.libs = libs
    t.spec_files = spec_glob
    t.spec_opts = ['--options', spec_opts]
    t.rcov = true
    t.rcov_opts = lambda do
      IO.readlines('spec/rcov.opts').map { |l| l.chomp.split(" ") }.flatten
    end
  end
  
  desc 'Print Specdoc for all specs'
  Spec::Rake::SpecTask.new(:doc) do |t|
    t.libs = libs
    t.spec_opts = ['--format', 'specdoc', '--dry-run']
    t.spec_files = spec_glob
  end
  
  desc 'Generate HTML report'
  Spec::Rake::SpecTask.new(:html) do |t|
    t.libs = libs
    t.spec_opts = ['--format', 'html:doc/spec.html', '--diff']
    t.spec_files = spec_glob
    t.fail_on_error = false
  end
end

desc 'Generate RDoc documentation'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_files.add ['README.rdoc', 'MIT-LICENSE', 'lib/**/*.rb']
  rdoc.main = 'README.rdoc'
  rdoc.title = 'Ruby Contacts library'
  
  rdoc.rdoc_dir = 'doc'
  rdoc.options << '--inline-source'
  rdoc.options << '--charset=UTF-8'
end

desc "Generate gemspec"
task "gemspec" do

  Dir.chdir(Pathname(__FILE__).dirname) do 
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
      s.files = (Dir["lib/*"] + Dir["lib/**/*"] + Dir["vendor/*"] + Dir["*"]).reject_excluded_filenames
      s.test_files = (Dir["spec/*"] + Dir["spec/**/*"]).reject_excluded_filenames

      File.open("contacts.gemspec", "w") do |f|
        f.write s.to_ruby
      end                                   
    end
  end  
end  


class Array
  def reject_excluded_filenames(pattern_list = [/.*~$/, /^\#.*\#$/, /.*\.gem$/])
    reject {|a_file| pattern_list.any? {|pat| pat === a_file}}
  end
end
