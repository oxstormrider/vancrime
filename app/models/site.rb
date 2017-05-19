class Site < ApplicationRecord
  validates :neighbourhood, uniqueness: true
  has_many :crimes
end
