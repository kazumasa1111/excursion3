class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def new
    @schedule = Schedule.new
  end

  def create
    schedule.create(schedule_params)
  end

  private
  def schedule_params
    params.require(:schedule).permit(:date, :address, :lodging).merge(user_id: current_user.id)
end
