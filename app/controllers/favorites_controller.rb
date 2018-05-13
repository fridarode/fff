class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all

  end

  def new
    @favorite = Favorite.new

  end

  def create
    @favorite = Favorite.new(fav_params)
    @favorite.user_id = Favorite.find(params[:id])
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

  end

  def update
    @update = Favorite.update(fav_params)
  end

  def destroy
  end

  private
  def fav_params
    params.require(:favorite).permit(:strain, :comment)
  end
end
