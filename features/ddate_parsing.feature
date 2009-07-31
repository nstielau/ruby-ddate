Feature: Ddate can parse a variety of date strings into DDate

  As a person who uses Ddates
  I want to be able to parse date strings into Ddate objects
  So that I can more quickly and effectively interact with different dates                                             
                                                 
  Scenario Outline: Parse date string
    Given I parse a ddate from the date string "<date_string>"
    Then ddate should be parsed successfully

    Examples:                                     
      | date_string                              |
      | today                                    |
      | yesterday                                |
      | Sun Jul 26 15:27:51 PDT 2009             |
      | one month ago                            |