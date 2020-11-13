class User < ApplicationRecord
  has_many :posts

  validates :username, presence: true, uniqueness: true, length: { minimum: 5, maximum: 30 }
  validates :email, presence: true, case_sensitive: false, length: { minimum: 5, maximum: 30 }
  validates :password, presence: true, length: { minimum: 5, maximum: 30 }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
