class Appointment < ApplicationRecord
  belongs_to :doctor
  # belongs_to :patient

  validates :location, presence: true
  validates :time, presence: true
  validate :in_past

  def in_past 
    if time.past?
      errors.add(:time, "Time must be in the future.")
    end
  end

end
