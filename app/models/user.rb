class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  validates :profile, presence: true

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
  validates_format_of :password, allow_blank: true, with: PASSWORD_REGEX, message: 'は半角英数を両方含む必要があります'

  has_many :favorite_things, dependent: :destroy
  has_many :comments

  def self.guest
    find_or_create_by!(email: 'guest@guest.com') do |user|
      user.password = SecureRandom.alphanumeric(6)
      user.password_confirmation = user.password
      user.nickname = 'ゲスト'
      user.profile = 'ゲストユーザーです'
    end
  end

  mount_uploader :image, ImageUploader
end
