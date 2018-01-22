class PositionsController < ApplicationController

  def index
    @positions = Position.all
  end

  def create
    @position = Position.new(position_params)
    if @position.save
      redirect_to root_path, notice: 'Position was successfully created.'
    else
      render :new
    end
  end

  def new
    @position = Position.new
  end

  def show
    @member = Member.find(params[:member_id])
    @position = Position.find(params[:id])
    @position.member = @member
  end

  private

  def position_params
    params.require(:position).permit(:name, :team_id)
  end

end
