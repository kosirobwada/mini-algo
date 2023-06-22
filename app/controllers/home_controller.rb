class HomeController < ApplicationController
  def top
  end
  def ranking
    @users = User.includes(:relationships).all
  end
end
