require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe Mp3sController do

  def mock_mp3(stubs={})
    @mock_mp3 ||= mock_model(Mp3, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all mp3s as @mp3s" do
      Mp3.stub(:all) { [mock_mp3] }
      get :index
      assigns(:mp3s).should eq([mock_mp3])
    end
  end

  describe "GET show" do
    it "assigns the requested mp3 as @mp3" do
      Mp3.stub(:find).with("37") { mock_mp3 }
      get :show, :id => "37"
      assigns(:mp3).should be(mock_mp3)
    end
  end

  describe "GET new" do
    it "assigns a new mp3 as @mp3" do
      Mp3.stub(:new) { mock_mp3 }
      get :new
      assigns(:mp3).should be(mock_mp3)
    end
  end

  describe "GET edit" do
    it "assigns the requested mp3 as @mp3" do
      Mp3.stub(:find).with("37") { mock_mp3 }
      get :edit, :id => "37"
      assigns(:mp3).should be(mock_mp3)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created mp3 as @mp3" do
        Mp3.stub(:new).with({'these' => 'params'}) { mock_mp3(:save => true) }
        post :create, :mp3 => {'these' => 'params'}
        assigns(:mp3).should be(mock_mp3)
      end

      it "redirects to the created mp3" do
        Mp3.stub(:new) { mock_mp3(:save => true) }
        post :create, :mp3 => {}
        response.should redirect_to(mp3_url(mock_mp3))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved mp3 as @mp3" do
        Mp3.stub(:new).with({'these' => 'params'}) { mock_mp3(:save => false) }
        post :create, :mp3 => {'these' => 'params'}
        assigns(:mp3).should be(mock_mp3)
      end

      it "re-renders the 'new' template" do
        Mp3.stub(:new) { mock_mp3(:save => false) }
        post :create, :mp3 => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested mp3" do
        Mp3.stub(:find).with("37") { mock_mp3 }
        mock_mp3.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :mp3 => {'these' => 'params'}
      end

      it "assigns the requested mp3 as @mp3" do
        Mp3.stub(:find) { mock_mp3(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:mp3).should be(mock_mp3)
      end

      it "redirects to the mp3" do
        Mp3.stub(:find) { mock_mp3(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(mp3_url(mock_mp3))
      end
    end

    describe "with invalid params" do
      it "assigns the mp3 as @mp3" do
        Mp3.stub(:find) { mock_mp3(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:mp3).should be(mock_mp3)
      end

      it "re-renders the 'edit' template" do
        Mp3.stub(:find) { mock_mp3(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested mp3" do
      Mp3.stub(:find).with("37") { mock_mp3 }
      mock_mp3.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the mp3s list" do
      Mp3.stub(:find) { mock_mp3 }
      delete :destroy, :id => "1"
      response.should redirect_to(mp3s_url)
    end
  end

end