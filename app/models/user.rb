class User < ApplicationRecord
    has_many :reviews
    has_many :products, through: :reviews

    has_secure_password

    validates :email, presence: true, uniqueness: true
    validates :email, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/, presence: true, uniqueness: true
end
