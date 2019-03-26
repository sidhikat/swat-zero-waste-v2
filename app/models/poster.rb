class Poster < ApplicationRecord
  mount_uploader :picture, PictureUploader
end
