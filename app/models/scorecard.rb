class Scorecard < ApplicationRecord
  belongs_to :player
  belongs_to :course
end
