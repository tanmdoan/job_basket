class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found
  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :favorite_jobs

  after_filter :prepare_unobtrusive_flash



  private

  def favorite_jobs
    @favorite_jobs = current_user.favorite_jobs
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  private

  def record_not_found
    render file: 'public/404.html', status: 404
  end
end
