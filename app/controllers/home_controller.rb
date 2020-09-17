class HomeController < ApplicationController
  def index
    @users = User.all
    @schedules = Schedule.all
  end

  def new
  end

  def create
  end

  def show
  end



end
