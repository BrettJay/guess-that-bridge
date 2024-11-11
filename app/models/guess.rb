class Guess < ApplicationRecord
  belongs_to :game_user
  belongs_to :question
end
