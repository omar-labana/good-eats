class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  # Validations
  validate :none_existing
  validates :username, presence: true
  validates_uniqueness_of :username

  # Associations
  has_many :articles
  has_many :votes
  
  
end
