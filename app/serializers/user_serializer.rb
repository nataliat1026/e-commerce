class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password_digest, :total_reviews
end
