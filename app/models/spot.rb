class Spot < ApplicationRecord
  belongs_to :user
  belongs_to :place
  has_attachment :photo

  validates :comment, presence : true

end
