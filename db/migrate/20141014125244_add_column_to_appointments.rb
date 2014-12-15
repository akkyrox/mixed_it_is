class AddColumnToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :physician_id, :integer
    add_column :appointments, :patient_id, :integer
    add_column :appointments, :appointment_date, :date
  end
end
