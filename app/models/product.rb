class Product < ApplicationRecord
    has_many :category_tags
    has many :categories, through: :category_tags
    has_many :reviews
    has_many :users, through: :reviews
    has_many :images
end
