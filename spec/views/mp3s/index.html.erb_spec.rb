require 'spec_helper'

describe "mp3s/index.html.erb" do
  before(:each) do
    assign(:mp3s, [
      stub_model(Mp3,
        :url => "Url",
        :title => "Title",
        :artist_name => "Artist Name",
        :length => 1
      ),
      stub_model(Mp3,
        :url => "Url",
        :title => "Title",
        :artist_name => "Artist Name",
        :length => 1
      )
    ])
  end

  it "renders a list of mp3s" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Artist Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
