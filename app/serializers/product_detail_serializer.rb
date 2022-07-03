class ProductDetailSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description

  has_many :reviews
  has_many :images
end
