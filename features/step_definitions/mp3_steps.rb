Given /^the following Music Files? exists?:$/ do |table|
  table.hashes.each do |hash|
    mp3 = Factory(:mp3, :url => hash[:url], :title => hash[:title], :artist_name => hash[:artist_name], :length => hash[:length])
    mp3.ratings.create(:user => hash[:user], :value => hash[:rating] )
  end
end


When /^I will fill out New Mp3 form$/ do
  fill_in("Url", :with => "/MyMusic/mp3/sample1.mp3")
  fill_in("Title", :with => "Dazed and Confused")
  fill_in("Artist name", :with => "Led Zeppelin")
  fill_in("Length", :with => "367")
end


When /^I fill out the Rating form with user "([^"]*)" and value of "([^"]*)"$/ do |user, value|
  fill_in("User", :with => user)
  select  "#{value}", :from => "Value"
end

When /^I click on the "([^"]*)" button$/ do |name|
   click_button "#{name}"
end


When /^I change the title to "([^"]*)"$/ do |new_title|
  fill_in("Title", :with => new_title)
end

When /^I confirm popup$/ do
  page.driver.browser.switch_to.alert.accept
end
