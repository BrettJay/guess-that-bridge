class Admin::Games::QuestionsController < ApplicationController
  before_action :set_question, only: %i[ show edit update destroy ]

  # GET /admin/games/questions or /admin/games/questions.json
  def index
    @questions = Question.all
  end

  # GET /admin/games/questions/1 or /admin/games/questions/1.json
  def show
  end

  # GET /admin/games/questions/new
  def new
    @question = Question.new
  end

  # GET /admin/games/questions/1/edit
  def edit
  end

  # POST /admin/games/questions or /admin/games/questions.json
  def create
    @question = Question.new(question_params)

    respond_to do |format|
      if @question.save
        format.html { redirect_to [:admin, :games, @question], notice: "Question was successfully created." }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/games/questions/1 or /admin/games/questions/1.json
  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to [:admin, :games, @question], notice: "Question was successfully updated." }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/games/questions/1 or /admin/games/questions/1.json
  def destroy
    @question.destroy!

    respond_to do |format|
      format.html { redirect_to admin_games_questions_path, status: :see_other, notice: "Question was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def question_params
      params.expect(question: [ :title ])
    end
end
