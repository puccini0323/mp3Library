Feature: Add MP3
  As a normal user
  I want to be able to add an MP3
  So that I can build up my library

  @selenium
  Scenario: Add MP3 to library
    When I go to the MP3 home page
     And I follow "Add Mp3"
    Then I should see "New mp3"

    When I will fill out New Mp3 form
     And I press "Create Mp3"
    Then I should see "Mp3 was successfully created."
     And I should see "Dazed and Confused"
