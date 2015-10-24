class CreateAnamnesis < ActiveRecord::Migration
  def change
    create_table :anamnesis do |t|
      t.string :queixa_principal
      t.string :como_aconteceu
      t.date :data_inicio
      t.references :patient, index: true

      t.timestamps
    end
  end
end
