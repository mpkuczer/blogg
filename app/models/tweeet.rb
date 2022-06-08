class Tweeet < ApplicationRecord
  validates :tweeet, presence: true, length: { maximum: 180 }
end
