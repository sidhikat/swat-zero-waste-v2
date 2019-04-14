ActiveAdmin.register Poster do
  permit_params :event, :title, :description, :feature, :picture
end
