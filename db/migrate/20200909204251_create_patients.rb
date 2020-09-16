class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :phone_number
      t.string :password_digest
      t.integer :appointment_id

      t.timestamps
    end
  end
end
