class GameUser < ApplicationRecord
  belongs_to :user
  belongs_to :game
  has_many :guesses
end
