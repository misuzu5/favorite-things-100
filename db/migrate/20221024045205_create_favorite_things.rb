class CreateFavoriteThings < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_things do |t|
      t.string     :title,         null: false
      t.string     :reason,        null: false
      t.string     :emotion
      t.string     :appeal_point
      t.text       :episode,       null: false
      t.references :user,          null: false, foreign_key: true
      t.timestamps
    end
  end
end
