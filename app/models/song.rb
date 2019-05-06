class Song < ApplicationRecord
    has_many :playlists
    has_many :themes, through: :playlists
end
