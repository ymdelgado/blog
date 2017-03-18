module UserAuthHelper

  def login(email)
    user = User.where(:email => email.to_s).first if user.is_a?(Symbol)
    request.session[:user] = user.id
  end

  def current_user
    User.find(request.session[:user])
  end

end
