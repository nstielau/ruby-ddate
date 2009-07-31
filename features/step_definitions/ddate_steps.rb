require 'test/unit/assertions'

World(Test::Unit::Assertions)

Given /^ddate returns "([^\"]*)"$/ do |ddate_string|
  @ddate = Ddate::DiscordianDate.new(ddate_string)
end

Given /^I parse a ddate from the date string "([^\"]*)"$/ do |date_string|
  @ddate = Ddate::DiscordianDate.parse(date_string)
end

Given /^ddate for xday/ do
  @ddate = Ddate::DiscordianDate.xday
end

Then /^ddate\.day should be "([^\"]*)"$/ do |day|
  assert_equal(@ddate.day, day.to_i)
end

Then /^ddate\.year should be "([^\"]*)"$/ do |year|
  assert_equal(@ddate.year, year.to_i)
end

Then /^ddate\.day_of_week should be "([^\"]*)"$/ do |day_of_week|
  assert_equal(@ddate.day_of_week, day_of_week)
end

Then /^ddate\.month should be "([^\"]*)"$/ do |month|
  assert_equal(@ddate.month, month.to_i)
end

Then /^ddate should be parsed successfully$/ do
  assert(!@ddate.nil?)
  assert(!(@ddate.day == ""), "The day is #{@ddate.day}")
  assert(!(@ddate.month == ""))
  assert(!(@ddate.day == ""))  
  assert(!(@ddate.year == ""))
end

Then /^ddate\.is_xday\? should be "([^\"]*)"$/ do |bool|
  @ddate.is_xday?.to_s.downcase == bool
end

Then /^ddate\.to_s should not contain a newline$/ do
  assert(!@ddate.nil?)
  assert(!@ddate.to_s.match("\n"), "Converting a Ddate to a string should not contain a newline")
end

