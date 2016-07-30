class User < ApplicationRecord
  # still have to define relationships with other models, pagination, as well as stuff for the sessions
  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :name, :email, presence: true, uniqueness: { case_sensitive: false }
  validates :name, length: { maximum: 50 }
  validates :email, length: { maximum: 250 }
  validates :email, format: VALID_EMAIL_REGEX
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
end
