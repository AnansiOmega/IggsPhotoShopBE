class User < ApplicationRecord
    has_secure_password
    has_many :user_photos
    has_many :photos, through: :user_photos
end
