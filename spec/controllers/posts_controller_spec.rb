require './rails_helper'

describe PostsController, :type => :controller do

  describe "anonymous user" do

    it "redirect status, view, and user assign" do
      sign_in nil
      get :index
      expect( response ).to have_http_status( :ok )
      expect( response ).to render_template( 'index' )
    end

    it "should let a user see all the posts" do
      sign_in nil
      get :create
      expect( response ).to have_http_status( 302 )
    end
  end

  describe "authenticated user" do
    let(:user) { FactoryGirl::create(:user) }
    let(:post) { FactoryGirl::create(:post) }
    it "should create a post" do
      sign_in user
      post create post
      expect( response ).to have_http_status( 200 )
    end
  end

end
