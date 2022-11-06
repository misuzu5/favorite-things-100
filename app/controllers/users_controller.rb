class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @favorite_things = @user.favorite_things
    @titles = @favorite_things.pluck(:title)

    ary = @favorite_things.pluck(:type_id)
    @type_num = ary.max_by { |v| ary.count(v) }
  end
end
