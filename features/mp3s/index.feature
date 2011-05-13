Feature:  View MP3s
  As a normal user
  I want to view all of my MP3s
  So that I can manage them

  Background:
    Given the following Music Files exist:
        | url                   | title      | artist_name | length | user    | rating  |
        | /MyMusic/sample1.mp3  | title_1    | artist_1    | 100    | John    | 2       |
        | /MyMusic/sample2.mp3  | title_2    | artist_2    | 200    | Paul    | 2       |
        | /MyMusic/sample3.mp3  | title_3    | artist_3    | 300    | George  | 2       |
        | /MyMusic/sample4.mp3  | title_4    | artist_4    | 400    | Ringo   | 2       |


  Scenario: View library of MP3s
    When I go to the home page
    Then I should see "Welcome to my MP3 library"

    When I follow "View My List"
    Then I should see "My Library of MP3s"
     And I should see "title_1"
     And I should see "title_2"
     And I should see "title_3"
     And I should see "title_4"
     And I should see "Show"
     And I should see "Edit"
     And I should see "Destroy"
     And I should see "Add Mp3"

