class GenresController < ApplicationController

    def show 
        @genre = Genre.find(params[:id])
        render :show
    end

    def new
        @genre = Genre.new
        render :new
    end

    def create
        strong_params = params.require(:genre).permit(:name)
        genre = Genre.create(strong_params)
        redirect_to genre_path(genre)
    end

    def edit
        @genre = Genre.find(params[:id])
        render :edit
    end

    def update
        strong_params = params.require(:genre).permit(:name)
        genre = Genre.find(params[:id])
        genre.update(strong_params)
        redirect_to genre_path(genre)
    end

end