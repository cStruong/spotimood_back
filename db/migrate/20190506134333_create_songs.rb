class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.string :mood
      t.string :genre
      t.string :url

      t.timestamps
    end
  end
end
