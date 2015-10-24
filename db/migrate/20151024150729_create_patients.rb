class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.text :name
      t.string :phone
      t.date :birthday
      t.string :cep
      t.string :adress

      t.timestamps
    end
  end
end
