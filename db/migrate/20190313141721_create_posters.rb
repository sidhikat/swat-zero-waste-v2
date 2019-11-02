class CreatePosters < ActiveRecord::Migration[5.2]
  def change
    create_table :posters do |t|
      t.date :event
      t.string :title
      t.text :description
      t.boolean :upcoming

      t.timestamps
    end
  end
end
