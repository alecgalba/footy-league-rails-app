class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]

  def index
    team = Team.find(params[:team_id])
    @players = team.players

    respond_to do |format|
      format.html
      format.xml {render :xml => @players}
    end
  end

  def show
    team = Team.find(params[:team_id])
    @player = team.players.find(params[:id])

    respond_to do |format|
      format.html
      format.xml { render :xml => @players }
    end
  end

  def new
    team = Team.find(params[:team_id])
    @player = team.players.build

    respond_to do |format|
      format.html
      format.xml { render :xml => @players }
    end
  end

  def edit
    team = Team.find(params[:team_id])
    @player = team.players.find(params[:id])
  end

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

  def update
    team = Team.find(params[:team_id])
    @player = team.players.find(params[:id])

    respond_to do |format|
      if @player.update(player_params)
        format.html { redirect_to([@player.team, @player], notice: 'Player was successfully updated.') }
        format.xml { head :ok }
      else
        format.html { render :edit }
        format.xml { render :xml => @player.errors, :status => :unprocessable_entity}
      end
    end
  end

  def destroy
    team = Team.find(params[:team_id])
    @player = team.players.find(params[:id])
    @player.destroy

    respond_to do |format|
      format.html { redirect_to(team_players_path) }
      format.xml { head :ok }
    end
  end

  private
    def set_player
      @player = Player.find(params[:team_id])
    end

    def player_params
      params.require(:player).permit(:name, :age, :position, :team_id)
    end
end
