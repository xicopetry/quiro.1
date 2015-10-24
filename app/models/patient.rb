class Patient < ActiveRecord::Base
  has_many :appointments
  has_one :anamnesi
end
