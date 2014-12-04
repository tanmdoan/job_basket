class WelcomeController < ApplicationController

  def index

  end

  def random_video
    ["turing.mp4"].sample
  end
  helper_method :random_video
end
