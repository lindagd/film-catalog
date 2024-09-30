class RemoveFavoriteGenreFromDirector < ActiveRecord::Migration[7.2]
  def change
    remove_reference :directors, :favorite_genre, null: false, foreign_key: true
  end
end
