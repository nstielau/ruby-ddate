require 'test/unit/assertions'

World(Test::Unit::Assertions)

Given /^ddate returns "([^\"]*)"$/ do |ddate_string|
  @ddate = Ddate::DiscordianDate.new(ddate_string)
end

Then /^ddate\.day should be "([^\"]*)"$/ do |day|
  assert(@ddate.day == day)
end

Then /^ddate\.year should be "([^\"]*)"$/ do |year|
  assert(@ddate.year == year)
end

Then /^ddate\.day_of_month should be "([^\"]*)"$/ do |day_of_month|
  assert(@ddate.day_of_month == day_of_month)
end

Then /^ddate\.month should be "([^\"]*)"$/ do |month|
  assert(@ddate.month == month)
end
