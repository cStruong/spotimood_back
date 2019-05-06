class SongSerializer < ActiveModel::Serializer

    attributes :title, :artist, :mood, :genre, :url

end