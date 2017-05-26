class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  has_many :restaurants, dependent: :destroy
  has_many :rates, dependent: :destroy
end
