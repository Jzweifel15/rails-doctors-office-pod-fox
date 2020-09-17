class AppointmentsController < ApplicationController
  before_action :set_appointments, only: [:show, :edit, :update, :destroy]

  def index 
    @appointments = Appointment.all 
  end

  def show 
  end

  def create
    @appointment = Appointment.new(appointment_params)
	  @appointment.save
	  redirect_to appointment_path(@appointment)
  end

  def edit
  end

  def update
    @appointment.update(appointment_params)
    redirect_to appointment_path(@appointment)
  end

  def destroy
    @appointment.destroy
    redirect_to appointments_path
  end


  private

  def set_appointments
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:time, :doctor_id, :location)
  end
end
