class Admin::Games::QuestionsController < Admin::BaseController
  before_action :set_game, only: %i[ new create]

  def new
    @question = Question.new
  end

  def create
  end

  private
    def set_game
      @game = Game.find(params.expect(:game_id))
    end

    def question_params
      params.expect(question: [ :title, :answer ])
    end
end
