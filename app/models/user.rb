class User < ApplicationRecord
    has_secure_password
    has_many :UserRecipe, dependent: :destroy
    has_many :recipes, :through => :UserRecipe
end
