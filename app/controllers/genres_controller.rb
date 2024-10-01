class GenresController < ApplicationController
  def show
    @genre = Genre.find params[:id]
    @films = Film.where('genre_id = ?', params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(name: params[:genre][:name])

    return redirect_to genre_path(@genre[:id]) if @genre.save

    flash.alert = 'Campos preenchidos incorretamente!'
    render:new
  end

  def edit
    @genre = Genre.find params[:id]
  end

  def update 
    genre = Genre.find params[:id]

    if genre.update(name: params[:genre][:name])
      return redirect_to genre_path(genre[:id])
    end
    flash.alert = 'Campos preenchidos incorretamente!'
    render :edit
  end
end