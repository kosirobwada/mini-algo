class HomeController < ApplicationController
  def ranking
    @users = User.all
  end
end
