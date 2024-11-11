class Admin::GamesController < Admin::BaseController
  before_action :set_game, only: %i[ show edit update destroy ]

  # GET /admin/games or /admin/games.json
  def index
    @games = Game.all
  end

  # GET /admin/games/1 or /admin/games/1.json
  def show
  end

  # GET /admin/games/new
  def new
    @game = Game.new
  end

  # GET /admin/games/1/edit
  def edit
  end

  # POST /admin/games or /admin/games.json
  def create
    @game = Game.new(game_params)

    respond_to do |format|
      if @game.save
        format.html { redirect_to [:admin, @game], notice: "Game was successfully created." }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/games/1 or /admin/games/1.json
  def update
    respond_to do |format|
      if @game.update(game_params)
        format.html { redirect_to [:admin, @game], notice: "Game was successfully updated." }
        format.json { render :show, status: :ok, location: @game }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/games/1 or /admin/games/1.json
  def destroy
    @game.destroy!

    respond_to do |format|
      format.html { redirect_to admin_games_path, status: :see_other, notice: "Game was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def game_params
      params.expect(game: [ :title ])
    end
end
