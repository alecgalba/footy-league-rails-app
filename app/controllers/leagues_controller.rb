class LeaguesController < ApplicationController
  before_action :set_league, only: [:show, :edit, :update, :destroy]

  def index
    @leagues = League.order(created_at: :asc).page(params[:page])
  end

  def description
    league = League.find(params[:id])
    render plain: league.description
  end

  def show
    @league = League.find(params[:id])
  end

  def new
    @league = League.new
  end

  def edit
  end

  def create
    @league = League.new(league_params)

    respond_to do |format|
      if @league.save
        format.html { redirect_to @league, notice: 'League was successfully created.' }
        format.json { render :show, status: :created, location: @league }
      else
        format.html { render :new }
        format.json { render json: @league.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @league.update(league_params)
        format.html { redirect_to @league, notice: 'League was successfully updated.' }
        format.json { render :show, status: :ok, location: @league }
      else
        format.html { render :edit }
        format.json { render json: @league.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @league.destroy
    respond_to do |format|
      format.html { redirect_to leagues_url, notice: 'League was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_league
      @league = League.find(params[:id])
    end

    def league_params
      params.require(:league).permit(:name, :description, team_ids:[])
    end
end
