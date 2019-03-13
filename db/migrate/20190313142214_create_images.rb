class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.text :caption
      t.boolean :feature

      t.references :gallery

      t.timestamps
    end
  end
end
