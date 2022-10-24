class FavoriteThing < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :title
    validates :reason
    validates :episode
    validates :image
  end

end
