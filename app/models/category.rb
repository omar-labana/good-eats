class Category < ApplicationRecord
  has_many :articles

  validates :name, presence: true, length: { maximum: 20, too_long: '20 characters in post is the maximum allowed.' }

  scope :order_by_priority, -> { order(priority: :asc) }
end
