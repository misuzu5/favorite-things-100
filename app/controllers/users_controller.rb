class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @favorite_things = @user.favorite_things
    # @type_ids = @favorite_things.group(:type_id).count
    @titles = @favorite_things.pluck(:title)
  end
end
