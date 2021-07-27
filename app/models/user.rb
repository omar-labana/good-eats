class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  

  # Associations
  has_many :articles
  has_many :votes
  
  
end
