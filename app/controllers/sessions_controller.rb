class SessionsController < ApplicationController

  def create
    auth = request.env["omniauth.auth"]
    nickname = auth[:info][:nickname]
    if belongs_to_turing?(nickname)
      user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
      session[:user_id] = user.id
      redirect_to root_url, notice: "Signed in!"
    else
      redirect_to root_url, notice: "You're not that cool!"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end

  private

  def belongs_to_turing?(nickname)
    url         = "https://api.github.com/users/#{nickname}/orgs"
    response    = Faraday.get(url)
    orgs        = JSON.parse(response.body)
    turing_hash = orgs.find { |org| org['id'] == 7934292 }
  end

end
