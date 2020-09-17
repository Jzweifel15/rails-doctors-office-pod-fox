class AppointmentsController < ApplicationController
  before_action :set_appointments, only: [:show, :edit, :update, :destroy]

  def index 
    @appointments = Appointment.all 
  end

  def show 
  end

  def new
    @appointment = Appointment.new
  end

  def edit
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to appointment_path(@appointment)
    else
      render :new
    end
  end

  def update
    if @appointment.update(appointment_params)
      redirect_to appointment_path(@appointment)
    else 
      render :edit
    end
  end

  def destroy
    @appointment.destroy
    redirect_to appointment_path(@appointment)
  end


  private

  def set_appointments
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:time, :doctor_id, :location)
  end
end
