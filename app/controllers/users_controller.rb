class UsersController < ApplicationController

  def create
    @user = User.new(user_params)

    if @user.save
      log_in @user
      flash[:success] = "Welcome to Slack Overflow"
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def new
  end

  def show
  end

  private

    def user_params
      params.required(:user).permit(:username, :password)
    end

end
