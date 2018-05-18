class UsersController < ApplicationController
  def index
    if current_user
      redirect_to favorites_path
    end
  end

  def show
    @user = current_user
    @favorites = @user.favorites
  end
end
