class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_many :votes, dependent: :destroy
  validates :body, length: { maximum: 1000, too_long: 'Article is too long.' }

  validates :title, length: { maximum: 50, too_long: '50 characters in the title is the maximum allowed.' }
  validates :title, :body, :image, presence: true
end
