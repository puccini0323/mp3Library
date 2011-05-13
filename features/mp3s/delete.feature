Feature:  Delete MP3
  As a normal user
  I want to delete an MP3 from my library

  Background:
    Given the following Music File exists:
        | url                           | title          | artist_name  | length | user    | rating  |
        | /MyMusic/new_age/sample1.mp3  | New Beginning  | Blue Stone   | 450    | John    | 2       |

  @selenium
  Scenario: Deleting MP3
    When I go to the MP3 home page
     And I follow "Destroy"

    When I confirm popup
    Then I should not see "New Beginning"
