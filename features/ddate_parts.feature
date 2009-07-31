Feature: A Ddate object has methods to access the different parts of the date.

  As a person who uses Ddates
  I want to be able to access the different parts of the Ddate
  So that I can more quickly and effectively interact with different dates
    
  Scenario: Access year
    Given ddate returns "Setting Orange, Confusion 14, 3175 YOLD"
    Then ddate.day should be "Setting Orange"
    And ddate.year should be "3175"
    And ddate.day_of_month should be "14"
    And ddate.month should be "Confusion"
