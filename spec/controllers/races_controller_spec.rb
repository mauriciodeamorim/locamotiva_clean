require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe RacesController do

  #Delete these examples and add some real ones
  it "should use RacesController" do
    controller.should be_an_instance_of(RacesController)
  end


  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'edit'" do
    it "should be successful" do
      get 'edit'
      response.should be_success
    end
  end

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "should be successful" do
      get 'show'
      response.should be_success
    end
  end

    it "should show race" do
      get :show
      response.should render_template(:show)
    end

#    it "should get edit" do
#      get :edit
#      response.should render_template(:edit)
#    end

#    it "should update user" do
#      put :update, :user => { :password => "12345", :password_confirmation => "12345"}
#      response.should redirect_to( account_path )
#    end
end

