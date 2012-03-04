class HomeController < ApplicationController
  def index
  end

  def main
    @challenges = Challenge.all

  end

end
