# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ddate}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nick Stielau"]
  s.date = %q{2009-07-31}
  s.email = ["nick.stielau@gamil.com"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.rdoc", "Rakefile", "features/ddate_parts.feature", "features/development.feature", "features/step_definitions/common_steps.rb", "features/step_definitions/ddate_steps.rb", "features/support/common.rb", "features/support/env.rb", "features/support/matchers.rb", "lib/ddate.rb", "lib/ddate/discordian_date.rb", "script/console", "script/destroy", "script/generate", "test/test_ddate.rb", "test/test_helper.rb", "test/test_ddate2_cli.rb"]
  s.has_rdoc = true
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{ddate}
  s.rubygems_version = %q{1.3.1}
  s.summary = nil
  s.test_files = ["test/test_ddate.rb", "test/test_ddate2_cli.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<chronic>, [">= 0.2.3"])
      s.add_development_dependency(%q<newgem>, [">= 1.4.1"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.0"])
    else
      s.add_dependency(%q<chronic>, [">= 0.2.3"])
      s.add_dependency(%q<newgem>, [">= 1.4.1"])
      s.add_dependency(%q<hoe>, [">= 1.8.0"])
    end
  else
    s.add_dependency(%q<chronic>, [">= 0.2.3"])
    s.add_dependency(%q<newgem>, [">= 1.4.1"])
    s.add_dependency(%q<hoe>, [">= 1.8.0"])
  end
end
