class SessionsController < ApplicationController

  def create
    auth = request.env["omniauth.auth"]
    nickname = auth[:info][:nickname]
    if UserValidator.new.member?(nickname)
      user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
      session[:user_id] = user.id
      redirect_to jobs_path, notice: "Signed in!"
    else
      redirect_to '/401'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end
end
