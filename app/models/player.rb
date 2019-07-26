class Player < ApplicationRecord
    has_secure_password

    has_many :scorecards
    has_many :courses, through: :scorecards
end
