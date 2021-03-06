class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :avatar, AvatarUploader

  validates :username, presence: true, uniqueness: true
  validates :avatar, presence: true
  validates :email, presence: true, uniqueness: true

  has_many :posts
  has_many :comments
end
