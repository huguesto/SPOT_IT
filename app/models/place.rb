class Place < ApplicationRecord
  belongs_to :category
  has_many :favorites
  has_many :spots
end
