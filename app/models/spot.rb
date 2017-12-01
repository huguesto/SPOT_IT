class Spot < ApplicationRecord
  belongs_to :user
  belongs_to :place
  has_attachment :photo
  validates :comment, presence: true

  def self.nearby(places)
    where(place: places.map(&:id))
      .order(created_at: :desc)
      .limit(10)
  end

 def self.friends_spots(user)
   where(user: user.friends)
 end
end
