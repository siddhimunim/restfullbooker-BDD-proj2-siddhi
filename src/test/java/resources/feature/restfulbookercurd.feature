Feature: Restful Booker user creation
  As a user I want to test Restful Booker  Operations

  Scenario Outline: Check  CURD operations
    When I send POST request to create a new booking with firstName"<firstName>", lastName"<lastName>", totalprice "<totalprice>", depositpaid "<depositpaid>", checkin "<checkin>", checkout"<checkout>" additionalneeds "<additionalneeds>"
    Then I verfiy that new booking is created by id
    And I send a Put request with  firstName"<firstName>", lastName"<lastName>", totalprice "<totalprice>", depositpaid "<depositpaid>", checkin "<checkin>", checkout"<checkout>" additionalneeds "<additionalneeds>"
    And The totalprice "<totalprice>" is successfully updated
    And I send delete booking by id
    Then The booking is successfully deleted from the record
    Examples:
      | firstName | lastName | totalprice | depositpaid | checkin    | checkout   | additionalneeds |
      | jenna     | thak     | 200        | no          | 2023-10-05 | 2023-11-05 | lunch           |
      | John      | Cena     | 150        | No          | 2023-11-08 | 2023-12-08 | breakfastw      |



