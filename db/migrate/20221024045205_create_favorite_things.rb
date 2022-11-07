class CreateFavoriteThings < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_things do |t|
      t.string     :title,         null: false
      t.string     :reason1,       null: false
      t.string     :reason2,       null: false
      t.string     :reason3,       null: false
      t.text       :episode
      t.references :user,          null: false, foreign_key: true
      t.timestamps
    end
  end
end
