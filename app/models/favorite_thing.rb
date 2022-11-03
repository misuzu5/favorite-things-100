class FavoriteThing < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy

  with_options presence: true do
    validates :title
    validates :reason
    validates :episode
    validates :image
  end

  def self.search(search)
    if search != ""
      FavoriteThing.where('title LIKE(?)', "%#{search}%")
    else
      FavoriteThing.all
    end
  end
end
