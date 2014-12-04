class AuthorizationController < ApplicationController
  before_action :turing_member?




  private

  def turing_member?
    redirect_to root_path unless current_user
    flash[:error] = "Sorry you are not a part of Turing"
  end

end
