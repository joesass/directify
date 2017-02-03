class DirectorSerializer < ActiveModel::Serializer
  attributes :id, :name, :hometown, :year_born
  has_many :movies
  has_many :genres
end
