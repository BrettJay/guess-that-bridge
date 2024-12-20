class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy
  has_many :game_users
  has_many :games, through: :game_users

  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
