class FavoriteThing < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :type

  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy

  with_options presence: true do
    validates :title
    validates :reason
    validates :episode
    validates :image
  end

  validates :type_id, numericality: { other_than: 0 , message: " を選択して下さい"}

  def self.search(search)
    if search != ""
      FavoriteThing.where('title LIKE(?)', "%#{search}%")
    else
      FavoriteThing.all
    end
  end
end
