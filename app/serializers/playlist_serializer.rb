class PlaylistSerializer < ActiveModel::Serializer

    attributes :id, :theme_id, :song_id

    belongs_to :theme
    belongs_to :song

end