class Post < ApplicationRecord
  validates :post, presence: true, length: { maximum: 180 }
end
