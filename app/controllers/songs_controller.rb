class SongsController < ApplicationController

    def index 
        @songs = Song.all
    end

    def show 
        @song = Song.find(params[:id])
        render :show
    end

    def new
        @song = Song.new
        render :new
    end

    def create
        strong_params = params.require(:song).permit(:name, :artist_id, :genre_id)
        song = Song.create(strong_params)
        redirect_to song_path(song)
    end

    def edit
        @song = Song.find(params[:id])
        render :edit
    end

    def update
        strong_params = params.require(:song).permit(:name, :artist_id, :genre_id)
        song = Song.find(params[:id])
        song.update(strong_params)
        redirect_to song_path(song)
    end

end