class CreateBiographies < ActiveRecord::Migration[5.2]
  def change
    create_table :biographies do |t|
      t.string :name
      t.date :year
      t.text :bio

      t.timestamps
    end
  end
end
