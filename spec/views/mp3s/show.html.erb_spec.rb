require 'spec_helper'

describe "mp3s/show.html.erb" do
  before(:each) do
    @mp3 = assign(:mp3, stub_model(Mp3,
      :url => "Url",
      :title => "Title",
      :artist_name => "Artist Name",
      :length => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Artist Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
