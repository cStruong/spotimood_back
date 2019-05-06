class CreatePlaylists < ActiveRecord::Migration[5.2]
  def change
    create_table :playlists do |t|
      t.integer :theme_id
      t.integer :song_id

      t.timestamps
    end
  end
end
