class Appointment < ActiveRecord::Base
  belongs_to :patient
  has_one :user
end
