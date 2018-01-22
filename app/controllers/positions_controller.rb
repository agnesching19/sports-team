class PositionsController < ApplicationController
  before_action :set_position, only: [:show, :update, :edit, :destroy]
  before_action :set_team, only: [:index, :new, :create, :destroy, :show, :edit, :update]

  def index
    @positions = Position.all
  end

  def create
    @position = Position.new(position_params)
    @position.team = @team
    if @position.save
      redirect_to team_path(@team), notice: 'Position was successfully created.'
    else
      render :new
    end
  end

  def new
    @position = Position.new
  end

  def edit
  end

  def show
    @position.team = @team
  end

  def update
    if @position.update(position_params)
      redirect_to team_path(@team)
    else
      render :edit
    end
  end

  def destroy
    @member.team = @team
    @position.destroy
    redirect_to team_path(@team)
  end

  private

  def position_params
    params.require(:position).permit(:name, :team_id)
  end

  def set_position
    @position = Position.find(params[:id])
  end

  def set_team
    @team = Team.find_by_id(params[:team_id])
  end
end
