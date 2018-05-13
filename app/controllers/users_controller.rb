class UsersController < ApplicationController
  def index
    if current_user
      redirect_to favorites_path
    end
  end
end
