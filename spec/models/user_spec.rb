require './rails_helper'
#require_relative '../support/request_helpers'

describe :user, type: :model do

  #include Warden::Test::Helpers
  #Warden.test_mode!

  describe "AuthenticationPages" do

    let(:user) { FactoryGirl::create(:user) }

    it "should have email" do
      expect(user.email).not_to be(nil)
    end
end

end
