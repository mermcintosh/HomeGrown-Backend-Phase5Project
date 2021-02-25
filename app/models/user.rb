class User < ApplicationRecord
    has_secure_password

    has_many :collections
    has_many :plants, through: :collections

    validates :username, uniqueness: { case_sensitive: false }
end
