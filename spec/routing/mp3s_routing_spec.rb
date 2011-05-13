require "spec_helper"

describe Mp3sController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/mp3s" }.should route_to(:controller => "mp3s", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/mp3s/new" }.should route_to(:controller => "mp3s", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/mp3s/1" }.should route_to(:controller => "mp3s", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/mp3s/1/edit" }.should route_to(:controller => "mp3s", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/mp3s" }.should route_to(:controller => "mp3s", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/mp3s/1" }.should route_to(:controller => "mp3s", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/mp3s/1" }.should route_to(:controller => "mp3s", :action => "destroy", :id => "1")
    end

  end
end
