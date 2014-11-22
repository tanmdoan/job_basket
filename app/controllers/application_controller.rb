class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found
  protect_from_forgery with: :exception

  private

  def record_not_found
    render file: 'public/404.html', status: 404
  end
end
