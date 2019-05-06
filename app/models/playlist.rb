class Playlist < ApplicationRecord
    belongs_to :theme
    belongs_to :song
end
