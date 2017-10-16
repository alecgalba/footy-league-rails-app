class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]

  # GET /players
  # GET /players.json
  def index
    team = Team.find(params[:team_id])
    @players = team.players

    respond_to do |format|
      format.html #inde.html
      format.xml {render :xml => @players}
    end
  end

  # GET /players/1
  # GET /players/1.json
  def show
    team = Team.find(params[:team_id])
    @player = team.players.find(params[:id])

    respond_to do |format|
      format.html #inde.html
      format.xml { render :xml => @players }
    end
  end

  # GET /players/new
  def new
    team = Team.find(params[:team_id])
    @player = team.players.build

    respond_to do |format|
      format.html #new.html
      format.xml { render :xml => @players }
    end
  end

  # GET /players/1/edit
  def edit
    team = Team.find(params[:team_id])
    @player = team.players.find(params[:id])
  end

  # POST /players
  # POST /players.json
  def create
    team = Team.find(params[:team_id])
    @player = team.players.create(player_params)

    respond_to do |format|
      if @player.save
        format.html { redirect_to([@player.team, @player], notice: 'Player was successfully created.') }
        format.xml { render :xml => @player, :status => :created, :location => [@player.team, @player] }
      else
        format.html { render :new }
        format.xml { render :xml => @player.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /players/1
  # PATCH/PUT /players/1.json
  def update
    team = Team.find(params[:team_id])
    @player = team.players.find(params[:id])

    respond_to do |format|
      if @player.update(player_params)
        format.html { redirect_to([@player.team, @player], notice: 'Player was successfully updated.') }
        format.xml { head :ok }
        # format.json { render :show, status: :ok, location: @player }
      else
        format.html { render :edit }
        format.xml { render :xml => @player.errors, :status => :unprocessable_entity}
        # format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /players/1
  # DELETE /players/1.json
  def destroy
    team = Team.find(params[:team_id])
    @player = team.players.find(params[:id])
    @player.destroy

    respond_to do |format|
      format.html { redirect_to(team_players_path) }
      format.xml { head :ok }
      # format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
      params.require(:player).permit(:name, :age, :position, :team_id)
    end
end
