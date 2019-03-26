class Project < ApplicationRecord
  mount_uploader :picture, PictureUploader
end
