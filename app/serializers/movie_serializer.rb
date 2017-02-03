class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title
  belongs_to :director
  belongs_to :genre
end
