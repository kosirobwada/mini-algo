class UsersController < ApplicationController
  def index
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password]
    )
    if @user.save
      session[:user_id]=@user.id
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/")
    else
      render("users/new")
    end
  end
  def login_form
  end
  def ranking
    @users = User.all
  end
  def login
    @user = User.find_by(email: params[:email],password: params[:password])
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to("/")
    else
      @error_message="メールアドレスまたはパスワードが間違っています"
      @email=params[:email]
      @password=params[:password]
      render("users/login_form")
    end
  end
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end
end
