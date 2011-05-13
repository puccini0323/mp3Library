Feature:  Edit MP3
  As a normal user
  I want to edit the details of an MP3

  Background:
    Given the following Music File exists:
        | url                           | title          | artist_name  | length | user    | rating  |
        | /MyMusic/new_age/sample1.mp3  | New Beginning  | Blue Stone   | 450    | John    | 2       |

  @selenium
  Scenario: Editing MP3 details
    When I go to the MP3 home page
     And I follow "Edit"
    Then I should see "Editing mp3"

    When I change the title to "New Ending"
     And I click on the "Update Mp3" button

    Then I should see "Mp3 was successfully updated."
     And I should see "New Ending"
     And I should not see "New Beginning"
