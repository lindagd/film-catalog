class Director < ApplicationRecord
  belongs_to :favorite_genre, class_name: 'genre'
  has_many :films
end
