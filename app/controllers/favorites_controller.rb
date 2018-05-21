class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all

  end

  def new
    @favorite = Favorite.new

  end

  def create

    @favorite = Favorite.new(fav_params)
    @favorite.user_id = current_user.id

    if @favorite.save
      redirect_to favorite_path @favorite
    else
      flash['error'] = "Big Error"
      render :index
    end
  end

  def show
    @favorite = Favorite.find(params[:id])
  end

  def edit
    @favorite = Favorite.new
  end

  def update
    @favorite.user_id = current_user.id
    @favorite = Favorite.find(params[:id])
    @favorite.update(fav_params)
    redirect_to favorite_path(@favorite)
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to user_path(current_user)
  end

  private
  def fav_params
    params.require(:favorite).permit(:strain, :comment)
    # params.require(:favorite).permit(strain: :strain)
  end
end
