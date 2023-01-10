Feature: Endpoints of restfulbooker testing
  As I user I want to verify all endpoints

  Scenario: Checking user can access all booking Id
    When I send a GET request to booking endpoint
    Then I must get back a valid response code 200

  Scenario Outline: Checking user can create a new booking
    When I send a POST request to create a new booking with firstName"<firstName>", lastName"<lastName>", totalprice "<totalprice>", depositpaid "<depositpaid>", checkin "<checkin>", checkout"<checkout>" additionalneeds "<additionalneeds>"
    Then I must get back a valid response code 201
    And I verfiy that new booking is created by <"id">
    Examples:
      | firstName | lastName | totalprice | depositpaid | checkin    | checkout   | additionalneeds |
      | sid     | thak     | 45         | yes         | 2023-11-04 | 2023-12-05 | breakfast          |

  Scenario: Checking user can update an existing booking
    When I send Put request with  firstName"<firstName>", lastName"<lastName>", totalprice "<totalprice>", depositpaid "<depositpaid>", checkin "<checkin>", checkout"<checkout>" additionalneeds "<additionalneeds>"
    Then I must get back a valid response code 200

    Scenario: Checking user can delete an existing record
      When I send delete requested id
      Then I should see the response code 201
