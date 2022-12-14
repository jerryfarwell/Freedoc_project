class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.string :date
      t.belongs_to :patient, index: true
      t.belongs_to :doctor, index: true

      t.timestamps
    end
  end
end
