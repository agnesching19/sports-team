class MembersController < ApplicationController
  before_action :set_member, only: [:show, :update, :edit, :destroy]
  before_action :set_team, only: [:index, :new, :create, :destroy, :show, :edit, :update]

  def index
    @members = Member.all
  end

  def create
    @member = Member.new(member_params)
    @member.team = @team
    if @member.save
      redirect_to team_path(@team), notice: 'The member was successfully created.'
    else
      render :new
    end
  end

  def new
    @member = Member.new
  end

  def edit
  end

  def show
    @member.team = @team
  end

  def update
    if @member.update(member_params)
      redirect_to team_path(@team)
    else
      render :edit
    end
  end

  def destroy
    @member.team = @team
    @member.destroy
    redirect_to team_path(@team)
  end

  private

  def set_member
    @member = Member.find(params[:id])
  end

  def set_team
    @team = Team.find_by_id(params[:team_id])
  end

  def member_params
    params.require(:member).permit(:name, :position, :phone, :email, :team_id)
  end
end
