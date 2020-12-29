class Photo < ApplicationRecord
    has_one_attached :image
    has_many :user_photos
    has_many :users, through: :user_photos
end
