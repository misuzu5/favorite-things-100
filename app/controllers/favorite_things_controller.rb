class FavoriteThingsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_favorite_thing, except: [:index, :new, :create]
  before_action :contributor_confirmation, only: [:edit, :update]


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
  end

  def edit
  end

  def update
    if @favorite_thing.update(favorite_thing_params)
      redirect_to favorite_thing_path(@favorite_thing)
    else
      render :edit
    end
  end

  private

  def favorite_thing_params
    params.require(:favorite_thing).permit(:title, :reason, :emotion, :appeal_point, :episode,
                                           :image).merge(user_id: current_user.id)
  end

  def set_favorite_thing
    @favorite_thing = FavoriteThing.find(params[:id])
  end

  def contributor_confirmation
    redirect_to root_path unless current_user == @favorite_thing.user
  end
end
