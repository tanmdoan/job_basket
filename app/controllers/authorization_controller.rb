class AuthorizationController < ApplicationController
  before_action :turing_member?

  private

  def turing_member?
    unless current_user
      redirect_to '/401'
      return false
    end
  end

end
