class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @favorite_things = @user.favorite_things
    @titles = @favorite_things.pluck(:title)
  end
end
