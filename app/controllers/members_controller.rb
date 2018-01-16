class MembersController < ApplicationController
  before_action :set_member, only: [:show, :edit, :update, :destroy]

  def index
    @members = Member.all
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      redirect_to @member, notice: 'The member was successfully created.'
    else
      render :new
    end
  end

  def new
    @member = Member.new
  end

  def edit
    @member = Member.find(params[:id])
  end

  def show
    @member = Member.find(params[:id])
  end

  def update
    if @member.update(member_params)
      redirect_to member_path(@member)
    else
      render :edit
    end
  end

  def destroy
    @member.destroy
    redirect_to members_path
  end

  private

  def set_member
    @member = Member.find(params[:id])
  end

  def member_params
    params.require(:member).permit(:name, :position, :phone, :email)
  end
end
