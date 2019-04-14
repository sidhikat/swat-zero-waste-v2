ActiveAdmin.register Image do
  belongs_to :gallery
  permit_params :caption, :feature, :picture

end
