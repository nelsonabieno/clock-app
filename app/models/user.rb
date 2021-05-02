class User < ApplicationRecord
  has_secure_password
  has_many :clock_events

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :password, presence: true
  validates :password, confirmation: { case_sensitive: true }
  validates :email, presence: true, uniqueness: true, format: {with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address"}
end
