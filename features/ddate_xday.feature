Feature: A Ddate object has methods to interact with a date an determine if it is Xday, or its relation to Xday.

  As a person who uses Ddates
  I want to be able to compare a given Ddate to Xday
  So that I can tell how long I've got left

  Scenario Outline: Compare Ddate to Xday
    Given ddate returns "<date_string>"
    Then ddate.is_xday? should be "<is_xday?>"
  
    Examples:                                    
      | date_string                              | is_xday? |
      | Setting Orange, Confusion 14, 3175 YOLD  | false    |
      | Setting Orange, Confusion 40, 9827 YOLD  | true     |
      
      
  Scenario: Generate a Ddate at Xday
    Given ddate for xday
    Then ddate.is_xday? should be "true"
    And ddate.day should be "40"
    And ddate.year should be "9827"
    And ddate.month should be "confusion"
