ActiveAdmin.register Gallery do
  permit_params :title, :description
  index do
    column :Galleries do |gallery|
      link_to gallery.title, [:admin, gallery, :images]
    end
  end
end
