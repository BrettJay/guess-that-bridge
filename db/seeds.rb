# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create a sample user
sample_user = User.create!(email_address: 'email@example.com', password: 'abc123', password_confirmation: 'abc123')

# Create a same game with a question
sample_game = Game.create!(title: '8 November 2024')
sample_question = Question.create!(title: 'What is this bridge?', answer: 'The empire state building', game: sample_game)

# Create a GameUser association
sample_game_user = GameUser.create!(game: sample_game, user: sample_user)
