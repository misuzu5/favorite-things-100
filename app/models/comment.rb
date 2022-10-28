class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :favorite_thing

  validates :text, presence: true
end
