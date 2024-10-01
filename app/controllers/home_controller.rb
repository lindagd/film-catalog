class HomeController < ApplicationController
  def index
    @films = Film.all
    @genres = Genre.all
    @directors = Director.all
  end
end