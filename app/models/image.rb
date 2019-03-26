class Image < ApplicationRecord
  belongs_to :gallery
  mount_uploader :picture, PictureUploader
end
