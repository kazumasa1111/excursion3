class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true
  validates :profile, length: { maximum: 200 }
  mount_uploader :image, ImageUploader
  has_many :schedules
  has_many :favorites, dependent: :destroy

  def already_favorited?(schedule)
    self.favorites.exists?(schedule_id: schedule.id)
  end

end
