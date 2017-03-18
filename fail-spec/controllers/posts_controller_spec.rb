require 'rails_helper'

describe PostsController, :type => :controller do
  describe "anonymous user" do

    before :each do
      @user = FactoryGirl::create(:user)
      #sign_in nil
    end

    it "redirect status, view, and user assign" do
      get :index
      expect( response ).to have_http_status( :ok )
      expect( response ).to render_template( 'index' )
      binding.pry
      expect( assigns(:user) ).to eq( [@user] )
    end

    it "should let a user see all the posts" do
      get :index
      expect( response ).to render_template( :index )
    end

  end

  #describe "#POST on create post" do

    #let(:post_params) { FactoryGirl::build(:post) }

    #before :each do
      #sign_in { FactoryGirl::build :user }
      #post :create, { post: post_params }
    #end

    #it {
      #expect(response).to have_http_status 200
    #}

    #it "add post" do
      #expect{
        #post :create, { post: post_params }
      #}.to change(Post, :count).by(1)
    #end

  #end
end
