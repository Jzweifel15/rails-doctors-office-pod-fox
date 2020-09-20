class DoctorsController < ApplicationController
  before_action :set_doctors, only: [:show, :edit, :update, :destroy]

  def index
    @doctors = Doctor.all
  end

  def show 
  end

  private

  def set_doctors
    @doctor = Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit(:name, :practice_type)
  end

end