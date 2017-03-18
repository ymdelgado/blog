
#include Warden::Test::Helpers

module RequestSpecHelper

  def self.included(base)
    base.before(:each) { Warden.test_mode! }
    base.after(:each) { Warden.test_reset! }
  end

  def sign_in(user)
    @request.env["devise.mapping"] = Devise.mappings[:user]
    #user = FactoryGirl.create(:user)
    #user.confirm! # or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
    #sign_in user
    login_as user, scope: warden_scope(resource)
  end

  def sign_out( resource )
    logout warden_scope(resource)
  end


  private

  def warden_scope(resource)
    resource.class.name.underscore.to_sym
  end


end
