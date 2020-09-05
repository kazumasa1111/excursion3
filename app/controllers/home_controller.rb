class HomeController < ApplicationController
  def index
    @users = User.all
    @schedules = Schedule.all
  end
end
