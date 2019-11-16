ActiveAdmin.register Poster do
  permit_params :event, :title, :description, :upcoming, :picture
end
