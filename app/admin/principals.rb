ActiveAdmin.register Principal, as: "Principle" do
  permit_params :title, :description, :picture
end
