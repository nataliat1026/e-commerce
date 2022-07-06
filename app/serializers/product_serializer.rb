class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :average_rating
end
