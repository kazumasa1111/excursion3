class SchedulesController < ApplicationController
  before_action :move_to_index, except: [:index]

  def index
    @schedules = Schedule.all
  end

  def new
    @schedule = Schedule.new
  end

  def create
    Schedule.create(schedule_params)
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  private
  def schedule_params
    params.require(:schedule).permit(:date, :address, :lodging, :bookmark, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
