class AttendancesController < ApplicationController

  def index
      @attendance = Attendance.all
    #   .find_by(user_id: session[:user_id])
  end

  def new
      @attendance = Attendance.new
  end

  def create
    # TODO: create attendance here
    attendance = Attendance.new
    attendance.date = Date.civil(params[:attendance]["date(1i)"].to_i,params[:attendance]["date(2i)"].to_i,params[:attendance]["date(3i)"].to_i)
    attendance.user_id = session[:user_id]
    attendance.save

    redirect_to attendances_url
  end

  def destroy
    attendance = Attendance.find_by(id: params[:id])
    attendance.delete
    redirect_to attendances_url
  end


end
