class Course < ApplicationRecord
  has_many :holes
  has_many :scorecards
  has_many :players, through: :scorecards

  def holes= holes
    holes.each do |hole|
      self.holes.build(hole).save
    end
  end
end
