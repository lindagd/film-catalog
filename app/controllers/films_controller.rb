class FilmsController < ApplicationController
  def show
    @film = Film.find params[:id]
  end

  def new
    @film = Film.new
  end

  def create
    @film = Film.new(title: params[:film][:title],
                release_year: params[:film][:release_year],
                synopsis: params[:film][:synopsis],
                country_of_origin: params[:film][:country_of_origin],
                running_time: params[:film][:running_time],
                director_id: params[:film][:director_id],
                genre_id: params[:film][:genre_id]
              )

    if @film.save
      return redirect_to film_path(@film.id)
    end

    render :new
  end

  def edit
    @film = Film.find params[:id]
  end

  def update
    @film = Film.find params[:id]

    if @film.update(title: params[:film][:title],
              release_year: params[:film][:release_year],
              synopsis: params[:film][:synopsis],
              country_of_origin: params[:film][:country_of_origin],
              running_time: params[:film][:running_time],
              director_id: params[:film][:director_id],
              genre_id: params[:film][:genre_id]
            )
      return redirect_to film_path(@film.id)
    end

    render :edit
  end
end
