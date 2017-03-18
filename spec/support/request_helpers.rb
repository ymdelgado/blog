#include 'devise'
#include Warden::Test::Helpers

module RequestSpecHelper


  def self.included(base)
    base.before(:each) { Warden.test_mode! }
    base.after(:each) { Warden.test_reset! }
  end

  def sign_in(user)
    @request.env["devise.mapping"] = Devise.mappings[:user]
    login_as user, scope: :user
  end

  def sign_out( resource )
    logout user
  end


  private

  def warden_scope(resource)
    resource.class.name.underscore.to_sym
  end


end
