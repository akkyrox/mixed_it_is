class AddColumnToPhysicians < ActiveRecord::Migration
  def change
    add_column :physicians, :speciality, :string
  end
end
