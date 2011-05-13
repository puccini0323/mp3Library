Feature:  Show MP3
  As a normal user
  I want to view the details of an MP3
  So that I can manage it

  Background:
    Given the following Music File exists:
        | url                           | title          | artist_name  | length | user    | rating  |
        | /MyMusic/new_age/sample1.mp3  | New Beginning  | Blue Stone   | 450    | John    | 2       |

  Scenario: Show MP3 details
    When I go to the MP3 home page
     And I follow "Show"
    Then I should see "** MP3 Info **"
     And I should see "New Beginning"
     And I should see "Blue Stone"
