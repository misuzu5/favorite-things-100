class AddTypeIdToFavoriteThings < ActiveRecord::Migration[6.0]
  def change
    add_column :favorite_things, :type_id, :integer
  end
end
