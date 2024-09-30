class Genre < ApplicationRecord
  has_many :directors, foreign_key: 'favorite_genre_id'
  has_many :films
end
