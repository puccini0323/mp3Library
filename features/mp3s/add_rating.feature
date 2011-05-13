Feature:  Rate an MP3
  As a normal user
  I want to rate an MP3

  Background:
    Given the following Music File exists:
        | url                          | title         | artist_name  | length | user    | rating  |
        | /MyMusic/new_age/sample1.mp3 | New Beginning | Blue Stone   | 450    | John    | 2       |


  @selenium
  Scenario: Rating an MP3
    When I go to the MP3 home page
     And I follow "Show"
    Then I should see "** MP3 Info **"
     And I should see "New Beginning"
     And I should see "Blue Stone"
     And I should see "Add a rating"

    When I fill out the Rating form with user "Angela" and value of "3"
     And I click on the "Create Rating" button
    Then I should see "Angela"
     And I should see "3"

     When I fill out the Rating form with user "Sofia" and value of "5"
      And I click on the "Create Rating" button
     Then I should see "Angela"
      And I should see "3"
      And I should see "Sofia"
      And I should see "4"
      And I should see "3.33"
