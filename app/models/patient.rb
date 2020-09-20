class Patient < ApplicationRecord
    has_many :doctors, through: :appointments
    has_secure_password
end
