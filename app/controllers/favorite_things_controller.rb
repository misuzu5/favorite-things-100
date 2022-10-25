class FavoriteThingsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @favorite_things = FavoriteThing.includes(:user).order('created_at DESC')
  end

  def new
    @favorite_thing = FavoriteThing.new
  end

  def create
    @favorite_thing = FavoriteThing.new(favorite_thing_params)
    if @favorite_thing.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @favorite_thing = FavoriteThing.find(params[:id])
  end

  private

  def favorite_thing_params
    params.require(:favorite_thing).permit(:title, :reason, :emotion, :appeal_point, :episode,
                                           :image).merge(user_id: current_user.id)
  end
end
