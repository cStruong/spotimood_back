class CreateThemes < ActiveRecord::Migration[5.2]
  def change
    create_table :themes do |t|
      t.string :title
      t.string :genre
      t.string :mood

      t.timestamps
    end
  end
end