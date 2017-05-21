class Menu < ApplicationRecord
  mount_uploader :picture, PictureMenuUploader
  belongs_to :restaurant
end
