class SongSerializer < ActiveModel::Serializer

    attributes :id, :title, :artist, :mood, :genre, :url

end