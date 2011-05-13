require 'spec_helper'

describe "mp3s/new.html.erb" do
  before(:each) do
    assign(:mp3, stub_model(Mp3,
      :url => "MyString",
      :title => "MyString",
      :artist_name => "MyString",
      :length => 1
    ).as_new_record)
  end

  it "renders new mp3 form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => mp3s_path, :method => "post" do
      assert_select "input#mp3_url", :name => "mp3[url]"
      assert_select "input#mp3_title", :name => "mp3[title]"
      assert_select "input#mp3_artist_name", :name => "mp3[artist_name]"
      assert_select "input#mp3_length", :name => "mp3[length]"
    end
  end
end
