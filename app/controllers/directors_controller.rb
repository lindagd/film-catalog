class DirectorsController < ApplicationController
  def show
    @director = Director.find params[:id]
    @films = Film.where('director_id = ?', params[:id])
  end

  def new
    @director = Director.new
  end

  def create
    @director = Director.new(director_params)

    return redirect_to director_path(@director[:id]) if @director.save

    flash.alert = 'Campos preenchidos incorretamente!'
    render:new
  end

  def edit
    @director = Director.find params[:id]
  end

  def update 
    director = Director.find params[:id]

    if director.update(director_params)
      return redirect_to director_path(director[:id])
    end
    flash.alert = 'Campos preenchidos incorretamente!'
    render :edit
  end

  private
  def director_params
    params.require(:director).permit(:name, :nationality, :birth_date, :favorite_genre_id)
  end
end