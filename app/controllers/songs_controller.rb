class SongsController < ApplicationController

    def create
        @song = Song.create(song_params)
    end


private

    def song_params
        params.require(:song).permit(:title, :artist, :mood, :genre, :url)
end