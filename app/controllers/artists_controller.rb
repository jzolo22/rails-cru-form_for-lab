class ArtistsController < ApplicationController
    
    def index
    end

    def show 
        @artist = Artist.find(params[:id])
        render :show
    end

    def new
        @artist = Artist.new
        render :new
    end

    def create
        strong_params = params.require(:artist).permit(:name, :bio)
        artist = Artist.create(strong_params)
        redirect_to artist_path(artist)
    end

    def edit
        @artist = Artist.find(params[:id])
        render :edit
    end

    def update
        artist = Artist.find(params[:id])
        strong_params = params.require(:artist).permit(:name, :bio)
        artist.update(strong_params)
        redirect_to artist_path(artist)
    end

end