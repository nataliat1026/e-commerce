class Category < ApplicationRecord
    has_many :category_tags
    has_many :products, through: :category_tags
end
