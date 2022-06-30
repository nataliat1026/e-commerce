class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :content
  has_one :product
  has_one :user
end
