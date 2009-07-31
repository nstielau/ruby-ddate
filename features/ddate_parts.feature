Feature: A Ddate object has methods to access the different parts of the date.

  As a person who uses Ddates
  I want to be able to access the different parts of the Ddate
  So that I can more quickly and effectively interact with different dates

  Scenario Outline: Access Date Parts
    Given ddate returns "<date_string>"
    Then ddate.day should be "<day>"
    And ddate.year should be "<year>"
    And ddate.month should be "<month>"
    And ddate.day_of_week should be "<day_of_week>"
  
    Examples:                                    
      | date_string                              | day_of_week    | month     | year | day |
      | Setting Orange, Confusion 14, 3175 YOLD  | Setting Orange | Confusion | 3175 |  14 |
      | Setting Orange, Confusion 15, 9999 YOLD  | Setting Orange | Confusion | 9999 |  15 |