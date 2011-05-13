Feature:  Create Playlist
  As a normal user
  I want to create a playlist of my MP3s
  So that I can play it on my media player

  Background:
    Given the following Music Files exist:
        | url                   | title      | artist_name | length | user    | rating  |
        | /MyMusic/sample1.mp3  | title_1    | artist_1    | 100    | John    | 2       |
        | /MyMusic/sample2.mp3  | title_2    | artist_2    | 200    | Paul    | 2       |
        | /MyMusic/sample9.mp3  | title_9    | artist_2    | 200    | George  | 3       |
        | /MyMusic/sample3.mp3  | title_3    | artist_3    | 300    | Ringo   | 2       |
        | /MyMusic/sample4.mp3  | title_4    | artist_4    | 400    | Richard | 2       |


  Scenario: Create playlist from all MP3s in library
    When I go to the MP3 home page
     And I follow "Playlist"
    Then I should see "New Playlist"
    When I follow "Select all"
    Then I should see "Current Playlist (all songs selected)"
     And I should see "artist_1"
     And I should see "artist_2"
     And I should see "artist_3"
     And I should see "artist_4"

  @selenium
  Scenario: Use filter to create playlist
    When I go to the MP3 home page
     And I follow "Playlist"
    Then I should see "New Playlist"
    When I select the artist name of "artist_2" and a minimum rating of "3"
    And I click on the "Filter Playlist" button
    Then I should see "Current Playlist (filtered)"
    And I should see "artist_2"
    And I should see "title_9"
    And I should not see "title_2"
    And I should not see "artist_1"
    And I should not see "artist_3"
    And I should not see "artist_4"





