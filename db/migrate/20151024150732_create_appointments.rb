class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.text :comentario
      t.datetime :data_entrada
      t.datetime :data_saida
      t.references :patient, index: true

      t.timestamps
    end
  end
end
