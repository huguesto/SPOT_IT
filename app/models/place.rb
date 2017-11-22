class Place < ApplicationRecord
  belongs_to :category
  has_many :favorites
  has_many :spots

  validates :name, presence: true
  validates :address, presence: true, uniqueness: true
  geocoded_by :address
  after_validation :geocode
end
