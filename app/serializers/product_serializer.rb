class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description,:product_images, :average_rating
end
