class AppointmentsController < ApplicationController
  before_action :set_appointments, only: [:show, :edit, :update, :destroy]

  def index 
    @appointments = Appointment.all 
  end

  def show 
  end

  def edit
  end

  def update
  end

  private

  def set_appointments
    @appointment = Appointment.find(params[:id])
  end

end
