class FavoriteThing < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :type

  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy

  with_options presence: true do
    validates :title
    validates :reason1
    validates :reason2
    validates :reason3
    validates :image
  end

  validates :type_id, numericality: { other_than: 0 , message: " を選択して下さい"}

  def self.search(search)
    if search != ""
      FavoriteThing.where(['title LIKE(?) OR reason1 LIKE(?) OR reason2 LIKE(?) OR reason3 LIKE(?)', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      FavoriteThing.all
    end
  end
end
