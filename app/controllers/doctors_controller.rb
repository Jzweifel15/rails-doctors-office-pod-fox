class DoctorsController < ApplicationController
  before_action :set_doctors, only: [:show, :edit, :update, :destroy]

  def index
    @doctors = Doctor.all
  end

  def show 
  end

  def new 
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)

    if @doctor.valid?
      @doctor.save
      redirect_to doctor_path(@doctor)
    else
      render :new
    end
  end

  def edit 
  end

  def update 
    @doctor.update(doctor_params)

    if @doctor.valid?
      redirect_to doctor_path(@doctor)
    else
      render :edit
    end
  end

  def destroy
    @doctor.destroy 
    redirect_to doctors_path
  end

  private

  def set_doctors
    @doctor = Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit(:name, :practice_type)
  end

end