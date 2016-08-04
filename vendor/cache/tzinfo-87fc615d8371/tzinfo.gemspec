# -*- encoding: utf-8 -*-
# stub: tzinfo 1.2.2 ruby lib

Gem::Specification.new do |s|
  s.name = "tzinfo".freeze
  s.version = "1.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Philip Ross".freeze]
  s.date = "2016-08-04"
  s.description = "TZInfo provides daylight savings aware transformations between times in different time zones.".freeze
  s.email = "phil.ross@gmail.com".freeze
  s.extra_rdoc_files = ["README.md".freeze, "CHANGES.md".freeze, "LICENSE".freeze]
  s.files = [".yardopts".freeze, "CHANGES.md".freeze, "LICENSE".freeze, "README.md".freeze, "Rakefile".freeze, "lib/tzinfo.rb".freeze, "lib/tzinfo/country.rb".freeze, "lib/tzinfo/country_index_definition.rb".freeze, "lib/tzinfo/country_info.rb".freeze, "lib/tzinfo/country_timezone.rb".freeze, "lib/tzinfo/data_source.rb".freeze, "lib/tzinfo/data_timezone.rb".freeze, "lib/tzinfo/data_timezone_info.rb".freeze, "lib/tzinfo/info_timezone.rb".freeze, "lib/tzinfo/linked_timezone.rb".freeze, "lib/tzinfo/linked_timezone_info.rb".freeze, "lib/tzinfo/offset_rationals.rb".freeze, "lib/tzinfo/ruby_country_info.rb".freeze, "lib/tzinfo/ruby_data_source.rb".freeze, "lib/tzinfo/time_or_datetime.rb".freeze, "lib/tzinfo/timezone.rb".freeze, "lib/tzinfo/timezone_definition.rb".freeze, "lib/tzinfo/timezone_index_definition.rb".freeze, "lib/tzinfo/timezone_info.rb".freeze, "lib/tzinfo/timezone_offset.rb".freeze, "lib/tzinfo/timezone_period.rb".freeze, "lib/tzinfo/timezone_proxy.rb".freeze, "lib/tzinfo/timezone_transition.rb".freeze, "lib/tzinfo/timezone_transition_definition.rb".freeze, "lib/tzinfo/transition_data_timezone_info.rb".freeze, "lib/tzinfo/version.rb".freeze, "lib/tzinfo/zoneinfo_country_info.rb".freeze, "lib/tzinfo/zoneinfo_data_source.rb".freeze, "lib/tzinfo/zoneinfo_timezone_info.rb".freeze, "test/tc_country.rb".freeze, "test/tc_country_index_definition.rb".freeze, "test/tc_country_info.rb".freeze, "test/tc_country_timezone.rb".freeze, "test/tc_data_source.rb".freeze, "test/tc_data_timezone.rb".freeze, "test/tc_data_timezone_info.rb".freeze, "test/tc_info_timezone.rb".freeze, "test/tc_linked_timezone.rb".freeze, "test/tc_linked_timezone_info.rb".freeze, "test/tc_offset_rationals.rb".freeze, "test/tc_ruby_country_info.rb".freeze, "test/tc_ruby_data_source.rb".freeze, "test/tc_time_or_datetime.rb".freeze, "test/tc_timezone.rb".freeze, "test/tc_timezone_definition.rb".freeze, "test/tc_timezone_index_definition.rb".freeze, "test/tc_timezone_info.rb".freeze, "test/tc_timezone_london.rb".freeze, "test/tc_timezone_melbourne.rb".freeze, "test/tc_timezone_new_york.rb".freeze, "test/tc_timezone_offset.rb".freeze, "test/tc_timezone_period.rb".freeze, "test/tc_timezone_proxy.rb".freeze, "test/tc_timezone_transition.rb".freeze, "test/tc_timezone_transition_definition.rb".freeze, "test/tc_timezone_utc.rb".freeze, "test/tc_transition_data_timezone_info.rb".freeze, "test/tc_version.rb".freeze, "test/tc_zoneinfo_country_info.rb".freeze, "test/tc_zoneinfo_data_source.rb".freeze, "test/tc_zoneinfo_timezone_info.rb".freeze, "test/test_utils.rb".freeze, "test/ts_all.rb".freeze, "test/ts_all_ruby.rb".freeze, "test/ts_all_zoneinfo.rb".freeze, "test/tzinfo-data/tzinfo/data.rb".freeze, "test/tzinfo-data/tzinfo/data/definitions/America/Argentina/Buenos_Aires.rb".freeze, "test/tzinfo-data/tzinfo/data/definitions/America/New_York.rb".freeze, "test/tzinfo-data/tzinfo/data/definitions/Australia/Melbourne.rb".freeze, "test/tzinfo-data/tzinfo/data/definitions/EST.rb".freeze, "test/tzinfo-data/tzinfo/data/definitions/Etc/GMT__m__1.rb".freeze, "test/tzinfo-data/tzinfo/data/definitions/Etc/GMT__p__1.rb".freeze, "test/tzinfo-data/tzinfo/data/definitions/Etc/UTC.rb".freeze, "test/tzinfo-data/tzinfo/data/definitions/Europe/Amsterdam.rb".freeze, "test/tzinfo-data/tzinfo/data/definitions/Europe/Andorra.rb".freeze, "test/tzinfo-data/tzinfo/data/definitions/Europe/London.rb".freeze, "test/tzinfo-data/tzinfo/data/definitions/Europe/Paris.rb".freeze, "test/tzinfo-data/tzinfo/data/definitions/Europe/Prague.rb".freeze, "test/tzinfo-data/tzinfo/data/definitions/UTC.rb".freeze, "test/tzinfo-data/tzinfo/data/indexes/countries.rb".freeze, "test/tzinfo-data/tzinfo/data/indexes/timezones.rb".freeze, "test/tzinfo-data/tzinfo/data/version.rb".freeze, "test/zoneinfo/America".freeze, "test/zoneinfo/America/Argentina".freeze, "test/zoneinfo/America/Argentina/Buenos_Aires".freeze, "test/zoneinfo/America/New_York".freeze, "test/zoneinfo/Australia".freeze, "test/zoneinfo/Australia/Melbourne".freeze, "test/zoneinfo/EST".freeze, "test/zoneinfo/Etc".freeze, "test/zoneinfo/Etc/UTC".freeze, "test/zoneinfo/Europe".freeze, "test/zoneinfo/Europe/Amsterdam".freeze, "test/zoneinfo/Europe/Andorra".freeze, "test/zoneinfo/Europe/London".freeze, "test/zoneinfo/Europe/Paris".freeze, "test/zoneinfo/Europe/Prague".freeze, "test/zoneinfo/Factory".freeze, "test/zoneinfo/iso3166.tab".freeze, "test/zoneinfo/posix".freeze, "test/zoneinfo/posix/Europe".freeze, "test/zoneinfo/posix/Europe/London".freeze, "test/zoneinfo/posixrules".freeze, "test/zoneinfo/right".freeze, "test/zoneinfo/right/Europe".freeze, "test/zoneinfo/right/Europe/London".freeze, "test/zoneinfo/zone.tab".freeze, "test/zoneinfo/zone1970.tab".freeze, "tzinfo.gemspec".freeze]
  s.homepage = "http://tzinfo.github.io".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--title".freeze, "TZInfo".freeze, "--main".freeze, "README.md".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "2.6.6".freeze
  s.summary = "Daylight savings aware timezone library".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<concurrent-ruby>.freeze, ["~> 1.0"])
    else
      s.add_dependency(%q<concurrent-ruby>.freeze, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<concurrent-ruby>.freeze, ["~> 1.0"])
  end
end
