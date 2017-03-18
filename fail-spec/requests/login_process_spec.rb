require './rails_helper'


describe "the Login process", :type => :feature do

  before :each do
    user = create(:user)
  end

  it "signs me in" do
    visit user_session_path
    within("#session") do
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
    end
    click_button 'Log in'
    expect(page).to have_content 'Success'
  end
end
