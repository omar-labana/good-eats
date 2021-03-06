class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  # Validations
  validate :none_existing
  validates :username, presence: true
  validates_uniqueness_of :username

  # Associations
  has_many :articles
  has_many :votes

  attr_writer :login

  def login
    @login || username || email
  end

  def none_existing
    errors.add(:username, :invalid) if User.where(email: username).exists?
  end

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if (login = conditions.delete(:login))
      where(conditions.to_h).where(['lower(username) = :value OR lower(email) = :value',
                                    { value: login.downcase }]).first
    elsif conditions.key?(:username) || conditions.key?(:email)
      where(conditions.to_h).first
    end
  end
end
