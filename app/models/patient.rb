class Patient < ActiveRecord::Base
  has_many :appointments
  has_one :anamnesi
  validates_formatting_of :phone, using: :us_phone
  validates_formatting_of :cep, using: :us_zip
end
