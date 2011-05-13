
When /^I select the artist name of "([^"]*)" and a minimum rating of "([^"]*)"$/ do |artist, rating|
  select  "#{artist}", :from => "artist_name"
  select  "#{rating}", :from => "rating_value"
end
