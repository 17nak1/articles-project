class User < ApplicationRecord
  has_many :articles
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 2, maximum: 10 }
  VALID_EMAIL_REGEX = /A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    uniqueness: { case_sensitive: false },
                    length: { maximum: 100 },
                    format: { with: VALID_EMAIL_REGEX, message: "must be a valid email!" }
end
