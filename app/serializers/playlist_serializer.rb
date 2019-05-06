class PlaylistSerializer < ActiveModel::Serializer

    attributes :theme_id, :song_id

    belongs_to :theme
    belongs_to :song

end