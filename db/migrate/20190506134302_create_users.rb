class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :fav_genre
      t.string :mood
      t.string :first_name
      t.string :last_name
      t.string :profile_pic_url

      t.timestamps
    end
  end
end
