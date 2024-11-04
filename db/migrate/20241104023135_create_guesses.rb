class CreateGuesses < ActiveRecord::Migration[8.0]
  def change
    create_table :guesses do |t|
      t.string :body
      t.boolean :correct
      t.belongs_to :question, null: false, foreign_key: true
      t.belongs_to :game_user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
