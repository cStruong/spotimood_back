class SongsController < ApplicationController

    def create
        @song = Song.create(song_params)
        render json: @song
    end

    def index
        @songs = Song.all
        render json: @songs
    end


private

    def song_params
        params.require(:song).permit(:title, :artist, :mood, :genre, :url)
    end
end