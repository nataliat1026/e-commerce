class Product < ApplicationRecord
    has_many :category_tags
    has_many :categories, through: :category_tags
    has_many :reviews
    has_many :users, through: :reviews
    has_many :images

    def average_rating
        (reviews.pluck(:rating).sum / reviews.count).to_f
    end

end
