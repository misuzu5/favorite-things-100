class FavoriteThingsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
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

  private

  def favorite_thing_params
    params.require(:favorite_thing).permit(:title, :reason, :emotion, :appeal_point, :episode,
                                           :image).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
