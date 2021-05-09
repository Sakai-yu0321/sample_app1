class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(name: params[:name], password: params[:password])
    if @user.save
      flash[:notice] = "登録が完了しました"
      redirect_to("/posts/index")
    else
      render("users/new")
    end
  end

  def login_form
    @user = User.new
  end

  def login
    @user = User.find_by(name: params[:name], password: params[:password])
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to("/posts/index")
    else
      @error = "ユーザーが見つかりません"
      render("users/login_form")
    end
  end
end