class Place < ApplicationRecord
  belongs_to :category
  has_many :favorites
  has_many :spots

  validates :name, presence: true
  validates :address, presence: true, uniqueness: true
  geocoded_by :address
  after_validation :geocode

  def self.create_from_data(place_data, category_id)

    create(
      name: place_data["name"],
      address: place_data["vicinity"],
      latitude: place_data.dig("geometry", "location", "lat"),
      longitude: place_data.dig("geometry", "location", "lng"),
      category_id: category_id,
      place_id: place_data["place_id"]
    )
  end
end
