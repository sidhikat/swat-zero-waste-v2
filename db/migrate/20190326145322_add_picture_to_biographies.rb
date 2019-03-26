class AddPictureToBiographies < ActiveRecord::Migration[5.2]
  def change
    add_column :biographies, :picture, :string
  end
end
