class HomeController < ApplicationController
  def top
  end
  def ranking
    @users = User.all
  end
end
