class WelcomeController < ApplicationController

  def index
    render :layout => false
  end

  def random_video
    ["turing.mp4"].sample
  end
  helper_method :random_video
end
