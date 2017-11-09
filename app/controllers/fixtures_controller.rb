class FixturesController < ApplicationController
  before_action :set_fixture, only: [:show, :edit, :update, :destroy]

  def index
    @fixtures = Fixture.all

    if !params[:date].blank?
      if params[:date] == "Upcoming Matches"
        @fixtures = Fixture.upcoming_matches
      else
        @fixtures = Fixture.old_games
      end
    else
      @fixtures = Fixture.all
    end
  end

  def show
  end

  def new
    @fixture = Fixture.new
  end

  def edit
  end

  def create
    @fixture = Fixture.new(fixture_params)

    respond_to do |format|
      if @fixture.save
        format.html { redirect_to @fixture, notice: 'Fixture was successfully created.' }
        format.json { render :show, status: :created, location: @fixture }
      else
        format.html { render :new }
        format.json { render json: @fixture.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @fixture.update(fixture_params)
        format.html { redirect_to @fixture, notice: 'Fixture was successfully updated.' }
        format.json { render :show, status: :ok, location: @fixture }
      else
        format.html { render :edit }
        format.json { render json: @fixture.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @fixture.destroy
    respond_to do |format|
      format.html { redirect_to fixtures_url, notice: 'Fixture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_fixture
      @fixture = Fixture.find(params[:id])
    end

    def fixture_params
      params.require(:fixture).permit(:opponent, :date, :time, :team_id, :league_id)
    end

end
