class AddAppointmentToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :appointment, index: true
  end
end
