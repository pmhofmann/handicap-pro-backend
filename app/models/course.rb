class Course < ApplicationRecord
  has_many :holes
  has_many :scorecards
  has_many :players, through: :scorecards
end
