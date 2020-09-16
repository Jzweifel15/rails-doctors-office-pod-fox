class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :practice_type
      t.integer :appointment_id

      t.timestamps
    end
  end
end
