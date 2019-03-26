class AddPictureToPosters < ActiveRecord::Migration[5.2]
  def change
    add_column :posters, :picture, :string
  end
end
