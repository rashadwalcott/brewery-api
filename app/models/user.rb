class User < ApplicationRecord
  has_secure_password
  validates_uniqueness_of :username
  has_many :favorites
  has_many :breweries, through: :favorites
end
