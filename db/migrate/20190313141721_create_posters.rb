class CreatePosters < ActiveRecord::Migration[5.2]
  def change
    create_table :posters do |t|
      t.date :event
      t.string :title
      t.text :description
      t.boolean :feature

      t.timestamps
    end
  end
end
