class Offence < ApplicationRecord
  validates :description, uniqueness: true
  has_many :crimes
end
